//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WMS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class JobCard
    {
        public short WorkCardID { get; set; }
        public string WorkCardName { get; set; }
        public Nullable<bool> NormalWork { get; set; }
        public Nullable<bool> OverTime { get; set; }
        public Nullable<short> WorkMin { get; set; }
        public Nullable<bool> WorkMinEnable { get; set; }
        public string DutyCodeID { get; set; }
    }
}