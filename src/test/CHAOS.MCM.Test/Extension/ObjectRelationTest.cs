﻿namespace Chaos.Mcm.Test.Extension
{
    using System;

    using Chaos.Portal.Data.Dto;

    using Moq;

    using NUnit.Framework;

    using ObjectRelation = Chaos.Mcm.Extension.ObjectRelation;

    [TestFixture]
    public class ObjectRelationTest : TestBase
    {
        #region Set

        [Test]
        public void Set_WithoutMetadata_ShouldCallMcmRepository()
        {
            var objectRelation = this.Make_ObjectRelation();
            var object1Guid    = new Guid("00000000-0000-0000-0000-000000000001");
            var object2Guid    = new Guid("00000000-0000-0000-0000-000000000002");
            var sequence       = 0;
            uint objectRelationTypeID = 1;
            
            McmRepository.Setup(m => m.ObjectRelationSet(object1Guid, object2Guid, objectRelationTypeID, sequence)).Returns(1);
            
            var result = objectRelation.Set(CallContext.Object, object1Guid, object2Guid, objectRelationTypeID, sequence, null, null, null, null);

            McmRepository.Verify(m => m.ObjectRelationSet(object1Guid, object2Guid, objectRelationTypeID, sequence));
            Assert.AreEqual(1, result.Value);
        }
        
        [Test]
        public void Set_WithMetadata_ShouldCallMcmRepository()
        {
            var objectRelation        = this.Make_ObjectRelation();
            var object1Guid           = new Guid("00000000-0000-0000-0000-000000000001");
            var object2Guid           = new Guid("00000000-0000-0000-0000-000000000002");
            var editingUserGuid       = new Guid("00000000-0000-0000-0000-000000000010");
            var sequence              = 0;
            uint objectRelationTypeID = 1;
            var metadata              = Make_MetadataDto();
            CallContext.SetupGet(p => p.User).Returns(new UserInfo { Guid = editingUserGuid });
            McmRepository.Setup(m => m.ObjectRelationSet(object1Guid, object2Guid,objectRelationTypeID, sequence, metadata.Guid, metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml, editingUserGuid)).Returns(1);

            var result = objectRelation.Set( CallContext.Object, object1Guid, object2Guid, objectRelationTypeID, sequence, metadata.Guid, metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml );

            McmRepository.Verify(m => m.ObjectRelationSet(object1Guid, object2Guid,objectRelationTypeID, sequence, metadata.Guid, metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml, editingUserGuid));
            Assert.AreEqual(1, result.Value);
        }
        
        [Test]
        public void Set_WithoutMetadataGuid_ShouldCallMcmRepository()
        {
            var objectRelation        = this.Make_ObjectRelation();
            var object1Guid           = new Guid("00000000-0000-0000-0000-000000000001");
            var object2Guid           = new Guid("00000000-0000-0000-0000-000000000002");
            var editingUserGuid       = new Guid("00000000-0000-0000-0000-000000000010");
            var sequence              = 0;
            uint objectRelationTypeID = 1;
            var metadata              = Make_MetadataDto();
            CallContext.SetupGet(p => p.User).Returns(new UserInfo { Guid = editingUserGuid });
            McmRepository.Setup(m => m.ObjectRelationSet(object1Guid, object2Guid,objectRelationTypeID, sequence, It.IsAny<Guid>(), metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml, editingUserGuid)).Returns(1);

            var result = objectRelation.Set( CallContext.Object, object1Guid, object2Guid, objectRelationTypeID, sequence, null, metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml );

            McmRepository.Verify(m => m.ObjectRelationSet(object1Guid, object2Guid,objectRelationTypeID, sequence, It.IsAny<Guid>(), metadata.MetadataSchemaGuid, metadata.LanguageCode, metadata.MetadataXml, editingUserGuid));
            Assert.AreEqual(1, result.Value);
        }

        #endregion
        #region Delete

        [Test]
        public void Delete_WithPermission_CallMcmRepositoryReturnOne()
        {
            var objectRelation        = this.Make_ObjectRelation();
            var object1Guid           = new Guid("00000000-0000-0000-0000-000000000001");
            var object2Guid           = new Guid("00000000-0000-0000-0000-000000000002");
            uint objectRelationTypeID = 1;
            
            McmRepository.Setup(m => m.ObjectRelationDelete(object1Guid, object2Guid, objectRelationTypeID)).Returns(1);
            
            var result = objectRelation.Delete(CallContext.Object, object1Guid, object2Guid, objectRelationTypeID);

            McmRepository.Verify(m => m.ObjectRelationDelete(object1Guid, object2Guid, objectRelationTypeID));
            Assert.AreEqual(1, result.Value);
        }

        #endregion
        #region Helpers

        private ObjectRelation Make_ObjectRelation()
        {
            return (ObjectRelation) new ObjectRelation().WithConfiguration(this.PermissionManager.Object, this.McmRepository.Object);
        }

        #endregion
    }
}