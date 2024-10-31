using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MagicVilla_VillaApi.Models
{
    public class Villa
    {
        [Key] // sebagai perimary key pada table
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)] // Identity 
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Details { get; set; }
        public double Rate { get; set; }
        public int Sqft { get; set; }
        public int Occupancy { get; set; }
        public string ImageUrl { get; set; }
        public string Amenity { get; set; }
        public DateTime CreateDate { get; set; }

    }
}
