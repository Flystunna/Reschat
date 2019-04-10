<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Managment Tool</title>
     <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <style>
        .mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 80%;
}
.header
{
	background-color: #000;
	font-family: Arial;
	color: White;
	height: 25px;
	text-align: center;
	font-size: 16px;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: left;
}
.rows:hover
{
	background-color: #5badff;
	color: #fff;
}

.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
{
	background-color: #000;
	color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	background-color: #fff;
	color: #000;
	padding: 5px 5px 5px 5px;
}
.pager
{
	background-color: #5badff;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: left;
}

.mydatagrid td
{
	padding: 5px;
}
.mydatagrid th
{
	padding: 5px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
    <div class="container-fluid">
    
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [UserDatabase]" DeleteCommand="DELETE FROM [UserDatabase] WHERE [Username] = @Username" InsertCommand="INSERT INTO [UserDatabase] ([Username], [Email], [Password], [Country], [OnlineStatus]) VALUES (@Username, @Email, @Password, @Country, @OnlineStatus)" UpdateCommand="UPDATE [UserDatabase] SET [Email] = @Email, [Password] = @Password, [Country] = @Country, [OnlineStatus] = @OnlineStatus WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                <asp:Parameter Name="Country" Type="String"></asp:Parameter>
                <asp:Parameter Name="OnlineStatus" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                <asp:Parameter Name="Country" Type="String"></asp:Parameter>
                <asp:Parameter Name="OnlineStatus" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped grdViewTable" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            CellPadding="100" DataKeyNames="Username" CellSpacing="5" BackColor="White" BorderStyle="Solid" DataSourceID="SqlDataSourceRegistration" ForeColor="#333333" BorderColor="#0099CC" BorderWidth="5px" Font-Names="Arial">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>

                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="OnlineStatus" HeaderText="OnlineStatus" SortExpression="OnlineStatus" />
            </Columns>
            <FooterStyle BackColor="#0099CC" Font-Bold="True"  ForeColor="White" />
            <HeaderStyle BackColor="#0099CC" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        </asp:GridView>

        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:RegistrationConnectionString %>' SelectCommand="SELECT * FROM [MsgTable]" DeleteCommand="DELETE FROM [MsgTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [MsgTable] ([ChatMsg], [MsgSender], [MsgReceiver], [RecevierSeen]) VALUES (@ChatMsg, @MsgSender, @MsgReceiver, @RecevierSeen)" UpdateCommand="UPDATE [MsgTable] SET [ChatMsg] = @ChatMsg, [MsgSender] = @MsgSender, [MsgReceiver] = @MsgReceiver, [RecevierSeen] = @RecevierSeen WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ChatMsg" Type="String" />
                <asp:Parameter Name="MsgSender" Type="String" />
                <asp:Parameter Name="MsgReceiver" Type="String" />
                <asp:Parameter Name="RecevierSeen" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ChatMsg" Type="String" />
                <asp:Parameter Name="MsgSender" Type="String" />
                <asp:Parameter Name="MsgReceiver" Type="String" />
                <asp:Parameter Name="RecevierSeen" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
             DataSourceID="SqlDataSource1" CellPadding="100" CellSpacing="5" BackColor="White" BorderStyle="Solid" ForeColor="#333333" BorderColor="#0099CC" BorderWidth="5px" Font-Names="Arial" AllowPaging="True" 
            AllowSorting="True" CssClass="table table-hover table-striped grdViewTable">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Link" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="ChatMsg" HeaderText="ChatMsg" SortExpression="ChatMsg"></asp:BoundField>
                <asp:BoundField DataField="MsgSender" HeaderText="MsgSender" SortExpression="MsgSender"></asp:BoundField>
                <asp:BoundField DataField="MsgReceiver" HeaderText="MsgReceiver" SortExpression="MsgReceiver"></asp:BoundField>
                <asp:BoundField DataField="RecevierSeen" HeaderText="RecevierSeen" SortExpression="RecevierSeen"></asp:BoundField>
            </Columns>
           <FooterStyle BackColor="#0099CC" Font-Bold="True"  ForeColor="White" />
            <HeaderStyle BackColor="#0099CC" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        </asp:GridView>
        <br />
    </div>
    </form>
</body>
</html>
