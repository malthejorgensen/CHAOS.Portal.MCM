﻿using System;
using System.Collections.Generic;
using System.Linq;
using Chaos.Mcm.Data;
using Chaos.Mcm.Data.Dto;
using Chaos.Mcm.Permission;
using Chaos.Portal.Core;
using Chaos.Portal.Core.Data.Model;
using Chaos.Portal.Core.Exceptions;
using FolderPermission = Chaos.Mcm.Data.Dto.FolderPermission;
using IFolder = Chaos.Mcm.Permission.IFolder;

namespace Chaos.Mcm.Extension.v6
{
    public class Folder : AMcmExtension
    {
        #region Initialization

        public Folder(IPortalApplication portalApplication, IMcmRepository mcmRepository, IPermissionManager permissionManager) : base(portalApplication, mcmRepository, permissionManager)
        {
        }

        #endregion
        #region Permission

        public FolderPermission GetPermission(uint folderID )
        {
            var folder           = PermissionManager.GetFolders(folderID);
            var userPermissions  = folder.UserPermissions.Select(item => new EntityPermission
                                                                            {
                                                                                Guid       = item.Key,
                                                                                Permission = item.Value
                                                                            });
            var groupPermissions = folder.GroupPermissions.Select(item => new EntityPermission
                                                                              {
                                                                                  Guid       = item.Key,
                                                                                  Permission = item.Value
                                                                              });

            return new FolderPermission( userPermissions, groupPermissions );
        }

        public ScalarResult SetPermission(Guid? userGuid, Guid? groupGuid, uint folderID, uint permission)
        {
            if (!userGuid.HasValue && !groupGuid.HasValue)
                throw new ArgumentException("Both userGUID and groupGUID can't be null at the same time");
            
            var result = 0;
            var folder = PermissionManager.GetFolders(folderID);

            // REVIEW: What permissions are required to remove a permission?
            if (!folder.DoesUserOrGroupHavePermission(Request.User.Guid, Request.Groups.Select(item => item.Guid), (Permission.FolderPermission)permission))
                throw new InsufficientPermissionsException( "User does not have permission to give the requested permissions" );

            if (userGuid.HasValue)
                result += (int) McmRepository.FolderUserJoinSet(userGuid.Value, folderID, permission);
            if (groupGuid.HasValue)
                result += (int) McmRepository.FolderGroupJoinSet(groupGuid.Value, folderID, permission);

            return new ScalarResult( result );
        }

        #endregion
        
		public IEnumerable<IFolderInfo> Get(uint? id, uint? folderTypeID, uint? parentID, uint? permission )
		{
            if (parentID.HasValue && id.HasValue)
                throw new ArgumentException("It does not make sense to specficy both ID and ParentID in the same query");

            var permissionEnum = (Permission.FolderPermission)(permission ?? (uint)Permission.FolderPermission.Read) | Permission.FolderPermission.Read;
            var userGuid       = Request.User.Guid;
            var groupGuids     = Request.Groups.Select( group => group.Guid ).ToList();

            IEnumerable<IFolder> folderResults;

			if( !parentID.HasValue && !id.HasValue )
                folderResults = PermissionManager.GetFolders(permissionEnum, userGuid, groupGuids);
            else
            if( parentID.HasValue )
                folderResults = PermissionManager.GetFolders(parentID.Value).GetSubFolders().Where(item => item.DoesUserOrGroupHavePermission(userGuid, groupGuids, permissionEnum));
            else
                folderResults = new[] { PermissionManager.GetFolders(id.Value) }.Where(item => item.DoesUserOrGroupHavePermission(userGuid, groupGuids, permissionEnum));
            
            return RetrieveFolderInfos(folderResults);
		}

        private IEnumerable<IFolderInfo> RetrieveFolderInfos(IEnumerable<IFolder> folders)
        {
            var folderIDs = folders.Select(folder => folder.ID).ToList();

            return McmRepository.FolderInfoGet(folderIDs);
        }

        public ScalarResult Delete(uint id)
        {
            var userGuid   = Request.User.Guid;
            var groupGuids = Request.Groups.Select(group => group.Guid).ToList();

            if(!PermissionManager.GetFolders(id).DoesUserOrGroupHavePermission(userGuid, groupGuids, Permission.FolderPermission.Delete))
                throw new InsufficientPermissionsException("User does not have permission to delete the folder");

            var result = McmRepository.FolderDelete(id);

            return new ScalarResult(result);
        }

		public ScalarResult Update( uint id, string newTitle, uint? newFolderTypeID, uint? newParentID )
		{
		    var user   = Request.User;
            var groups = Request.Groups;

		    if (!PermissionManager.GetFolders(id).DoesUserOrGroupHavePermission(user.Guid, groups.Select(item => item.Guid), Permission.FolderPermission.Update))
				throw new InsufficientPermissionsException( "User does not have permission to give the requested permissions" );

			var result = McmRepository.FolderUpdate(id, newTitle, newFolderTypeID, newParentID);

			return new ScalarResult( (int) result );
		}

        public IFolderInfo Create(Guid? subscriptionGuid, string title, uint? parentID, uint folderTypeID)
		{
            if( !subscriptionGuid.HasValue && !parentID.HasValue ) 
                throw new ArgumentException( "Both parentID and subscriptionGuid can't be null" );

		    var userGuid     = Request.User.Guid;
		    var groupGuids   = Request.Groups.Select(item => item.Guid);
            var subscription = Request.Subscriptions.FirstOrDefault( sub => sub.Guid.ToString() == subscriptionGuid.ToString() );

		    if( subscription != null && subscription.Permission != SubscriptionPermission.CreateFolder )
		        throw new InsufficientPermissionsException( "User does not have permission to create topfolders with the subscriptionGuid" );
		    
            if(parentID.HasValue &&!PermissionManager.GetFolders((uint) parentID).DoesUserOrGroupHavePermission(userGuid, groupGuids, Permission.FolderPermission.Write))
                throw new InsufficientPermissionsException("User does not have permission to create subfolders");

            var result = McmRepository.FolderCreate(userGuid, subscription == null ? (Guid?) null : subscription.Guid, title, parentID, folderTypeID);

            return McmRepository.FolderInfoGet(new[] { result }).First();
		}
    }
}
