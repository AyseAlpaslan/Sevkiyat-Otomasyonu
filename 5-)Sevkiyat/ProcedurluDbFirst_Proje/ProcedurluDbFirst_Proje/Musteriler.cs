//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProcedurluDbFirst_Proje
{
    using System;
    using System.Collections.Generic;
    
    public partial class Musteriler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Musteriler()
        {
            this.Sevkiyatlars = new HashSet<Sevkiyatlar>();
        }
    
        public int MusteriNo { get; set; }
        public string SevkiyatId { get; set; }
        public string MusteriAdSoyad { get; set; }
        public string Adres { get; set; }
        public string Telefon { get; set; }
        public string Mail { get; set; }
        public string OdemeDurumu { get; set; }
        public Nullable<int> PersonelNo { get; set; }
    
        public virtual Personeller Personeller { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sevkiyatlar> Sevkiyatlars { get; set; }
    }
}
