﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ProcurementSystem.Controllers
{
    public class SalesJournalController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}