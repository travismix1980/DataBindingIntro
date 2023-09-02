<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grid.aspx.cs" Inherits="DataBindingIntro.Grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Grid View Example<br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="CreditLimit" HeaderText="CreditLimit" SortExpression="CreditLimit" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="CreditLimit" HeaderText="CreditLimit" SortExpression="CreditLimit" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([FirstName], [LastName], [CreditLimit]) VALUES (@FirstName, @LastName, @CreditLimit)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [FirstName], [LastName], [CreditLimit] FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [FirstName] = @FirstName, [LastName] = @LastName, [CreditLimit] = @CreditLimit WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="CreditLimit" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="CreditLimit" Type="Decimal" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
