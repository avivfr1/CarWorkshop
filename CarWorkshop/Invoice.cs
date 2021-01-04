using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class Invoice
    {
        public WorkshopDetails workshopDetails { get; set; }
        public Employee employee { get; set; }
        public Customer customer { get; set; }
        public double cost { get; set; }

        public Invoice(WorkshopDetails workshopDetails, Employee employee, Customer customer, double cost)
        {
            this.workshopDetails = workshopDetails;
            this.employee = employee;
            this.customer = customer;
            this.cost = cost;
        }
    }
}
