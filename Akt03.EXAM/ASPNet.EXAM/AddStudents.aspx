<%@ Page Language="C#" AutoEventWireup="true" 
    UnobtrusiveValidationMode="None"
    CodeBehind="AddStudents.aspx.cs" 
    Inherits="ASPNet.EXAM.AddStudents"
    MasterPageFile="~/Site.Master" %>


<asp:Content ID="MainContent"
    ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div>
        <h1>Добавить нового студента</h1>       
         <div> 
            <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
            <label style="width: 150px"><br/>Имя студента:</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="name"
                ErrorMessage="Заполните поле имени"                
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
        </div> 
        <div> 
            <label style="width: 150px">Фамилия студента:</label>
            <asp:TextBox ID="surname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="surname" ErrorMessage="Заполните поле фамилии" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>   
        </div> 
        <div> 
            <label style="width: 150px">Группа студента:</label>
            <asp:TextBox ID="group" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="group" ErrorMessage="Заполните поле группы" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
        </div> 
        <div> 
            <label style="width: 150px">Оценка студента:</label>
            <asp:TextBox ID="averageMark" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="averageMark" 
                ErrorMessage="Заполните поле отметки студента" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
            <asp:RangeValidator id="Range1"
               ControlToValidate="averageMark"
               MinimumValue="1"
               MaximumValue="10"
               Type="Integer"
               EnableClientScript="false"
               Text="Оценка в балах от 1 до 10"
               runat="server"> Оценка в балах от 1 до 10 </asp:RangeValidator>
        </div>
           <div>
            <button type="submit" style="width: 297px">Внести данные о студенте</button>
        </div>
    </div>
</asp:Content> 
