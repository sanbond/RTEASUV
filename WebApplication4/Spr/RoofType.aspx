<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoofType.aspx.cs" Inherits="WebApplication4.RoofType" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="RoofType_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="RoofType_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RoofType" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [RoofType] WHERE [RoofType_ID] = @original_RoofType_ID AND [RoofType] = @original_RoofType" InsertCommand="INSERT INTO [RoofType] ([RoofType]) VALUES (@RoofType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RoofType]" UpdateCommand="UPDATE [RoofType] SET [RoofType] = @RoofType WHERE [RoofType_ID] = @original_RoofType_ID AND [RoofType] = @original_RoofType">
            <DeleteParameters>
                <asp:Parameter Name="original_RoofType_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofType" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoofType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoofType" Type="String" />
                <asp:Parameter Name="original_RoofType_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofType" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
