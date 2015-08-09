<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication4._Default" %>

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
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Source1.aspx">Довідник контактів</asp:HyperLink></h5>
            <br />
        </li>
        <li class="two">
            <h5><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BuildingType.aspx">Тип будівлі</asp:HyperLink></h5>
            <br />
        </li>
        <li class="three">
            <h5><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Wall.aspx">Тип стіни</asp:HyperLink></h5>
            <br />
        </li>
        <li class="four">
            <h5><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/WallHeat.aspx">Тип утеплювача стіни</asp:HyperLink></h5>
            <br />
        </li>
        <li class="five">
            <h5><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Windows.aspx">Тип вікна</asp:HyperLink></h5>
            <br />
        </li>
        <li class="six">
            <h5><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Doors.aspx">Тип дверей</asp:HyperLink></h5>
            <br />
        </li>
        <li class="seven">
            <h5><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Orientation.aspx">Оріентація будинку</asp:HyperLink></h5>
            <br />
        </li>


    </ol>
</asp:Content>
