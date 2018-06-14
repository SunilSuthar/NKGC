<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mainpage.aspx.vb" Inherits="NKGC.mainpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
 
<style>      
    p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
</style>

  
<body style="background-color: #FFCC99;">
    <form id="form1" runat="server" 
    style="color: #000000; font-size: x-large; height: 605px;">
  <div style="color:white;background-image: url('../images/bgcolor.bmp'); box-shadow: 5px 5px 5px #666; ">
        <div>
            <font class="pan_number">PAN No.:#Number</font> <font class="phone_number" style="float: right;">
                Mo. 123456789
                <br />
                Mo. 123456789 </font>
        </div>
        <div align="center" style="font-size: 60px;text-shadow: 6px 6px 6px #666;" >
            <sup style="font-size: 40px">New </sup><b>Kemri </b>Golden Carrier
        </div>
        <font style="background-color: #FF9966; font-size: 30px;">Transport Contractor and Commission</font>&nbsp;
         <font style="font-size: 25px; float: right;">Transport Nagar,Borunda,District:Jodhour(Raj.)</font>&nbsp;
    </div>

    <div align="right">
        <br />
        <asp:LinkButton ID="AccSettLab" runat="server" 
            PostBackUrl="~/AccountSettings/ChangePassWord.aspx">Account Settings</asp:LinkButton>
&nbsp;&nbsp; |&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
    
    Welcome 
       <u ><asp:LoginName ID="LoginName1" runat="server" ForeColor="Black"  /></u>
    &nbsp;!<br />
    <br />
  


<div style="margin-left:40px; width: 519px; height: 304px; margin-right: 0px;">
<asp:Button ID="Button1" runat="server" Text="New Entry" BackColor="#CCCCFF" 
        BorderStyle="None" Font-Bold="True" Height="50px" Width="500px" 
        style="box-shadow:5px 5px 5px #666;" PostBackUrl="~/adminpanel/new.aspx" />
      
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Challan" BackColor="#CCCCFF" 
        BorderStyle="None" Font-Bold="True" Height="50px" Width="500px" 
        style="box-shadow:5px 5px 5px #666;" PostBackUrl="~/adminpanel/challan.aspx" />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="Bilty" BackColor="#CCCCFF" 
        BorderStyle="None" Font-Bold="True" Height="50px" Width="500px" 
        style="box-shadow:5px 5px 5px #666;" PostBackUrl="~/adminpanel/bilty.aspx" />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" Text="Find and Update Record" BackColor="#CCCCFF" 
        BorderStyle="None" Font-Bold="True" Height="50px" Width="500px" 
        style="box-shadow:5px 5px 5px #666;" PostBackUrl="~/adminpanel/search.aspx" />
</div>
 
    </form>

     <div style="position:absolute; left:0px; bottom:20px; width:100%; background-color:Black; opacity:0.5;">
          <marquee>  
           <font style="font-size:xx-large; font-style: italic;">
        &nbsp; &nbsp;
        <span style="color:#00B050">New</span> &nbsp;
        <span style="color:red">Kemri</span> &nbsp;
        <span style="color:#7030A0">Golden</span> &nbsp;
        <span style="color:#00B0F0"> Carrier</span>
        &nbsp; &nbsp;
    </font></marquee>
    </div>
    
    </body>
</html>
