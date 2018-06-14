<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="NKGC.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    </head>
<body style="background-image: url('../images/bgcolor.bmp');">
    <form id="form1" runat="server" style="margin-top:100px; ">
    <div id="headd" align="center" style="font-size: 30px; position:absolute; left:0px;  top:30px;  right:0px; Black; color:White; text-shadow:5px 5px 5px #666;">  
            (N.K.G.C)</div>
  <br /><br /><br /><br /><br />

   <center>
       <asp:Login ID="LoginPanel" runat="server" Height="179px" 
           Width="370px" DestinationPageUrl="~/adminpanel/" 
           RememberMeText="Remember Me !" 
           TitleText="&lt;b&gt;Login &lt;/b&gt;" 
           style="margin-bottom: 0px; box-shadow:5px 5px 5px #666;  background-color:black; opacity:0.7; color:White;" 
           BorderStyle="Solid">
    </asp:Login>
    </center>
    
        
    </form>
  
    
        
    </body>
</html>
