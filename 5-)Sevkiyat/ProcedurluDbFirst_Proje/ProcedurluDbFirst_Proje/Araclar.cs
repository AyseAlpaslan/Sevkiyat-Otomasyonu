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
    
    public partial class Araclar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Araclar()
        {
            this.Sevkiyatlars = new HashSet<Sevkiyatlar>();
        }
    
        public int AracNo { get; set; }
        public string AracTur { get; set; }
        public Nullable<int> AracKapasite { get; set; }
        public string AracSofor { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sevkiyatlar> Sevkiyatlars { get; set; }
    }
}