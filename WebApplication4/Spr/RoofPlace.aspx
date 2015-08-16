<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoofPlace.aspx.cs" Inherits="WebApplication4.RoofPlace" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
    </div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="RoofPlace_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="RoofPlace_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RoofPlace" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [RoofPlace] WHERE [RoofPlace_ID] = @original_RoofPlace_ID AND [RoofPlace] = @original_RoofPlace" InsertCommand="INSERT INTO [RoofPlace] ([RoofPlace]) VALUES (@RoofPlace)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RoofPlace]" UpdateCommand="UPDATE [RoofPlace] SET [RoofPlace] = @RoofPlace WHERE [RoofPlace_ID] = @original_RoofPlace_ID AND [RoofPlace] = @original_RoofPlace">
            <DeleteParameters>
                <asp:Parameter Name="original_RoofPlace_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofPlace" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoofPlace" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoofPlace" Type="String" />
                <asp:Parameter Name="original_RoofPlace_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofPlace" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
