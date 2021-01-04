using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class Car : CarKind
    {
        public int licensePlate { get; set; }
        public Customer customer { get; set; }

        public Car(string carType, string carModel, int licensePlate, Customer customer) : base(carType, carModel)
        {
            this.licensePlate = licensePlate;
            this.customer = customer;
        }
    }
}
