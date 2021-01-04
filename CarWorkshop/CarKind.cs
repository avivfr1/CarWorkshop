using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class CarKind
    {
        public string carType { get; set; }
        public string carModel { get; set; }

        public CarKind(string carType, string carModel)
        {
            this.carType = carType;
            this.carModel = carModel;
        }
    }
}
