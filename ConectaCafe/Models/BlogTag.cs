using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ConectaCafe.Models;

[Table("BlogTag")]
public class BlogTag
{
    [Key, Column(Order = 1)]
    public int BlogId { get; set; }
    [ForeignKey("BlogId")]
    public Blog Blog { get; set; }

    [Key, Column(Order = 2)]
    public int TagId { get; set; }
    [ForeignKey("TagId")]
    public Tag Tag { get; set; }
}