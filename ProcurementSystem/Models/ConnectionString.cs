using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProcurementSystem.Models
{
    public static class ConnectionString
    {
        private static string cName = "Data Source=.; Initial Catalog=AccountDB;Integrated security=true";
        public static string CName
        {
            get => cName;
        }
    }
}
