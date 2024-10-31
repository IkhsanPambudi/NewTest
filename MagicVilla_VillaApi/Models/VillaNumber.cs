using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MagicVilla_VillaApi.Models
{
    public class VillaNumber
    {
        [Key] // sebagai perimary key pada table
        [DatabaseGenerated(DatabaseGeneratedOption.None)] // Menegapa none ?
        // karna ingin membuat key tanpa generate otomatis namun akan tetap berbeda satu sama lainnya
        public int VillaNo { get; set; }
        [ForeignKey("Villa")]
        public int VillaID { get; set; }
        public Villa Villas { get; set; }
        public string SpecialDetails { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime UpdateDate { get; set; }


    }
}
