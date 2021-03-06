﻿namespace Chaos.Mcm.Extension.Domain
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Data;
    using Data.Configuration;

    public class UserManagementController : IUserManagementController
    {
        public IMcmRepository McmRepository { get; set; }
        public UserManagementConfiguration Configuration { get; set; }

        public UserManagementController(IMcmRepository mcmRepository, UserManagementConfiguration configuration)
        {
            McmRepository = mcmRepository;
            Configuration = configuration;
        }

        #region GetFolderFromPath

        public IList<Data.Dto.Object> GetUserObject(Guid userGuid, Guid requestingUsersGuid, bool createIfMissing = true, bool includeMetadata = false, bool includeFiles = false)
        {
            var @object = McmRepository.ObjectGet(userGuid, includeMetadata, includeFiles);

            if (@object != null)
                return new List<Data.Dto.Object> { @object };
            if (!createIfMissing)
                return new List<Data.Dto.Object>();

            var userFolder = GetUserFolder(userGuid, requestingUsersGuid).First();

            if (McmRepository.ObjectCreate(userGuid, Configuration.UserObjectTypeId, userFolder.ID) != 1)
                throw new System.Exception("Failed to create user object");

            return new List<Data.Dto.Object> { McmRepository.ObjectGet(userGuid, includeMetadata, includeFiles) };
        }

        public IList<Data.Dto.Standard.Folder> GetUserFolder(Guid userGuid, Guid requestingUsersGuid, bool createIfMissing = true)
        {
            var userFolder = GetFolderFromPath(false, Configuration.UsersFolderName, userGuid.ToString());

            if (userFolder != null)
                return new List<Data.Dto.Standard.Folder> { userFolder };

            if (!createIfMissing)
                return new List<Data.Dto.Standard.Folder>();

            var usersFolder = GetFolderFromPath(false, Configuration.UsersFolderName);

            var userFolderId = McmRepository.FolderCreate(requestingUsersGuid, null, userGuid.ToString(), usersFolder.ID, Configuration.UserFolderTypeId);

            return McmRepository.FolderGet(userFolderId);
        }

        private Data.Dto.Standard.Folder GetFolderFromPath(bool failWhenMissing, params string[] path)
        {
            var folders = McmRepository.FolderGet();

            if (folders == null)
                throw new Exception("No folders found");

            var folder = GetFolderFromPath(null, path.ToList(), folders);

            if (failWhenMissing && folder == null)
                throw new Exception("Could not find folder: " + path.Aggregate((a, e) => a + "/" + e));

            return folder;
        }

        private static Data.Dto.Standard.Folder GetFolderFromPath(uint? parentId, IList<string> path, IList<Data.Dto.Standard.Folder> folders)
        {
            foreach (var folder in folders)
            {
                if (folder.ParentID == parentId && folder.Name == path[0])
                {
                    if (path.Count == 1)
                        return folder;

                    path.RemoveAt(0);
                    folders.Remove(folder);

                    return GetFolderFromPath(folder.ID, path, folders);
                }
            }

            return null;
        }

        private Data.Dto.Standard.Folder GetFolderFromPath(bool failWhenMissing, string path)
        {
            return GetFolderFromPath(failWhenMissing, path.Split('/'));
        }

        #endregion
    }
}
