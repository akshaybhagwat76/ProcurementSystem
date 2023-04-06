using ProcurementSystem.Models;
using ProcurementSystem.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Procurement.DAL
{
    public class COADAL
    {
        string connectionString = ConnectionString.CName;
        public COA loadData(string code)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                COA cOA = new COA();
                string query = "select * from COA where ACNT_Code like '" + code + "'";
                SqlCommand com = new SqlCommand(query, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    cOA.DESCRIPT = dt.Rows[0]["DESCRIPT"].ToString();
                    cOA.CURR_Code = dt.Rows[0]["CURR_Code"].ToString();


                }
                return cOA;


            }
        }
        public List<Periodbalance> loadTableData(string year)
        {
            int pYear = Convert.ToInt32(year) - 1;

            List<Periodbalance> periodbalances = new List<Periodbalance>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from PERIOD_BALANCE where balanceYear like '" + year + "'";
                SqlCommand com = new SqlCommand(query, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Periodbalance periodbalance = new Periodbalance();
                        periodbalance.perioddesc = dt.Rows[i]["Period_Descript"].ToString();
                        periodbalance.balance = Convert.ToDouble(dt.Rows[i]["Balance"].ToString());
                        periodbalance.activity = Convert.ToDouble(dt.Rows[i]["Activity"].ToString());
                        periodbalance.perviousyeardesc = dt.Rows[i]["Previous_Year_Period_Descript"].ToString();
                        periodbalance.previouseyearbalance = Convert.ToDouble(dt.Rows[i]["Previous_Year_Balance"].ToString());
                        periodbalance.previouseyearactivity = Convert.ToDouble(dt.Rows[i]["Previous_Year_Activity"].ToString());
                        periodbalance.balancyear = dt.Rows[i]["balanceYear"].ToString();
                        periodbalances.Add(periodbalance);
                    }
                }
                return periodbalances;
            }
        }
        public List<Periodbalance> loadPreviouseData(string year)
        {
            int pYear = Convert.ToInt32(year) - 1;

            List<Periodbalance> periodbalances = new List<Periodbalance>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from PERIOD_BALANCE where balanceYear like '" + pYear.ToString() + "' ";
                SqlCommand com = new SqlCommand(query, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Periodbalance periodbalance = new Periodbalance();
                        periodbalance.perioddesc = dt.Rows[i]["Period_Descript"].ToString();
                        periodbalance.balance = Convert.ToDouble(dt.Rows[i]["Balance"].ToString());
                        periodbalance.activity = Convert.ToDouble(dt.Rows[i]["Activity"].ToString());
                        periodbalance.perviousyeardesc = dt.Rows[i]["Previous_Year_Period_Descript"].ToString();
                        periodbalance.previouseyearbalance = Convert.ToDouble(dt.Rows[i]["Previous_Year_Balance"].ToString());
                        periodbalance.previouseyearactivity = Convert.ToDouble(dt.Rows[i]["Previous_Year_Activity"].ToString());
                        periodbalance.balancyear = dt.Rows[i]["balanceYear"].ToString();
                        periodbalances.Add(periodbalance);
                    }
                }
                return periodbalances;
            }
        }


        public fiscalYearVM LoadBalances(string year)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                fiscalYearVM fiscalYearVM = new fiscalYearVM();
                string query = "select * from PERIOD_BALANCE where balanceYear like '" + year + "'";
                SqlCommand com = new SqlCommand(query, connection);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        fiscalYearVM.currentbalance += Convert.ToDouble(dt.Rows[i]["Balance"].ToString());
                        fiscalYearVM.previousBalance += Convert.ToDouble(dt.Rows[i]["Previous_Year_Balance"].ToString());

                    }
                }
                return fiscalYearVM;
            }
        }
        public IEnumerable<FiscalYear> GetFiscalYear()
        {
            List<FiscalYear> fiscalYears = new List<FiscalYear>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from FISCAL_YR";
                SqlCommand com = new SqlCommand(query, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        FiscalYear fiscals = new FiscalYear();
                        fiscals.FISCAL_YR = dt.Rows[i]["FISCAL_YR"].ToString();
                        fiscals.DISCRIPT = dt.Rows[i]["DESCRIPT"].ToString();
                        fiscalYears.Add(fiscals);
                    }
                }
                connection.Close();
            }
            return fiscalYears;
        }
        public IEnumerable<COA> GetCOA()
        {
            List<COA> cOAs = new List<COA>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from COA";
                SqlCommand cmd = new SqlCommand(query, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        COA cOA = new COA();
                        cOA.ACNT_Code = dt.Rows[i]["ACNT_CODE"].ToString();
                        cOA.DESCRIPT = dt.Rows[i]["DESCRIPT"].ToString();
                        cOA.CURR_Code = dt.Rows[i]["CURR_CODE"].ToString();

                        cOAs.Add(cOA);
                    }
                }
                connection.Close();
            }
            return cOAs;
        }
    }
}

