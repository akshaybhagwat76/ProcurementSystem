using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProcurementSystem.Models
{
    public static class ConnectionString
    {
        private static string cName = "Data Source=sql8001.site4now.net;User id=db_a96688_piecodeerp_admin;password=HelloDB@123;initial catalog=db_a96688_piecodeerp;TrustServerCertificate=True;";
        public static string CName
        {
            get => cName;
        }
    }
}
