﻿using System;

namespace Chaos.Mcm.Permission
{
    [Flags]
    public enum AccessPointPermission : uint
    {
        None   = 0,
        Read   = 1 << 0,
        Write  = 1 << 1,
        Max	   = uint.MaxValue
    }
}