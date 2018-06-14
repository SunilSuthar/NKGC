<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="search.aspx.vb" Inherits="NKGC.search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Entry Page</title>
    <style type="text/css">
        .style3
        {
        }
        .style8
        {
            width: 158px;
            height: 50px;
        }
        .style9
        {
            width: 172px;
            height: 50px;
        }
        .style10
        {
            width: 161px;
        }
        .style11
        {
            width: 218px;
        }
        .style12
        {
            width: 207px;
        }
        .style13
        {
            width: 161px;
            height: 50px;
        }
        .style14
        {
            width: 218px;
            height: 50px;
        }
    </style>
</head>
<body style="background-color: #FFCC99;">
    <form id="form1" runat="server">
  <div style="color:white;background-image: url('../images/bgcolor.bmp');">
        <div>
            <font class="phone_number" style="float: right;">
                Mo. 123456789
                <br />
                Mo. 123456789 </font>
        </div>
        <div align="center" style="font-size: 60px">
            <sup style="font-size: 40px">New </sup><b>Kemri </b>Golden Carrier
        </div>
        <font style="background-color: #FFCC99; font-size: 30px;">Transport Contractor and Commission</font>
        
    </div> 
     <hr />
    <div align="center" 
        style="color: #00FF00; font-weight: bolder; font-size: large; font-family: georgia;" >
     <b><marquee behavior=alternate style="width: 234px" >Search Entry</marquee></b>
    </div>
 
  <br />
    <br />
   
    <asp:Panel ID="Panel1" runat="server">
   
         <table style="border-style: groove; border-width: thin; width:100%;">
        <tr>
            <td align="center" class="style8">
                Select Type for Detail</td>
            <td align="left" class="style9" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                <asp:DropDownList ID="DropDownList1" runat="server"  Height="23px" 
                    Width="150px">
                    <asp:ListItem>New Entry</asp:ListItem>
                    <asp:ListItem>Challan</asp:ListItem>
                    <asp:ListItem>Bilty</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10" align="center">
            &nbsp;&nbsp;&nbsp; Select Type for Update</td>
            <td class="style11" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="150px">
                    <asp:ListItem>NewEntry</asp:ListItem>
                    <asp:ListItem>challan</asp:ListItem>
                    <asp:ListItem>Bilty</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3" rowspan="3">
                <table style="width: 100%; height: 143px;">
                    <tr>
                        <td class="style12">
                            Select Truck Number For Delete Record</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="150px" 
                                DataSourceID="TruckNum" DataTextField="Truck_no" 
                                DataValueField="Truck_no" Height="23px" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td align="left">
                            <asp:Button ID="DeleteButton" runat="server" Text="Delete" Width="150px" 
                                UseSubmitBehavior="False" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8">
                &nbsp;</td>
            <td align="left" class="style9" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;&nbsp;&nbsp;</td>
            <td class="style11" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style8">
                </td>
            <td align="left" class="style9" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000;">
                <asp:Button ID="FindRecordButton" runat="server" Text="Find" 
                    Width="150px" CausesValidation="False" />
            </td>
            <td class="style13">
            </td>
            <td class="style14" align="left" 
                style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                <asp:Button ID="ForUpdateRecordButton" runat="server" Text="For Update Record" 
                    Width="150px" CausesValidation="False" />
            </td>
        </tr>
    </table>
   
    </asp:Panel>

    <br />
    <asp:AccessDataSource ID="TruckNum" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT [Truck_no] FROM [NewEntry]"></asp:AccessDataSource>
   
    <asp:AccessDataSource ID="DelEntry" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        DeleteCommand="DELETE FROM NewEntry WHERE (Truck_no = tn)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="tn" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
    </asp:AccessDataSource>
   
    <br />



    <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
        PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
        UseSubmitBehavior="False" />



    </form>
</body>
</html>
