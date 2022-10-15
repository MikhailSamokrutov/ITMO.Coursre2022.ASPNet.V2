using ASPNet.EXAM.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet.EXAM
{
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                /*Проверка на валидацию*/
                Page.Validate();
                if (!Page.IsValid) 
                    return;

                int tempAverageMark = 0;
                if (!Int32.TryParse(averageMark.Text, out tempAverageMark))
                    return;

                Student student = new Student(name.Text, 
                    surname.Text, group.Text, tempAverageMark);

                ResponseRepository.GetRepository().AddResponse(student);
                try
                {
                    SampleContext context = new SampleContext();
                    context.Students.Add(student);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    Response.Write("Ошибка " + ex.Message);
                }
                Response.Redirect("DataSave.aspx");

            }
        }
    }
}