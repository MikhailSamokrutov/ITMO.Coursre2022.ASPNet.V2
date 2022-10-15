<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="ShowStudentBAD.aspx.cs" 
    Inherits="ASPNet.EXAM.ShowStudentBAD" 
    MasterPageFile="~/Site.Master" %>

<asp:Content ID="MainContent" 
    ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
   <div>
        <h2>Cписок худщих студентов</h2>
         <div>Список со студентами с оценками ниже 3 баллов</div>
 
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Фамилия" ReadOnly="True" SortExpression="Surname" />
                <asp:BoundField DataField="Group" HeaderText="Группа" ReadOnly="True" SortExpression="Group" />            
                <asp:BoundField DataField="AverageMark" HeaderText="Оценка" ReadOnly="True" SortExpression="AverageMark" />
            </Columns>
        </asp:GridView>  
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ASPNet.EXAM.SampleContext" EntityTypeName=""
            Where="AverageMark<4" 
            Select="new (Name, Surname, Group, AverageMark)" TableName="Students"> </asp:LinqDataSource>

    </div>
</asp:Content>
