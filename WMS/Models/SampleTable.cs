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
    
    public partial class SampleTable
    {
        public long PollID { get; set; }
        public int EmpID { get; set; }
        public string EmpDate { get; set; }
        public Nullable<int> FpID { get; set; }
        public string CardNo { get; set; }
        public System.DateTime EntDate { get; set; }
        public System.DateTime EntTime { get; set; }
        public short RdrID { get; set; }
        public Nullable<byte> RdrDuty { get; set; }
        public Nullable<bool> Process { get; set; }
        public Nullable<bool> Split { get; set; }
        public Nullable<short> CompanyID { get; set; }
    }
}