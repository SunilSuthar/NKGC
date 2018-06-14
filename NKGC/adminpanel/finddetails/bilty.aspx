<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bilty.aspx.vb" Inherits="NKGC.bilty1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .style1
        {
            width: 502px;
        }
    </style>
</head>
<body style="background-color: #FFCC99;">
    <form id="form1" runat="server">
  <div style="color:white;background-image: url('../../images/bgcolor.bmp');">
        <div>
            <font class="phone_number" style="float: right;">
                Mo. 123456789
                <br />
                Mo. 123456789 </font>
        </div>
        <font style="background-color: #FFCC99; font-size: 30px;">Transport Contractor and Commission</font>
        
    </div> 
     <hr />
    <div align="center" 
        style="color: #00FF00; font-weight: bolder; font-size: large; font-family: georgia;" >
     <b><marquee behavior=alternate style="width: 314px" >Update From New Entry</marquee></b>

    </div>
    <asp:Panel ID="Panel1" runat="server">
   
    <table style="width:100%;">
        <tr>
            <td align="right" class="style1">
                Select Truck Number</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="201px" 
                    DataSourceID="SelectTruckNum" DataTextField="Truck_no" 
                    DataValueField="Truck_no">
                </asp:DropDownList>
                <asp:AccessDataSource ID="SelectTruckNum" runat="server" 
                    DataFile="~/adminpanel/DataBase/DataBase.accdb" 
                    SelectCommand="SELECT DISTINCT [Truck_no] FROM [Bilty]"></asp:AccessDataSource>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Ok" Width="123px" 
                    CausesValidation="False" />
            </td>
        </tr>
    </table>
  
 </asp:Panel>





    <br />
    <asp:AccessDataSource ID="TruckDetails" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        
        
        SelectCommand="SELECT [Date], [G_R_no], [Truck_no], [From], [To], [Consignor], [Consignee], [Desc_Goods], [Rate], [Weight], [Freight], [Service_Tax], [Advance], [Grand_Total], [Servic_Tax_Payble_by] FROM [Bilty] WHERE ([Truck_no] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Truck_no" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="TruckDetails" 
        ForeColor="#333333" GridLines="None" Visible="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="G_R_no" HeaderText="G_R_no" 
                SortExpression="G_R_no" />
            <asp:BoundField DataField="Truck_no" HeaderText="Truck_no" 
                SortExpression="Truck_no" />
            <asp:BoundField DataField="From" HeaderText="From" 
                SortExpression="From" />
            <asp:BoundField DataField="To" HeaderText="To" 
                SortExpression="To" />
            <asp:BoundField DataField="Consignor" HeaderText="Consignor" 
                SortExpression="Consignor" />
            <asp:BoundField DataField="Consignee" HeaderText="Consignee" 
                SortExpression="Consignee" />
            <asp:BoundField DataField="Desc_Goods" HeaderText="Desc_Goods" 
                SortExpression="Desc_Goods" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" 
                SortExpression="Rate" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" 
                SortExpression="Weight" />
            <asp:BoundField DataField="Freight" HeaderText="Freight" 
                SortExpression="Freight" />
            <asp:BoundField DataField="Service_Tax" HeaderText="Service_Tax" 
                SortExpression="Service_Tax" />
            <asp:BoundField DataField="Advance" HeaderText="Advance" 
                SortExpression="Advance" />
            <asp:BoundField DataField="Grand_Total" HeaderText="Grand_Total" 
                SortExpression="Grand_Total" />
            <asp:BoundField DataField="Servic_Tax_Payble_by" 
                HeaderText="Servic_Tax_Payble_by" SortExpression="Servic_Tax_Payble_by" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>




    <asp:Panel ID="Panel2" runat="server">
       <center> <asp:Button ID="Button2" runat="server" Text="Print" /></center>
        <br />
        <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                UseSubmitBehavior="False" Width="30px" />
        &nbsp;<asp:Button ID="goBack" runat="server" CausesValidation="False" 
            PostBackUrl="~/adminpanel/search.aspx" Text="&lt;" ToolTip="Go Back" 
            UseSubmitBehavior="False" />
        &nbsp;<asp:Button ID="refButton" runat="server" Text="҉" Width="36px" />
    </asp:Panel>




    <br />

        




    </form>
   
   
</body>
</html>
