using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace MyFirstApp.Models
{
    public class Friend
    {
        public int ID { get; set; }
        [Display(Name = "First name")]
        public string FirstName { get; set; }
        [Display(Name = "Family name")]
        public string LastName { get; set; }
      
    }

    public class DemoDBContext : DbContext
    {
        public DbSet<Friend> Friends { get; set; }
    }

    }