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
            <h5><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Source1.aspx">Contacts</asp:HyperLink></h5>
            <br />
        </li>
        <li class="two">
            <h5>step 2</h5><br />
        </li>
        <li class="three">
            <h5>step 3</h5><br />
        </li>
    </ol>
</asp:Content>
