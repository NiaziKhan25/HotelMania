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
    
    public partial class tblFoodBooking
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblFoodBooking()
        {
            this.tblBookings = new HashSet<tblBooking>();
            this.tblFoodBookingDetails = new HashSet<tblFoodBookingDetail>();
        }
    
        public long ID { get; set; }
        public Nullable<decimal> OrderPrice { get; set; }
        public Nullable<System.DateTime> orderDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblBooking> tblBookings { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblFoodBookingDetail> tblFoodBookingDetails { get; set; }
    }
}