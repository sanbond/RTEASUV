<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Floor.aspx.cs" Inherits="WebApplication4.Floor" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Floor_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Floor_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Floor_Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Floor_Tepl" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Floor_Opir" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [Floor] WHERE [Floor_ID] = @original_Floor_ID AND [Floor_Name] = @original_Floor_Name AND [Floor_Tepl] = @original_Floor_Tepl AND [Floor_Opir] = @original_Floor_Opir" InsertCommand="INSERT INTO [Floor] ([Floor_Name], [Floor_Tepl], [Floor_Opir]) VALUES (@Floor_Name, @Floor_Tepl, @Floor_Opir)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Floor]" UpdateCommand="UPDATE [Floor] SET [Floor_Name] = @Floor_Name, [Floor_Tepl] = @Floor_Tepl, [Floor_Opir] = @Floor_Opir WHERE [Floor_ID] = @original_Floor_ID AND [Floor_Name] = @original_Floor_Name AND [Floor_Tepl] = @original_Floor_Tepl AND [Floor_Opir] = @original_Floor_Opir">
            <DeleteParameters>
                <asp:Parameter Name="original_Floor_ID" Type="Int32" />
                <asp:Parameter Name="original_Floor_Name" Type="String" />
                <asp:Parameter Name="original_Floor_Tepl" Type="Double" />
                <asp:Parameter Name="original_Floor_Opir" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Floor_Name" Type="String" />
                <asp:Parameter Name="Floor_Tepl" Type="Double" />
                <asp:Parameter Name="Floor_Opir" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Floor_Name" Type="String" />
                <asp:Parameter Name="Floor_Tepl" Type="Double" />
                <asp:Parameter Name="Floor_Opir" Type="Double" />
                <asp:Parameter Name="original_Floor_ID" Type="Int32" />
                <asp:Parameter Name="original_Floor_Name" Type="String" />
                <asp:Parameter Name="original_Floor_Tepl" Type="Double" />
                <asp:Parameter Name="original_Floor_Opir" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
