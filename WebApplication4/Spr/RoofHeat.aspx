<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoofHeat.aspx.cs" Inherits="WebApplication4.RoofHeat" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="RoofHeat_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="RoofHeat_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RoofHeat_Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RoofHeat_Tepl" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RoofHeat_Opir" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [RoofHeat] WHERE [RoofHeat_ID] = @original_RoofHeat_ID AND [RoofHeat_Name] = @original_RoofHeat_Name AND [RoofHeat_Tepl] = @original_RoofHeat_Tepl AND (([RoofHeat_Opir] = @original_RoofHeat_Opir) OR ([RoofHeat_Opir] IS NULL AND @original_RoofHeat_Opir IS NULL))" InsertCommand="INSERT INTO [RoofHeat] ([RoofHeat_Name], [RoofHeat_Tepl], [RoofHeat_Opir]) VALUES (@RoofHeat_Name, @RoofHeat_Tepl, @RoofHeat_Opir)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RoofHeat]" UpdateCommand="UPDATE [RoofHeat] SET [RoofHeat_Name] = @RoofHeat_Name, [RoofHeat_Tepl] = @RoofHeat_Tepl, [RoofHeat_Opir] = @RoofHeat_Opir WHERE [RoofHeat_ID] = @original_RoofHeat_ID AND [RoofHeat_Name] = @original_RoofHeat_Name AND [RoofHeat_Tepl] = @original_RoofHeat_Tepl AND (([RoofHeat_Opir] = @original_RoofHeat_Opir) OR ([RoofHeat_Opir] IS NULL AND @original_RoofHeat_Opir IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_RoofHeat_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofHeat_Name" Type="String" />
                <asp:Parameter Name="original_RoofHeat_Tepl" Type="Double" />
                <asp:Parameter Name="original_RoofHeat_Opir" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoofHeat_Name" Type="String" />
                <asp:Parameter Name="RoofHeat_Tepl" Type="Double" />
                <asp:Parameter Name="RoofHeat_Opir" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoofHeat_Name" Type="String" />
                <asp:Parameter Name="RoofHeat_Tepl" Type="Double" />
                <asp:Parameter Name="RoofHeat_Opir" Type="Double" />
                <asp:Parameter Name="original_RoofHeat_ID" Type="Int32" />
                <asp:Parameter Name="original_RoofHeat_Name" Type="String" />
                <asp:Parameter Name="original_RoofHeat_Tepl" Type="Double" />
                <asp:Parameter Name="original_RoofHeat_Opir" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
