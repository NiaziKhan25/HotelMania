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
    
    public partial class tblFoodBookingDetail
    {
        public long ID { get; set; }
        public Nullable<long> FoodBookingID { get; set; }
        public Nullable<long> FoodID { get; set; }
        public Nullable<int> OrderQuantity { get; set; }
        public Nullable<decimal> OrderTotalPrice { get; set; }
    
        public virtual tblFood tblFood { get; set; }
        public virtual tblFoodBooking tblFoodBooking { get; set; }
    }
}
