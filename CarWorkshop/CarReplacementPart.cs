using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class CarReplacementPart : CarKind
    {
        public long partNumber { get; set; }
        public double price { get; set; }

        public CarReplacementPart(string carType, string carModel, long partNumber, double price) : base(carType, carModel)
        {
            this.partNumber = partNumber;
            this.price = price;
        }
    }
}
