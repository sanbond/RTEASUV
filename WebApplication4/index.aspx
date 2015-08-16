<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication4._Default" %>

<%@ Register assembly="DevExpress.Web.ASPxTreeList.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Logo</h2>
            </hgroup>
            <p>
                TextTextTextTextTextTextTextTextTextTextTextText
                TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText
                <a href="http://" title="Another site">another site</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div><h3><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Spr/Project.aspx">Опитувальний лист</asp:HyperLink></h3></div>
    <br />

<div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Перелік довідників необхідних для розрахунку :</a>
                </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">
                    <h3><span></span></h3>
                        <ol>
                            <li><h4><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Source1.aspx">Довідник контактів</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/BuildingType.aspx">Тип будівлі</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Wall.aspx">Тип стіни</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/WallHeat.aspx">Тип утеплювача стіни</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="~/Windows.aspx">Тип вікна</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="~/Doors.aspx">Тип дверей</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="~/Orientation.aspx">Оріентація будинку</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/Spr/RoofPlace.aspx">Розміщення даху</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Spr/RoofType.aspx">Тип даху</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/Spr/Roof.aspx">Конструктив даху</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="~/Spr/RoofHeat.aspx">Конструктив утеплювача даху</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="~/Spr/FloorType.aspx">Підлога, перекриття над підвалом</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="~/Spr/Floor.aspx">Конструктив підлоги</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="~/Spr/FloorHeat.aspx">Конструктив утеплювача підлоги</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink33" runat="server" NavigateUrl="~/Spr/HeatSystem.aspx">Системи опалення</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink34" runat="server" NavigateUrl="~/Spr/LightSystem.aspx">Системи освітлення</asp:HyperLink></h4></li>
                            <li><h4><asp:HyperLink ID="HyperLink35" runat="server" NavigateUrl="~/Spr/Climat.aspx">Кліматичні зони</asp:HyperLink></h4></li>
                        </ol>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">1. Основні дані</a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                    <p>HTML stands for HyperText Markup Language. HTML is the main markup language for describing the structure of Web pages. <a href="http://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.<dx:ASPxComboBox ID="ASPxComboBox1" runat="server" DataSourceID="SqlDataSource1" DropDownHeight="90px" EnableTheming="True" OnSelectedIndexChanged="ASPxComboBox1_SelectedIndexChanged" Theme="Aqua">
                        <Columns>
                            <dx:ListBoxColumn Caption="  " FieldName="ContactName" Name="ContactName" />
                        </Columns>
                        </dx:ASPxComboBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" SelectCommand="SELECT Contacts.ContactName FROM Auditors INNER JOIN Contacts ON Auditors.AuditorContactID = Contacts.ContactID"></asp:SqlDataSource>
                        </a></p>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">2. Кліматологія</a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    <p>Bootstrap is a powerful front-end framework for faster and easier web development. It is a collection of CSS and HTML conventions. <a href="http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">3. Характеристики огороджуючих конструкцій</a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="http://www.tutorialrepublic.com/css-tutorial/" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
</div>


</asp:Content>