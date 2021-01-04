using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class HourlyPricePerCar : CarKind
    {
        public double hourlyWorkPrice { get; set; }

        public HourlyPricePerCar(string carType, string carModel, double hourlyWorkPrice) : base(carType, carModel)
        {
            this.hourlyWorkPrice = hourlyWorkPrice;
        }
    }
}
