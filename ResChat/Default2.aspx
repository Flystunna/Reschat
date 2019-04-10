<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sharing Images</title>

    <!-- Bootstrap -->
    <link href="style/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="style/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
  </head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        
      </button>
      <a class="navbar-brand" href="#">MedChat</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Start.aspx">Home</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="chat.aspx"><span class="glyphicon glyphicon-user"></span> Chat </a></li>
        <li><a href="bout.aspx"><span class="glyphicon glyphicon-comment"></span> About</a></li>
          <li><a href="login.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav> 
<div class="container">            
            <div class="navbar navbar-header">
                <h3>Sharing Images with friends on MedChat just became easier</h3>
                </div>
            </div>
        <div class="container">
            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Username" runat="server" ></asp:TextBox><p></p>
              <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Status Update" runat="server" Height="50px" Width="234px" ></asp:TextBox><p></p>
          
                Select Image:<asp:FileUpload ID="FileUpload1"   runat="server" />          
              <br />
              <asp:Button  ID="btnUpload" runat="server" Text="Upload" CssClass=" btn btn-primary" OnClick="Upload"/>
            <br />
            <br />   
        <hr />
        <asp:DataList ID="DataList2" runat="server"  CssClass="img-responsive">
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemTemplate>
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" ImageUrl='<%# Eval("Value") %>' CssClass="img-responsive" Height="400px" Width="400px" runat="server"   ImageAlign="Middle" />
                </td>
            </tr>
            <tr>
                <td>
                    <%# Eval("Text") %>                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    </div>
    </form>
</body>
</html>
