using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    abstract class Person
    {
        private string firstName;
        private string lastName;
        private string telephone;

        protected Person(string firstName, string lastName, string telephone)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.telephone = telephone;
        }
    }
}
