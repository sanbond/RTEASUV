<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doors.aspx.cs" Inherits="WebApplication4.Doors" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Doors_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Doors_ID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Doors_Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Doors_Tepl" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Doors_Opir" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsSearchPanel Visible="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [Doors] WHERE [Doors_ID] = @original_Doors_ID AND [Doors_Name] = @original_Doors_Name AND [Doors_Tepl] = @original_Doors_Tepl AND [Doors_Opir] = @original_Doors_Opir" InsertCommand="INSERT INTO [Doors] ([Doors_Name], [Doors_Tepl], [Doors_Opir]) VALUES (@Doors_Name, @Doors_Tepl, @Doors_Opir)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Doors]" UpdateCommand="UPDATE [Doors] SET [Doors_Name] = @Doors_Name, [Doors_Tepl] = @Doors_Tepl, [Doors_Opir] = @Doors_Opir WHERE [Doors_ID] = @original_Doors_ID AND [Doors_Name] = @original_Doors_Name AND [Doors_Tepl] = @original_Doors_Tepl AND [Doors_Opir] = @original_Doors_Opir">
            <DeleteParameters>
                <asp:Parameter Name="original_Doors_ID" Type="Int32" />
                <asp:Parameter Name="original_Doors_Name" Type="String" />
                <asp:Parameter Name="original_Doors_Tepl" Type="Double" />
                <asp:Parameter Name="original_Doors_Opir" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Doors_Name" Type="String" />
                <asp:Parameter Name="Doors_Tepl" Type="Double" />
                <asp:Parameter Name="Doors_Opir" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Doors_Name" Type="String" />
                <asp:Parameter Name="Doors_Tepl" Type="Double" />
                <asp:Parameter Name="Doors_Opir" Type="Double" />
                <asp:Parameter Name="original_Doors_ID" Type="Int32" />
                <asp:Parameter Name="original_Doors_Name" Type="String" />
                <asp:Parameter Name="original_Doors_Tepl" Type="Double" />
                <asp:Parameter Name="original_Doors_Opir" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
