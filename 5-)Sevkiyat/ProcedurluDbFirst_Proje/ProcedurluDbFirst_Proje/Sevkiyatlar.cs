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
    
    public partial class Sevkiyatlar
    {
        public int SevkiyatNo { get; set; }
        public string SevkiyatAdi { get; set; }
        public string SevkiyatAlimNoktasi { get; set; }
        public string SevkiyatUlasimNoktasi { get; set; }
        public string Mesafe { get; set; }
        public Nullable<decimal> MesafeTutar { get; set; }
        public Nullable<int> AracNo { get; set; }
        public Nullable<int> MusteriNo { get; set; }
    
        public virtual Araclar Araclar { get; set; }
        public virtual Musteriler Musteriler { get; set; }
    }
}
