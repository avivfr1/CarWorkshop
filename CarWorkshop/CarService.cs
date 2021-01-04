using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class CarService
    {
        public Car car;
        public TimeSpan start { get; set; }
        public TimeSpan end { get; set; }
        public string status { get; set; }
        public List<Employee> assignedEmployees { get; set; }
        public List<CarReplacementPart> partsUsed { get; set; }

        public CarService(Car car, TimeSpan start, TimeSpan end, string status,
            List<Employee> assignedEmployees, List<CarReplacementPart> partsUsed)
        {
            this.car = car;
            this.start = start;
            this.end = end;
            this.status = status;
            this.assignedEmployees = assignedEmployees;
            this.partsUsed = partsUsed;
        }
    }
}
