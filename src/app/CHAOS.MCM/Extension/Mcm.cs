﻿namespace Chaos.Mcm.Extension
{
    using Chaos.Mcm.Data;
    using Chaos.Mcm.Permission;
    using Chaos.Portal.Core;

    public class Mcm : AMcmExtension
    {
        #region Initialization

        public Mcm(IPortalApplication portalApplication, IMcmRepository mcmRepository, IPermissionManager permissionManager) : base(portalApplication, mcmRepository, permissionManager)
        {
        }

        public Mcm(IPortalApplication portalApplication): base(portalApplication)
        {
        }

        #endregion

        public Trace Index(string view)
        {
            var deleteStopwatch    = new System.Diagnostics.Stopwatch();
            var objectGetStopwatch = new System.Diagnostics.Stopwatch();
            var indexStopwatch     = new System.Diagnostics.Stopwatch();
            var totalCount         = 0;

            deleteStopwatch.Start();
            
            if(string.IsNullOrEmpty(view)) 
                ViewManager.Delete();
            else
                ViewManager.GetView(view).Delete();
            
            deleteStopwatch.Stop();

            const uint PageSize = 5000;
            
            for (uint i = 0; ; i++)
            {
                objectGetStopwatch.Start();
                var objects = McmRepository.ObjectGet(null, i, PageSize, true, true, true, true, true);
                objectGetStopwatch.Stop();

                indexStopwatch.Start();
                
                if (string.IsNullOrEmpty(view))
                    ViewManager.Index(objects);
                else
                    ViewManager.GetView(view).Index(objects);
                
                indexStopwatch.Stop();

                totalCount += objects.Count;

                if (objects.Count != PageSize) break;
            }

            var trace = new Trace();

            trace.Lines.Add( "Delete\t" + deleteStopwatch.Elapsed );
            trace.Lines.Add( "Object\t" + objectGetStopwatch.Elapsed );
            trace.Lines.Add( "Index\t" + indexStopwatch.Elapsed );
            trace.Lines.Add( "Objects.Count\t" + totalCount );
            trace.Lines.Add( "Get/s\t" + ( totalCount / objectGetStopwatch.Elapsed.TotalMilliseconds * 1000 ) );
            trace.Lines.Add( "Index/s\t" + ( totalCount / indexStopwatch.Elapsed.TotalMilliseconds * 1000 ) );
            trace.Lines.Add( "Total/s\t" + ( totalCount / ( indexStopwatch.Elapsed.TotalMilliseconds + objectGetStopwatch.Elapsed.TotalMilliseconds ) * 1000 ) );

            return trace;
            //return new ScalarResult(1);
        }
    }
}
