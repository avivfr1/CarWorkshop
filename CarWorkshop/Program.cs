using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWorkshop
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee manager = new Employee("Aviv", "Fridman", "0545457595", "Manager", 30000, null);
            WorkshopDetails wd = new WorkshopDetails("Aviv", "0545457595", "Herzliya", manager, new TimeSpan(8, 0, 0), new TimeSpan(15, 0, 0));

            using (var connection = new SqlConnection(@"Data Source=LAPTOP-AHGRSVQL\SQLEXPRESS;Initial Catalog=NetworkManagementSystem;Integrated Security=True;"))
            {
                using (var command = new SqlCommand("Select Event_Id,Switch_Ip,Port_Id,Device_Mac from NetworkEvents", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                var sql = new
                                {
                                    intVal = reader.IsDBNull(reader.GetOrdinal("int")) ? 0 : reader.GetInt32(reader.GetOrdinal("int")),
                                    stringVal = reader.IsDBNull(reader.GetOrdinal("string")) ? null : reader.GetString(reader.GetOrdinal("string")),
                                };
                            }
                        }
                    }
                    
                    connection.Close();
                }
            }
        }
    }
}
