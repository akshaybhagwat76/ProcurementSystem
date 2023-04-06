using Procurement.DAL;
using ProcurementSystem.Models;
using ProcurementSystem.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procurement
{

   
    public partial class Page1 : System.Web.UI.Page
    {
         
        public COADAL cOADAL= new COADAL();
        private string defaultyear = "2004";
        protected void Page_Load(object sender, EventArgs e)
        {

            loadgrid(defaultyear);
            IEnumerable<COA> list = cOADAL.GetCOA();
            IEnumerable<FiscalYear> fiscalYears = cOADAL.GetFiscalYear();
            DropDownList1.DataSource = fiscalYears.Select(x => x.DISCRIPT).ToList();
           
            DropDownList1.DataBind();
            account.DataSource = list.Select(x=>x.ACNT_Code);
            account.DataBind();
           
        }

        public void loadgrid(string year)
        {
            var d = cOADAL.loadTableData(year);
            gridService.DataSource = d;
            gridService.DataBind();

            GridView1.DataSource = d;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var year = DropDownList1.Text;
            loadgrid(year);
        }
    }
}