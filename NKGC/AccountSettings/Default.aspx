<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="NKGC._Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/AccountSettings/ChangePassWord.aspx">Change Password</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/AccountSettings/PassWordRecovery.aspx">Password Recovery</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
