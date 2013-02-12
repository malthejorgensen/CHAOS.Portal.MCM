﻿namespace Chaos.Mcm.Data.Connection.Mapping
{
    using System.Collections.Generic;
    using System.Data;

    using Chaos.Mcm.Data.Dto;

    public class FileMapping : IReaderMapping<File>
    {
        public IEnumerable<File> Map(IDataReader reader)
        {
            while(reader.Read())
            {
                yield return new File
                    {
                        ID                        = reader.GetUint32("ID"),
                        ObjectGuid                = reader.GetGuid("ObjectGuid"),
                        ParentID                  = reader.GetUint32Nullable("ParentID"),
                        DestinationID             = reader.GetUint32("DestinationID"),
                        Filename                  = reader.GetString("FileName"),
                        OriginalFilename          = reader.GetString("OriginalFileName"),
                        FolderPath                = reader.GetString("FolderPath"),
                        FormatID                  = reader.GetUint32("FormatID")
                    };
            }
        }
    }
}
