﻿using Geckon.Portal.Data.Result.Standard;
using Geckon.Serialization;

namespace CHAOS.MCM.Data.DTO
{
	public  class Language : Result
	{
		#region Properties

		[Serialize("Name")]
		public string Name{ get; set; }

		[Serialize("LanguageCode")]
		public string LanguageCode{ get; set; }

		#endregion
	}
}