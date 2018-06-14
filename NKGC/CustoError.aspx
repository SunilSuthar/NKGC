<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CustoError.aspx.vb" Inherits="NKGC.CustoError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <h1>
            <span class="style2">Sorry&nbsp;&nbsp; </span>
            <asp:LoginName ID="usrName" runat="server" CssClass="style2" 
                FormatString="{0}!" style="font-weight: 700" />
        </h1>
    
    </div>
    </form>
</body>
</html>
