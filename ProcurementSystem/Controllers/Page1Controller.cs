using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using ProcurementSystem.DAL;
using ProcurementSystem.Models;
using ProcurementSystem.Models.ViewModels;

namespace ProcurementSystem.Controllers
{
    public class Page1Controller : Controller
    {
        COADAL dal = new COADAL();
        public IActionResult Index()
        {
            IEnumerable<COA> list = dal.GetCOA();
            IEnumerable<FiscalYear> fiscalYears = dal.GetFiscalYear();
            ViewBag.FiscalYear = fiscalYears;
            var firstyear = fiscalYears.First();
            string year = firstyear.FISCAL_YR;
            ViewBag.year =Convert.ToInt32(year);
            //ViewBag.Account =new SelectList(list, "DESCRIPT", "ACNT_Code");
            ViewBag.Account = list;
            return View();
        }
        public IActionResult LoadData(string AccountNo)
        {
            var data = dal.loadData(AccountNo);
            return Json(data);
        }
        [HttpGet]
        public IActionResult LoadBalance(string year)
        {
            var data = dal.LoadBalances(year);
            return Json(data);
        }
        public IActionResult LoadTableData(string year)
        {
            var data = dal.loadTableData(year);
           
            ViewBag.table = data;
            return Json(data);
        }
        public IActionResult LoadSecondTableData(string year)
        {
            var data = dal.loadPreviouseData(year);
            return Json(data);
        }
    }
}