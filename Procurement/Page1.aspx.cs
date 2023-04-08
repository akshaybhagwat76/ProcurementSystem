using Procurement.DAL;
using ProcurementSystem.Models;
using ProcurementSystem.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Media;
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
        private string accountcode = "10000";
        private string totalactivities = string.Empty;
        private string previousbalance = string.Empty;
        private string previoustotalactivities = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                loadgrid(defaultyear);
               
                IEnumerable<COA> list = cOADAL.GetCOA();
                descript.Value = cOADAL.loadData(accountcode).DESCRIPT;
                currency.Value = cOADAL.loadData(accountcode).CURR_Code;
                previousYearBal.Value = cOADAL.LoadBalances(defaultyear).previousBalance.ToString();
                currentbalance.Value = cOADAL.LoadBalances(defaultyear).currentbalance.ToString();
                IEnumerable<FiscalYear> fiscalYears = cOADAL.GetFiscalYear();
                DropDownList1.DataSource = fiscalYears.Select(x => x.DISCRIPT).ToList();

                DropDownList1.DataBind();
                account.DataSource = list.Select(x => x.ACNT_Code);
                account.DataBind();
                tbl1.InnerText = DropDownList1.Text;
                var year = Convert.ToInt32(DropDownList1.Text.ToString()) - 1;
                tbl2.InnerText= year.ToString();




            }
          
           
        }

        public void loadgrid(string year)
        {
            var d = cOADAL.loadTableData(year);
            totalactivities=d.Select(x=>x.activity).Sum().ToString();
            previousbalance=d.Select(x=>x.previouseyearbalance).Sum().ToString();
            previoustotalactivities=d.Select(x=>x.previouseyearactivity).Sum().ToString();   

            
            gridService.DataSource = d;
            gridService.DataBind();

            GridView1.DataSource = d;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var year = DropDownList1.Text;
            defaultyear= year;
            tbl1.InnerText = year;
            tbl2.InnerText=(Convert.ToInt32(year)-1).ToString();
            loadgrid(year);
            previousYearBal.Value = cOADAL.LoadBalances(year).previousBalance.ToString();
            currentbalance.Value = cOADAL.LoadBalances(year).currentbalance.ToString();



        }

        protected void account_SelectedIndexChanged(object sender, EventArgs e)
        {

            var accountcode = account.Text;
            descript.Value = cOADAL.loadData(accountcode).DESCRIPT;
            currency.Value = cOADAL.loadData(accountcode).CURR_Code;

        }

        protected void gridService_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            var d = cOADAL.loadTableData(defaultyear);
            totalactivities = d.Select(x => x.activity).Sum().ToString();
            Label myLabel = null;
            
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                myLabel = e.Row.FindControl("TotalActivity") as Label;
                myLabel.Text = totalactivities;
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            var d = cOADAL.loadTableData(defaultyear);
          
            previoustotalactivities = d.Select(x => x.previouseyearactivity).Sum().ToString();
            previousbalance = d.Select(x => x.previouseyearbalance).Sum().ToString();
            Label myLabel = null;
            Label myLabel2 = null;

            if (e.Row.RowType == DataControlRowType.Footer)
            {
                myLabel = e.Row.FindControl("previousyearbalance") as Label;
                myLabel.Text = previousbalance;
                myLabel2 = e.Row.FindControl("previousyearactivity") as Label;
                myLabel2.Text = previoustotalactivities;
            }
        }
    }


}