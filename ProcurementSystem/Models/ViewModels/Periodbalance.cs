using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProcurementSystem.Models.ViewModels
{
    public class Periodbalance
    {
        public string perioddesc { get; set; }
        public double balance { get; set; }
        public double activity { get; set; }
        public string perviousyeardesc { get; set; }
        public double previouseyearbalance { get; set; }
        public double previouseyearactivity { get; set; }
        public string balancyear { get; set; }

    }
}
