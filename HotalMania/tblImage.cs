//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotalMania
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblImage
    {
        public long ID { get; set; }
        public Nullable<long> HotelID { get; set; }
        public Nullable<long> FoodID { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
    
        public virtual tblFood tblFood { get; set; }
        public virtual tblHotel tblHotel { get; set; }
    }
}