﻿using System.Collections.Generic;
using System.Linq;
using Geckon.Portal.Core.Standard.Extension;
using Geckon.Portal.Data;
using Geckon.Portal.Extensions.Standard.Test;
using NUnit.Framework;
using Object = Geckon.MCM.Data.Linq.Object;

namespace Geckon.MCM.Module.Standard.Test
{
    [TestFixture]
    public class ObjectTest : BaseTest
    {
        [Test]
        public void Should_Get_Object()
        {
            IList<string> guids = new List<string>();
            guids.Add( Object.GUID.ToString() );

            IEnumerable<Object> objectz = MCMModule.Object_Get( AdminCallContext, null, true, false, null, TopFolder.ID, 0, 10 );

            Assert.Greater( objectz.Count(), 0 );
        }

        [Test]
        public void Should_Create_Object()
        {
            System.Guid guid = System.Guid.NewGuid();

            Object objectz = MCMModule.Object_Create( AdminCallContext, guid.ToString(), AssetObjectType.ID, TopFolder.ID );

            Assert.AreEqual( guid.ToString(), objectz.GUID.ToString() );
        }
        
        [Test]
        public void Should_Delete_Object()
        {
            ScalarResult result = MCMModule.Object_Delete( AdminCallContext, Object.GUID.ToString(), TopFolder.ID );

            Assert.AreEqual( 1, result.Value );
        }
    }
}
