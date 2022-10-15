using ASPNet.EXAM.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ASPNet.EXAM
{
    public class SampleContext : DbContext
    {
        public SampleContext() : base("SeminarBD") { }
        public DbSet<Student> Students { get; set; }    
    }
}