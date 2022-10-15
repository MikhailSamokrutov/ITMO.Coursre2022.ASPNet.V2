<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.Summary" MasterPageFile="~/Site.Master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
   <div>
        <h2>Приглашения</h2>
        <h3>Не выступающие с докладом: </h3>
        <table>
        <thead>
        <tr>
        <th>Имя</th>
        <th>Email</th>
        <th>Телефон</th>
        </tr>
        </thead>
        <tbody> 
            <%= GetNoShowHtml()%>
        </tbody>
        </table>
    </div>
</asp:Content>
