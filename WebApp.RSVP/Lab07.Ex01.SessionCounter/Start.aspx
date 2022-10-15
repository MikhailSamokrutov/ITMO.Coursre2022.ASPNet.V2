<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.Start" MasterPageFile="~/Site.Master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>          
        <div class="rek"> 
            <h1>
                Приглашение на семинар
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            </h1>
            <p>Вы приглашены на наш семинар</p> 
            <p>Подтвердите свое согласие, пройдя регистрацию</p> 
        </div> 
        <div class="info"> 
            Семинар состоится 1 января 2022 года в 7.30 
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer runat="server" Interval="1000"></asp:Timer>
                    <%  DateTime dataseminar = new DateTime(2022,1,1,7,30,0);
                        DateTime dnow = DateTime.Now; 
                        int rd = (dataseminar - dnow).Days; int rm = (dataseminar - dnow).Minutes; 
                        int rsec = (dataseminar - dnow).Seconds; 
                    %>
                    <h3>Время до начала семинара: <%=rd.ToString()%>> дней, <%=rm.ToString()%>> минут and <%=rsec.ToString()%>> секунд</h3>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>          
    </div> 
</asp:Content> 

