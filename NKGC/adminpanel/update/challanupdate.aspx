<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="challanupdate.aspx.vb" Inherits="NKGC.challanupdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <div align="center" style="font-size: 60px">
            <sup style="font-size: 40px">New </sup><b>Kemri </b>Golden Carrier
        </div>
        <font style="background-color: #FFCC99; font-size: 30px;">Transport Contractor and Commission</font>
        
    </div> 
     <hr />
    <div align="center" 
        style="color: #00FF00; font-weight: bolder; font-size: large; font-family: georgia;" >
     <b><marquee behavior=alternate style="width: 314px" >Update From Challan</marquee></b>
    </div>
 
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td align="center" class="style1">
                    Select Date</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="201px" 
                    AutoPostBack="True" DataSourceID="DateForSelect" DataTextField="Date" 
                    DataValueField="Date" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    Select Truck Number</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="201px" 
                    AutoPostBack="True" DataSourceID="TruckNumForSelect" DataTextField="Truck_no" 
                    DataValueField="Truck_no">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Ok For Update" Width="157px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
 
  <br />







    <asp:AccessDataSource ID="TruckNumForSelect" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        
        SelectCommand="SELECT DISTINCT [Truck_no] FROM [challan] WHERE ([Date] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Date" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
  









    <asp:AccessDataSource ID="DateForSelect" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT DISTINCT [Date] FROM [challan]"></asp:AccessDataSource>
    <asp:AccessDataSource ID="UpadateChallan" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        DeleteCommand="DELETE FROM [challan] WHERE [challan_no] = ?" 
        InsertCommand="INSERT INTO [challan] ([challan_no], [Date], [Truck_no], [Driver_mobile_no], [Driver_name], [Driver_license_no], [From], [To], [Address], [Sender_of_Goods], [Receiver_of_Goods], [Description_of_Goods], [Rate], [Weight], [Advance], [Commission], [Labour], [Scale], [Total]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [challan] WHERE (([Truck_no] = ?) AND ([Date] = ?))" 
        UpdateCommand="UPDATE [challan] SET [Date] = ?, [Truck_no] = ?, [Driver_mobile_no] = ?, [Driver_name] = ?, [Driver_license_no] = ?, [From] = ?, [To] = ?, [Address] = ?, [Sender_of_Goods] = ?, [Receiver_of_Goods] = ?, [Description_of_Goods] = ?, [Rate] = ?, [Weight] = ?, [Advance] = ?, [Commission] = ?, [Labour] = ?, [Scale] = ?, [Total] = ? WHERE [challan_no] = ?">
        <DeleteParameters>
            <asp:Parameter Name="challan_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="challan_no" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="Driver_mobile_no" Type="Double" />
            <asp:Parameter Name="Driver_name" Type="String" />
            <asp:Parameter Name="Driver_license_no" Type="String" />
            <asp:Parameter Name="From" Type="String" />
            <asp:Parameter Name="To" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Sender_of_Goods" Type="String" />
            <asp:Parameter Name="Receiver_of_Goods" Type="String" />
            <asp:Parameter Name="Description_of_Goods" Type="String" />
            <asp:Parameter Name="Rate" Type="Double" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Advance" Type="Double" />
            <asp:Parameter Name="Commission" Type="Double" />
            <asp:Parameter Name="Labour" Type="Double" />
            <asp:Parameter Name="Scale" Type="Double" />
            <asp:Parameter Name="Total" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Truck_no" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Date" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="Driver_mobile_no" Type="Double" />
            <asp:Parameter Name="Driver_name" Type="String" />
            <asp:Parameter Name="Driver_license_no" Type="String" />
            <asp:Parameter Name="From" Type="String" />
            <asp:Parameter Name="To" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Sender_of_Goods" Type="String" />
            <asp:Parameter Name="Receiver_of_Goods" Type="String" />
            <asp:Parameter Name="Description_of_Goods" Type="String" />
            <asp:Parameter Name="Rate" Type="Double" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Advance" Type="Double" />
            <asp:Parameter Name="Commission" Type="Double" />
            <asp:Parameter Name="Labour" Type="Double" />
            <asp:Parameter Name="Scale" Type="Double" />
            <asp:Parameter Name="Total" Type="Double" />
            <asp:Parameter Name="challan_no" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="challan_no" 
        DataSourceID="UpadateChallan" Width="648px" CellPadding="4" 
        DefaultMode="Edit" ForeColor="#333333" HeaderText="Details" 
        HorizontalAlign="Center" FooterText=" " Height="600px">
        <EditItemTemplate>
            challan_no:
            <asp:Label ID="challan_noLabel1" runat="server" 
                Text='<%# Eval("challan_no") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Truck_no:
            <asp:TextBox ID="Truck_noTextBox" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            Driver_mobile_no:
            <asp:TextBox ID="Driver_mobile_noTextBox" runat="server" 
                Text='<%# Bind("Driver_mobile_no") %>' />
            <br />
            Driver_name:
            <asp:TextBox ID="Driver_nameTextBox" runat="server" 
                Text='<%# Bind("Driver_name") %>' />
            <br />
            Driver_license_no:
            <asp:TextBox ID="Driver_license_noTextBox" runat="server" 
                Text='<%# Bind("Driver_license_no") %>' />
            <br />
            From:
            <asp:TextBox ID="FromTextBox" runat="server" Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:TextBox ID="ToTextBox" runat="server" Text='<%# Bind("To") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Sender_of_Goods:
            <asp:TextBox ID="Sender_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Sender_of_Goods") %>' />
            <br />
            Receiver_of_Goods:
            <asp:TextBox ID="Receiver_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Receiver_of_Goods") %>' />
            <br />
            Description_of_Goods:
            <asp:TextBox ID="Description_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Description_of_Goods") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Advance:
            <asp:TextBox ID="AdvanceTextBox" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Commission:
            <asp:TextBox ID="CommissionTextBox" runat="server" 
                Text='<%# Bind("Commission") %>' />
            <br />
            Labour:
            <asp:TextBox ID="LabourTextBox" runat="server" Text='<%# Bind("Labour") %>' />
            <br />
            Scale:
            <asp:TextBox ID="ScaleTextBox" runat="server" Text='<%# Bind("Scale") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            <br />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                onclick="UpdateCancelButton_Click" />
        </EditItemTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Truck_no:
            <asp:TextBox ID="Truck_noTextBox" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            Driver_mobile_no:
            <asp:TextBox ID="Driver_mobile_noTextBox" runat="server" 
                Text='<%# Bind("Driver_mobile_no") %>' />
            <br />
            Driver_name:
            <asp:TextBox ID="Driver_nameTextBox" runat="server" 
                Text='<%# Bind("Driver_name") %>' />
            <br />
            Driver_license_no:
            <asp:TextBox ID="Driver_license_noTextBox" runat="server" 
                Text='<%# Bind("Driver_license_no") %>' />
            <br />
            From:
            <asp:TextBox ID="FromTextBox" runat="server" Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:TextBox ID="ToTextBox" runat="server" Text='<%# Bind("To") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Sender_of_Goods:
            <asp:TextBox ID="Sender_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Sender_of_Goods") %>' />
            <br />
            Receiver_of_Goods:
            <asp:TextBox ID="Receiver_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Receiver_of_Goods") %>' />
            <br />
            Description_of_Goods:
            <asp:TextBox ID="Description_of_GoodsTextBox" runat="server" 
                Text='<%# Bind("Description_of_Goods") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Advance:
            <asp:TextBox ID="AdvanceTextBox" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Commission:
            <asp:TextBox ID="CommissionTextBox" runat="server" 
                Text='<%# Bind("Commission") %>' />
            <br />
            Labour:
            <asp:TextBox ID="LabourTextBox" runat="server" Text='<%# Bind("Labour") %>' />
            <br />
            Scale:
            <asp:TextBox ID="ScaleTextBox" runat="server" Text='<%# Bind("Scale") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            challan_no:
            <asp:Label ID="challan_noLabel" runat="server" 
                Text='<%# Eval("challan_no") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Truck_no:
            <asp:Label ID="Truck_noLabel" runat="server" Text='<%# Bind("Truck_no") %>' />
            <br />
            Driver_mobile_no:
            <asp:Label ID="Driver_mobile_noLabel" runat="server" 
                Text='<%# Bind("Driver_mobile_no") %>' />
            <br />
            Driver_name:
            <asp:Label ID="Driver_nameLabel" runat="server" 
                Text='<%# Bind("Driver_name") %>' />
            <br />
            Driver_license_no:
            <asp:Label ID="Driver_license_noLabel" runat="server" 
                Text='<%# Bind("Driver_license_no") %>' />
            <br />
            From:
            <asp:Label ID="FromLabel" runat="server" Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:Label ID="ToLabel" runat="server" Text='<%# Bind("To") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Sender_of_Goods:
            <asp:Label ID="Sender_of_GoodsLabel" runat="server" 
                Text='<%# Bind("Sender_of_Goods") %>' />
            <br />
            Receiver_of_Goods:
            <asp:Label ID="Receiver_of_GoodsLabel" runat="server" 
                Text='<%# Bind("Receiver_of_Goods") %>' />
            <br />
            Description_of_Goods:
            <asp:Label ID="Description_of_GoodsLabel" runat="server" 
                Text='<%# Bind("Description_of_Goods") %>' />
            <br />
            Rate:
            <asp:Label ID="RateLabel" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Advance:
            <asp:Label ID="AdvanceLabel" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Commission:
            <asp:Label ID="CommissionLabel" runat="server" 
                Text='<%# Bind("Commission") %>' />
            <br />
            Labour:
            <asp:Label ID="LabourLabel" runat="server" Text='<%# Bind("Labour") %>' />
            <br />
            Scale:
            <asp:Label ID="ScaleLabel" runat="server" Text='<%# Bind("Scale") %>' />
            <br />
            Total:
            <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:FormView>

        <div align="left">
            <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                UseSubmitBehavior="False" />
        &nbsp;<asp:Button ID="goBack" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/search.aspx" Text="&lt;" ToolTip="Go Back" 
                UseSubmitBehavior="False" />
        &nbsp;<asp:Button ID="refButton" runat="server" Text="҉" Width="36px" />
        </div>
    <br />
  









</form>
   
</body>
</html>
