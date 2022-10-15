using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNet.EXAM.Models
{
    public class Student
    {
        public int StudentId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Group { get; set; }
        public int AverageMark { get; set; } //средний бал
        public Student() { }
        public Student(string name, string surname, string group, int averageMark)
        {
            Name = name;
            Surname = surname;
            Group = group;
            AverageMark = averageMark;
        }
    }
}