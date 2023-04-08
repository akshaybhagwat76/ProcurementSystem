using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProcurementSystem.Models.ViewModels
{
    public class IndexVM
    {
        public string AccountNo { get; set; }
        public string FiscalYear { get; set; }
        public string DESCRIPT { get; set; }
        public string Curr_Code { get; set; }
        public string year { get; set; }
        public string currentBalance { get; set; }
        public string previousBalance { get; set; }
        public List<Periodbalance> periodbalances { get; set; }
        public List<Periodbalance> perioddbalances1 { get; set; }
    }
}
