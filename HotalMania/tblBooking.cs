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
    
    public partial class tblBooking
    {
        public long ID { get; set; }
        public Nullable<long> UserID { get; set; }
        public Nullable<long> HotelBookingID { get; set; }
        public Nullable<long> FoodBookingID { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<System.DateTime> startTime { get; set; }
        public Nullable<System.DateTime> EndTime { get; set; }
        public string Status { get; set; }
    
        public virtual tblFoodBooking tblFoodBooking { get; set; }
        public virtual tblHotelBooking tblHotelBooking { get; set; }
        public virtual tblUser tblUser { get; set; }
    }
}
