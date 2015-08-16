<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Aqua">
            <Items>
                <dx:LayoutItem FieldName="ProjectID">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxSpinEdit ID="ASPxFormLayout1_E20" runat="server" Number="0">
                            </dx:ASPxSpinEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="ProjectName">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="ASPxFormLayout1_E21" runat="server" Width="170px">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="ProjectDate">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxDateEdit ID="ASPxFormLayout1_E22" runat="server">
                            </dx:ASPxDateEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="ProjectYearOfBuilding">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxDateEdit ID="ASPxFormLayout1_E23" runat="server">
                            </dx:ASPxDateEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:ASPxFormLayout>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EnergyCalcConnectionString %>" DeleteCommand="DELETE FROM [Project] WHERE [ProjectID] = @original_ProjectID AND (([ProjectName] = @original_ProjectName) OR ([ProjectName] IS NULL AND @original_ProjectName IS NULL)) AND (([ProjectDate] = @original_ProjectDate) OR ([ProjectDate] IS NULL AND @original_ProjectDate IS NULL)) AND (([ProjectYearOfBuilding] = @original_ProjectYearOfBuilding) OR ([ProjectYearOfBuilding] IS NULL AND @original_ProjectYearOfBuilding IS NULL))" InsertCommand="INSERT INTO [Project] ([ProjectName], [ProjectDate], [ProjectYearOfBuilding]) VALUES (@ProjectName, @ProjectDate, @ProjectYearOfBuilding)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Project.ProjectID, Project.ProjectName, Project.ProjectDate, Project.ProjectYearOfBuilding, Project.ProjectContactID, Contacts.ContactName, Contacts.ContactAddress, Auditors.AuditorContactID, Contacts.ContactPosition, Contacts.ContactPhone FROM Project INNER JOIN Auditors ON Project.ProjectAuditorID = Auditors.AuditorID INNER JOIN Contacts ON Auditors.AuditorContactID = Contacts.ContactID" UpdateCommand="UPDATE [Project] SET [ProjectName] = @ProjectName, [ProjectDate] = @ProjectDate, [ProjectYearOfBuilding] = @ProjectYearOfBuilding WHERE [ProjectID] = @original_ProjectID AND (([ProjectName] = @original_ProjectName) OR ([ProjectName] IS NULL AND @original_ProjectName IS NULL)) AND (([ProjectDate] = @original_ProjectDate) OR ([ProjectDate] IS NULL AND @original_ProjectDate IS NULL)) AND (([ProjectYearOfBuilding] = @original_ProjectYearOfBuilding) OR ([ProjectYearOfBuilding] IS NULL AND @original_ProjectYearOfBuilding IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProjectID" Type="Int32" />
                <asp:Parameter Name="original_ProjectName" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ProjectDate" />
                <asp:Parameter DbType="Date" Name="original_ProjectYearOfBuilding" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProjectName" Type="String" />
                <asp:Parameter DbType="Date" Name="ProjectDate" />
                <asp:Parameter DbType="Date" Name="ProjectYearOfBuilding" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProjectName" Type="String" />
                <asp:Parameter DbType="Date" Name="ProjectDate" />
                <asp:Parameter DbType="Date" Name="ProjectYearOfBuilding" />
                <asp:Parameter Name="original_ProjectID" Type="Int32" />
                <asp:Parameter Name="original_ProjectName" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ProjectDate" />
                <asp:Parameter DbType="Date" Name="original_ProjectYearOfBuilding" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
