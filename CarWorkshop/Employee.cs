using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class Employee : Person
    {
        public string profession { get; set; }
        public double salary { get; set; }
        public Employee supervisor { get; set; }

        public Employee(string firstName, string lastName, string telephone, string profession,
            double salary, Employee supervisor) : base(firstName, lastName, telephone)
        {
            this.profession = profession;
            this.salary = salary;
            this.supervisor = supervisor;
        }
    }
}
