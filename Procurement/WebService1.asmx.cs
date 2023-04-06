using Newtonsoft.Json;
using Procurement.DAL;
using ProcurementSystem.Models.ViewModels;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using Newtonsoft.Json;
using Microsoft.Ajax.Utilities;

namespace Procurement
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {


        public COADAL cOADAL = new COADAL();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public dynamic LoadTableData(string year)
        {
            JavaScriptSerializer js = new JavaScriptSerializer();
            var data = cOADAL.loadTableData(year);
            this.Context.Response.ContentType = "application/json; charset=utf-8";
            


            return JsonConvert.SerializeObject(data);

            
        }
    }
}
