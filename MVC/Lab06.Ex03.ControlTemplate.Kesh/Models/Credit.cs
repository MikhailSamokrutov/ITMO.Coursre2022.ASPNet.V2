﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Lab05.Ex01.MvcCreditApp1.Models
{
    public class Credit
    { 
        // ID кредита
        public virtual int CreditId { get; set; }
        // Название
        [DisplayName("Заголовок")]
        [Required]
        public virtual string Head { get; set; }
        // Период, на который выдается кредит 
        [DisplayName("Период")]
        [Required]
        public virtual int Period { get; set; }
        // Максимальная сумма кредита    
        [DisplayName("Максимальная сумма")]
        [Required]
        public virtual int Sum { get; set; }
        // Процентная ставка 
        [DisplayName("Процент")]
        [Required]
        public virtual int Procent { get; set; }


     

    }
}