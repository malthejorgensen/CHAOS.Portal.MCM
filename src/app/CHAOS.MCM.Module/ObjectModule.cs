﻿using System;
using System.Linq;
using System.Collections.Generic;
using CHAOS.Extensions;
using CHAOS.Index;
using CHAOS.Index.Standard;
using CHAOS.MCM.Data.EF;
using CHAOS.MCM.Module.Rights;
using CHAOS.Portal.Core;
using CHAOS.Portal.Core.Module;
using CHAOS.Portal.DTO;
using CHAOS.Portal.DTO.Standard;
using CHAOS.Portal.Exception;

namespace CHAOS.MCM.Module
{
    public class ObjectModule : MCMModule
    {
        [Datatype("Object", "Get")]
		public IPagedResult<IResult> Object_Get( ICallContext callContext, IQuery query, bool? includeMetadata, bool? includeFiles, bool? includeObjectRelations, bool? includeAccessPoints )
		{
			using( var db = DefaultMCMEntities )
			{
				IEnumerable<UUID> resultPage = null;

				if( query != null )
				{
					//TODO: Implement Folder Permissions Enum Flags (GET OBJECT FLAG)

                    var folders = PermissionManager.GetFolders( callContext.User.GUID.ToGuid(), callContext.Groups.Select( group => group.GUID.ToGuid() ) ).ToList();

					//TODO: Refactor building of queries
					var sb = new System.Text.StringBuilder(query.Query);
					sb.Append(" AND (");

					for (int i = 0; i < folders.Count(); i++)
					{
						sb.Append(string.Format("FolderTree:{0}", folders[i].ID));

						if (i + 1 < folders.Count())
							sb.Append(" OR ");
					}

					sb.Append(")");

					query.Query = sb.ToString();

					var indexResult = callContext.IndexManager.GetIndex<MCMModule>().Get(query);

					resultPage = indexResult.Results.Select(result => ((UUIDResult)result).Guid);

					// if solr doesnt return anything there is no need to continue, so just return an empty list
					if( !resultPage.Any() )
						return new PagedResult<IResult>(0, 0, new List<Data.DTO.Object>());
					
					return new PagedResult<IResult>( indexResult.FoundCount, query.PageIndex, db.Object_Get(resultPage, includeMetadata ?? false, includeFiles ?? false, includeObjectRelations ?? false, false, includeAccessPoints ?? false ).ToDTO().ToList() );
				}
			}

			throw new NotImplementedException("No implmentation for Object Get without solr parameters");
		}

		[Datatype("Object","Create")]
		public Data.DTO.Object Object_Create( ICallContext callContext, UUID GUID, uint objectTypeID, uint folderID )
		{
		    using( var db = DefaultMCMEntities )
		    {
				if( !PermissionManager.GetFolder( folderID ).DoesUserOrGroupHavePersmission( callContext.User.GUID.ToGuid(), callContext.Groups.Select( item => item.GUID.ToGuid() ), FolderPermissions.CreateUpdateObjects ) )
					throw new InsufficientPermissionsException( "User does not have permissions to create object" );

				var guid = GUID ?? new UUID();

		        int result = db.Object_Create( guid.ToByteArray(), (int) objectTypeID, (int) folderID ).First().Value;

				if( result == -200 )
					throw new UnhandledException("Unhandled exception, Object_Create was rolled back");

		        var newObject = db.Object_Get( guid, true, true, true, true, true ).ToDTO().ToList();

		        PutObjectInIndex( callContext.IndexManager.GetIndex<MCMModule>(), newObject );

		        return newObject.First();
		    }
		}

		//[Datatype("Object", "Delete")]
		//public ScalarResult Object_Delete( CallContext callContext, Guid GUID, int folderID )
		//{
		//    using( MCMEntities db = DefaultMCMEntities )
		//    {
		//        int result = db.Object_Delete( callContext.Groups.Select( group => group.GUID ).ToList(), callContext.User.GUID, GUID, folderID );

		//        if( result == -100 )
		//            throw new InsufficientPermissionsException( "User does not have permissions to delete object" );

		//        PutObjectInIndex( callContext.IndexManager.GetIndex<MCMModule>(), db.Object_Get( new []{ GUID }, true, false, true, true ) );

		//        return new ScalarResult( result );
		//    }
		//}

		//[Datatype("Object", "PutInFolder")]
		//public ScalarResult Object_PutInFolder(CallContext callContext, Guid GUID, int folderID, int objectFolderTypeID)
		//{
		//    using( MCMEntities db = DefaultMCMEntities )
		//    {
		//        int result = db.Object_PutInFolder( callContext.Groups.Select( group => group.GUID ).ToList(), callContext.User.GUID, GUID, folderID, objectFolderTypeID );

		//        if( result == -100 )
		//            throw new InsufficientPermissionsException( "User does not have permissions to put object into folder" );

		//        PutObjectInIndex( callContext.IndexManager.GetIndex<MCMModule>(), db.Object_Get( new []{ GUID }, true, false, true, true ) );

		//        return new ScalarResult( result );
		//    }
		//}
    }
}
