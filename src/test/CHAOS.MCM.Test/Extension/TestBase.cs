namespace Chaos.Mcm.Test.Extension
{
    using System;
    using System.Collections.Generic;
    using System.Xml.Linq;

    using Chaos.Mcm.Data;
    using Chaos.Mcm.Data.Dto;
    using Chaos.Mcm.Data.Dto.Standard;
    using Chaos.Mcm.Permission;
    using Chaos.Portal;
    using Chaos.Portal.Cache;
    using Chaos.Portal.Data.Dto;
    using Chaos.Portal.Indexing.View;

    using Moq;

    using NUnit.Framework;

    using FolderPermission = Chaos.Mcm.Permission.FolderPermission;
    using IFolder = Chaos.Mcm.Permission.IFolder;
    using Object = Chaos.Mcm.Data.Dto.Object;

    public class TestBase
    {
        #region Fields

        protected Mock<IPermissionManager> PermissionManager { get; set; }

        protected Mock<IMcmRepository> McmRepository { get; set; }

        protected Mock<ICallContext> CallContext { get; set; }

        protected Mock<ICache> Cache { get; set; }

            #endregion
        #region Initialization

        [SetUp]
        public void SetUp()
        {
            PermissionManager = new Mock<IPermissionManager>();
            McmRepository     = new Mock<IMcmRepository>();
            CallContext       = new Mock<ICallContext>();
            Cache             = new Mock<ICache>();

            CallContext.SetupGet(m => m.ViewManager).Returns(new ViewManager(new Dictionary<string, IView>(), Cache.Object));
            McmRepository.Setup(m => m.WithConfiguration(It.IsAny<string>())).Returns(McmRepository.Object);
        }

        protected Metadata Make_MetadataDto()
        {
            return new Metadata
                {
                    Guid               = new Guid("00000000-0000-0000-0000-000000000010"),
                    MetadataSchemaGuid = new Guid("00000000-0000-0000-0000-000000000100"),
                    EditingUserGuid    = new Guid("00000000-0000-0000-0000-000000000000"),
                    RevisionID         = 0,
                    LanguageCode       = "en",
                    MetadataXml        = XDocument.Parse("<xml>test xml</xml>"),
                    DateCreated        = new DateTime(1990, 10, 01, 23, 59, 59) 
                };
        }

        protected Object Make_Object()
        {
            return new Object
            {
                Guid         = new Guid("00000000-0000-0000-0000-000000000001"),
                ObjectTypeID = 1u,
                ObjectFolders = new List<ObjectFolder>{Make_ObjectFolder()}
            };
        }

        protected ObjectFolder Make_ObjectFolder()
        {
            return new ObjectFolder
                {
                    ID           = 1,
                    ParentID     = null,
                    Name         = "some name",
                    FolderTypeID = 1,
                    DateCreated  = new DateTime(1990, 10, 01, 23, 59, 59) 
                };
        }

        protected FolderInfo Make_FolderInfo()
        {
            return new FolderInfo
            {
                ID = 1,
                ParentID = null,
                FolderTypeID = 1,
                Name = "test",
                SubscriptionGuid = new Guid("00000001-0000-0000-0000-000000000000")
            };
        }

        #endregion
        #region Helpers

        protected void SetupHasPermissionToObject(UserInfo userInfo, Group[] groups, Guid objectGuid, IList<Folder> folderDtos)
        {
            CallContext.SetupGet(p => p.User).Returns(userInfo);
            CallContext.SetupGet(p => p.Groups).Returns(groups);
            McmRepository.Setup(m => m.FolderGet(null, null, objectGuid)).Returns(folderDtos);
            PermissionManager.Setup(m => m.DoesUserOrGroupHavePermissionToFolders( userInfo.Guid, It.IsAny<IEnumerable<Guid>>(), FolderPermission.Read, It.IsAny<IEnumerable<IFolder>>())).Returns(true);
        }

        protected void SetupHasPermissionToObject(FolderPermission permission)
        {
            var userInfo   = new UserInfo { Guid = new Guid("c0b231e9-7d98-4f52-885e-af4837faa352") };
            var groups     = new[] { new Group { Guid = new Guid("c0b231e9-7d98-4f52-885e-af4837faa352") } };
            var folderDtos = new List<Folder> { new Folder { ID = 1 } };

            this.CallContext.SetupGet(p => p.User).Returns(userInfo);
            this.CallContext.SetupGet(p => p.Groups).Returns(groups);
            this.McmRepository.Setup(m => m.FolderGet(null, null, It.IsAny<Guid>())).Returns(folderDtos);
            this.PermissionManager.Setup(m => m.DoesUserOrGroupHavePermissionToFolders(userInfo.Guid, It.IsAny<IEnumerable<Guid>>(), permission, It.IsAny<IEnumerable<IFolder>>())).Returns(true);
        }

        #endregion
    }
}