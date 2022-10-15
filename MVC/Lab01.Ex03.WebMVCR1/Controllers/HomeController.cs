using Lab01.Ex02.WebMVCR1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab01.Ex02.WebMVCR1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public string Index(string hel) 
        { 
            string Greeting = ModelClass.ModelHello() + ", " + hel; 
            return Greeting;
        }

        // Проверка передчи
        // http://localhost:50907/Home/Index?hel=Иван
    }
}