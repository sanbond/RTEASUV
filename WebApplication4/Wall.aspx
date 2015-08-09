<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wall.aspx.cs" Inherits="WebApplication4.Wall" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Wall_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Wall_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Wall_Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Wall_Tepl" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Wall_Opir" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [Wall] WHERE [Wall_ID] = @original_Wall_ID AND [Wall_Name] = @original_Wall_Name AND [Wall_Tepl] = @original_Wall_Tepl AND [Wall_Opir] = @original_Wall_Opir" InsertCommand="INSERT INTO [Wall] ([Wall_Name], [Wall_Tepl], [Wall_Opir]) VALUES (@Wall_Name, @Wall_Tepl, @Wall_Opir)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Wall]" UpdateCommand="UPDATE [Wall] SET [Wall_Name] = @Wall_Name, [Wall_Tepl] = @Wall_Tepl, [Wall_Opir] = @Wall_Opir WHERE [Wall_ID] = @original_Wall_ID AND [Wall_Name] = @original_Wall_Name AND [Wall_Tepl] = @original_Wall_Tepl AND [Wall_Opir] = @original_Wall_Opir">
            <DeleteParameters>
                <asp:Parameter Name="original_Wall_ID" Type="Int32" />
                <asp:Parameter Name="original_Wall_Name" Type="String" />
                <asp:Parameter Name="original_Wall_Tepl" Type="Double" />
                <asp:Parameter Name="original_Wall_Opir" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Wall_Name" Type="String" />
                <asp:Parameter Name="Wall_Tepl" Type="Double" />
                <asp:Parameter Name="Wall_Opir" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Wall_Name" Type="String" />
                <asp:Parameter Name="Wall_Tepl" Type="Double" />
                <asp:Parameter Name="Wall_Opir" Type="Double" />
                <asp:Parameter Name="original_Wall_ID" Type="Int32" />
                <asp:Parameter Name="original_Wall_Name" Type="String" />
                <asp:Parameter Name="original_Wall_Tepl" Type="Double" />
                <asp:Parameter Name="original_Wall_Opir" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
