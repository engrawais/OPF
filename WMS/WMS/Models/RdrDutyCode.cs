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
    
    public partial class RdrDutyCode
    {
        public RdrDutyCode()
        {
            this.Readers = new HashSet<Reader>();
        }
    
        public byte RdrDutyID { get; set; }
        public string RdrDutyName { get; set; }
    
        public virtual ICollection<Reader> Readers { get; set; }
    }
}