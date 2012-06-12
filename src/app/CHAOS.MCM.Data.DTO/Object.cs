﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using CHAOS.Index;
using CHAOS.Portal.DTO.Standard;
using CHAOS.Serialization;

namespace CHAOS.MCM.Data.DTO
{
	public class Object : Result, IIndexable
	{
		#region Properties

		[Serialize("GUID" )]
		public UUID GUID { get; set; }

		[Serialize("ObjectTypeID" )]
		public uint ObjectTypeID { get; set; }

		[Serialize("DateCreated" )]
		public DateTime DateCreated { get; set; }

		/// <summary>
		/// This property is used to Serialize Metadata relations
		/// </summary>
		[Serialize("Metadatas" )]
		public IEnumerable<Metadata> Metadatas { get; set; }

		/// <summary>
		/// This property is used to Serialize File relations
		/// </summary>
		[Serialize("Files" )]
		public IEnumerable<FileInfo> Files { get; set; }

		[Serialize("ObjectRelations" )]
		public List<Object_Object_Join> ObjectRealtions { get; set; }

        public IList<Link> Folders { get; set; }
		public IList<uint> FolderTree { get; set; }
		public List<Object> RelatedObjects { get; set; }
        public IList<AccessPoint_Object_Join> AccessPoints { get; set; }

        public KeyValuePair<string, string> UniqueIdentifier
        {
            get { return new KeyValuePair<string, string>( "GUID", GUID.ToString() ); }
        }

		#endregion
		#region Constructor

        public Object( Guid guid, uint objectTypeID, DateTime dateCreated, IEnumerable<Metadata> metadatas, IEnumerable<FileInfo> fileInfos, IEnumerable<Object_Object_Join> objectObjectJoins, IEnumerable<Link> folders, IEnumerable<AccessPoint_Object_Join> accessPoints ) 
		{
			GUID         = new UUID( guid.ToByteArray() );
			ObjectTypeID = objectTypeID;
			DateCreated  = dateCreated;

			Metadatas       = metadatas.ToList();
			Files           = fileInfos.ToList();
			ObjectRealtions = objectObjectJoins.ToList();
			Folders         = folders.ToList();
            AccessPoints    = accessPoints.ToList();
		}

		public Object()
		{
			
		}

		#endregion
		#region Business Logic

		public IEnumerable<KeyValuePair<string, string>> GetIndexableFields( )
		{
			yield return new KeyValuePair<string, string>("GUID", GUID.ToString( ) );
			yield return new KeyValuePair<string, string>("ObjectTypeID", ObjectTypeID.ToString(CultureInfo.InvariantCulture) );
			yield return new KeyValuePair<string, string>("DateCreated", DateCreated.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'" ) );

			if( Folders != null )
				foreach( Link folder in Folders )
				{
					yield return new KeyValuePair<string, string>("FolderID", folder.FolderID.ToString(CultureInfo.InvariantCulture) );
				}

			if( FolderTree != null )
				foreach( uint folderID in FolderTree )
				{
					yield return new KeyValuePair<string, string>("FolderTree", folderID.ToString(CultureInfo.InvariantCulture) );
				}

			// TODO: Implement Metadata XML converter

			// Convert to all field
			if( Metadatas != null )
				foreach( var metadata in Metadatas )
				{
                    if( metadata.MetadataSchemaGUID.ToString() == "e4ee26e4-94dc-d946-8e23-459c7de51fc0" && metadata.MetadataXML.Descendants("TotalVotes").FirstOrDefault() != null  )
                        yield return new KeyValuePair<string, string>( "LB_TotalVotes", metadata.MetadataXML.Descendants( "TotalVotes" ).First().Value );
                    else
                    if( metadata.MetadataSchemaGUID.ToString() == "f39ac380-e33d-7c4e-9ed9-7745990ed6c7" && metadata.MetadataXML.Descendants( "TotalVotes" ).FirstOrDefault() != null )
                        yield return new KeyValuePair<string, string>( "HT_TotalVotes", metadata.MetadataXML.Descendants( "TotalVotes" ).First().Value );
                    else
                    if( metadata.MetadataSchemaGUID.ToString() == "21453740-eb1a-8842-81b4-ec62975e89e0" && metadata.MetadataXML.Descendants("Country").FirstOrDefault() != null )
                        yield return new KeyValuePair<string, string>( "HT_Country_" + metadata.LanguageCode, metadata.MetadataXML.Descendants( "Country" ).First().Value );
                    else
                    if( metadata.MetadataSchemaGUID.ToString() == "d9efe8c8-9502-11e1-ba5d-02cea2621172" && metadata.MetadataXML.Descendants("FacebookIds").FirstOrDefault() != null )
                        foreach( var id in metadata.MetadataXML.Descendants("FacebookIds").Elements( "Id" ) )
                        {
                            yield return new KeyValuePair<string, string>( "FacebookUserIDs", id.Value );
                        }
                    else                                           
                    if( metadata.MetadataSchemaGUID.ToString() == "00000000-0000-0000-0000-000063c30000" && metadata.MetadataXML.Descendants("Organization").FirstOrDefault() != null )
                        yield return new KeyValuePair<string, string>( "DKA-Organization", metadata.MetadataXML.Descendants("Organization").First().Value );

					yield return new KeyValuePair<string, string>( string.Format( "m{0}_{1}_all", metadata.MetadataSchemaGUID, metadata.LanguageCode ), GetXmlContent( metadata.MetadataXML.Root ) );
				}

			if( RelatedObjects != null )
				foreach( Object obj in RelatedObjects )
				{
					foreach( var relatedMetadata in obj.Metadatas )
					{
						yield return new KeyValuePair<string, string>( string.Format( "rm{0}_{1}_all", relatedMetadata.MetadataSchemaGUID, relatedMetadata.LanguageCode ), GetXmlContent( relatedMetadata.MetadataXML.Root ) );
					}
				}

            if( AccessPoints != null )
                foreach( var accessPoint in AccessPoints )
                {
                    if( accessPoint.StartDate.HasValue )
                        yield return new KeyValuePair<string, string>( "PubStart", accessPoint.StartDate.Value.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'" ) );
                    else 
                        yield return new KeyValuePair<string, string>( "PubStart", DateTime.MaxValue.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'" ) );
                    
                    if( accessPoint.EndDate.HasValue )
                        yield return new KeyValuePair<string, string>( "PubEnd", accessPoint.EndDate.Value.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'" ) );
                    else
                        yield return new KeyValuePair<string, string>( "PubEnd", DateTime.MaxValue.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'" ) );

                    break;
                }
		}

	    private static string GetXmlContent( XContainer xml )
		{
			var sb = new StringBuilder( );

			foreach( var node in xml.Descendants( ) )
			{
				if( !node.HasElements )
					sb.AppendLine(node.Value );
			}

			return sb.ToString( );
		}

		#endregion
	}
}
