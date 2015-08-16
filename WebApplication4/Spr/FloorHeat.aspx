<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FloorHeat.aspx.cs" Inherits="WebApplication4.FloorHeat" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="FloorHeat_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="FloorHeat_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FloorHeat_Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FloorHeat_Tepl" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FloorHeat_Opir" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [FloorHeat] WHERE [FloorHeat_ID] = @original_FloorHeat_ID AND [FloorHeat_Name] = @original_FloorHeat_Name AND [FloorHeat_Tepl] = @original_FloorHeat_Tepl AND [FloorHeat_Opir] = @original_FloorHeat_Opir" InsertCommand="INSERT INTO [FloorHeat] ([FloorHeat_Name], [FloorHeat_Tepl], [FloorHeat_Opir]) VALUES (@FloorHeat_Name, @FloorHeat_Tepl, @FloorHeat_Opir)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FloorHeat]" UpdateCommand="UPDATE [FloorHeat] SET [FloorHeat_Name] = @FloorHeat_Name, [FloorHeat_Tepl] = @FloorHeat_Tepl, [FloorHeat_Opir] = @FloorHeat_Opir WHERE [FloorHeat_ID] = @original_FloorHeat_ID AND [FloorHeat_Name] = @original_FloorHeat_Name AND [FloorHeat_Tepl] = @original_FloorHeat_Tepl AND [FloorHeat_Opir] = @original_FloorHeat_Opir" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_FloorHeat_ID" Type="Int32" />
                <asp:Parameter Name="original_FloorHeat_Name" Type="String" />
                <asp:Parameter Name="original_FloorHeat_Tepl" Type="Double" />
                <asp:Parameter Name="original_FloorHeat_Opir" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FloorHeat_Name" Type="String" />
                <asp:Parameter Name="FloorHeat_Tepl" Type="Double" />
                <asp:Parameter Name="FloorHeat_Opir" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FloorHeat_Name" Type="String" />
                <asp:Parameter Name="FloorHeat_Tepl" Type="Double" />
                <asp:Parameter Name="FloorHeat_Opir" Type="Double" />
                <asp:Parameter Name="original_FloorHeat_ID" Type="Int32" />
                <asp:Parameter Name="original_FloorHeat_Name" Type="String" />
                <asp:Parameter Name="original_FloorHeat_Tepl" Type="Double" />
                <asp:Parameter Name="original_FloorHeat_Opir" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
