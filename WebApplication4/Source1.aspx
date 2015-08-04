<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Source1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.XtraReports.v14.2.Web, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraReports.v14.2.Web, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web.ClientControls" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxTreeList.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ContactID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ContactID" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactAddress" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactPosition" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactPhone" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" 
            SelectCommand="SELECT ContactID, ContactName, ContactAddress, ContactPosition, ContactPhone FROM Contacts" 
            InsertCommand="INSERT INTO Contacts(ContactName, ContactAddress, ContactPosition, ContactPhone, ContactID) VALUES (@ContactName, @ContactAddress, @ContactPosition, @ContactPhone, @ContactID)" 
            DeleteCommand="DELETE FROM Contacts WHERE (ContactID = @original_ContactID)" 
            UpdateCommand="UPDATE Contacts SET ContactID = @ContactID, ContactName = @ContactName, ContactAddress = @ContactAddress, ContactPosition = @ContactPosition, ContactPhone = @ContactPhone WHERE (ContactID = @original_ContactID) AND (ContactName = @original_ContactName) AND (ContactAddress = @original_ContactAddress) AND (ContactPosition = @original_ContactPosition) AND (ContactPhone = @original_ContactPhone)"
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="ContactID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ContactName" />
                <asp:Parameter Name="ContactAddress" />
                <asp:Parameter Name="ContactPosition" />
                <asp:Parameter Name="ContactPhone" />
                <asp:Parameter Name="ContactID" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ContactID" />
                <asp:Parameter Name="ContactName" />
                <asp:Parameter Name="ContactAddress" />
                <asp:Parameter Name="ContactPosition" />
                <asp:Parameter Name="ContactPhone" />
                <asp:Parameter Name="original_ContactID" />
                <asp:Parameter Name="original_ContactName" />
                <asp:Parameter Name="original_ContactAddress" />
                <asp:Parameter Name="original_ContactPosition" />
                <asp:Parameter Name="original_ContactPhone" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
