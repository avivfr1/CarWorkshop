using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class Customer : Person
    {
        public List<Car> cars { get; set; }
        public Customer(string firstName, string lastName, string telephone, List<Car> cars)
            : base(firstName, lastName, telephone)
        {
            this.cars = cars;
        }
    }
}
