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
    
    public partial class tblHotelBooking
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblHotelBooking()
        {
            this.tblBookings = new HashSet<tblBooking>();
        }
    
        public long ID { get; set; }
        public Nullable<long> HotelID { get; set; }
        public Nullable<long> BookedCapacity { get; set; }
        public Nullable<decimal> BookedCapacityPrice { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblBooking> tblBookings { get; set; }
        public virtual tblHotel tblHotel { get; set; }
    }
}
