using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class WorkshopDetails
    {
        public string BnNumber { get; set; }
        public string nameOfWorkshop { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public Employee manager { get; set; }
        public TimeSpan start { get; set; }
        public TimeSpan end { get; set; }

        public WorkshopDetails(string BnNumber, string nameOfWorkshop, string phone, string address, Employee manager,
            TimeSpan start, TimeSpan end)
        {
            this.BnNumber = BnNumber;
            this.nameOfWorkshop = nameOfWorkshop;
            this.phone = phone;
            this.address = address;
            this.manager = manager;
            this.start = start;
            this.end = end;
        }
    }
}
