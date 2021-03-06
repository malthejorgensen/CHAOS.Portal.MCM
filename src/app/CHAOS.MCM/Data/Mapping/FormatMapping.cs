namespace Chaos.Mcm.Data.Mapping
{
    using System.Collections.Generic;
    using System.Data;

    using CHAOS.Data;

    using Chaos.Mcm.Data.Dto;

    public class FormatMapping : IReaderMapping<Format>
    {
        public IEnumerable<Format> Map(IDataReader reader)
        {
            while(reader.Read())
            {
                yield return new Format
                                 {
                                    ID               = reader.GetUint32("ID"),
                                    FormatCategoryID = reader.GetUint32("FormatCategoryID"),
                                    Name             = reader.GetString("Name"),
                                    FormatXml        = reader.GetXDocument("FormatXML"),
                                    MimeType         = reader.GetString("MimeType"),
                                    Extension        = reader.GetString("Extension")
                                 };
            }
        }
    }
}