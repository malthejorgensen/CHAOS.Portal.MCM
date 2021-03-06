namespace Chaos.Mcm.Data.Mapping
{
    using System.Collections.Generic;
    using System.Data;

    using CHAOS.Data;

    using Chaos.Mcm.Data.Dto;

    public class ObjectFolderMapping : IReaderMapping<ObjectFolder>
    {
        public IEnumerable<ObjectFolder> Map( IDataReader reader )
        {
            while(reader.Read())
            {
                yield return new ObjectFolder
                    {
                        ID                 = reader.GetUint32("ID"),
                        ParentID           = reader.GetUint32Nullable("ParentID"),
                        FolderTypeID       = reader.GetUint32("FolderTypeID"),
                        SubscriptionGuid   = reader.GetGuidNullable("SubscriptionGuid"),
                        Name               = reader.GetString("Name"),
                        DateCreated        = reader.GetDateTime("DateCreated"),
                        ObjectGuid         = reader.GetGuid( "ObjectGuid" ),
                        ObjectFolderTypeID = reader.GetUint32("ObjectFolderTypeID")
                    };
            }
        }
    }
}
