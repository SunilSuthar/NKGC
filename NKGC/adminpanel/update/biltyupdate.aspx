<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="biltyupdate.aspx.vb" Inherits="NKGC.biltyupdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
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
        <div align="center" style="font-size: 60px">
            <sup style="font-size: 40px">New </sup><b>Kemri </b>Golden Carrier
        </div>
        <font style="background-color: #FFCC99; font-size: 30px;">Transport Contractor and Commission</font>
        
    </div> 
     <hr />
    <div align="center" 
        style="color: #00FF00; font-weight: bolder; font-size: large; font-family: georgia;" >
     <b><marquee behavior=alternate style="width: 314px" >Update From Bilty</marquee></b>
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
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    Select Truck Number</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="201px" 
                    AutoPostBack="True" DataSourceID="TruckNum" DataTextField="Truck_no" 
                    DataValueField="Truck_no">
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
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" 
                    Text="Ok For Update" Width="180px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
 
  <br />







    <asp:AccessDataSource ID="TruckNum" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT DISTINCT [Truck_no] FROM [Bilty] WHERE ([Date] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Date" 
                PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:AccessDataSource>
  









    <asp:AccessDataSource ID="DateForSelect" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT DISTINCT [Date] FROM [Bilty]"></asp:AccessDataSource>
    <asp:AccessDataSource ID="UpadateBilty" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        DeleteCommand="DELETE FROM [Bilty] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Bilty] ([ID], [Date], [G_R_no], [Truck_no], [From], [To], [Consignor], [Consignor_TIN_no], [Consignee], [Consignee_TIN_no], [No_pkgs], [Desc_Goods], [Rate], [Weight], [Freight], [Service_Tax], [Total], [Advance], [Grand_Total], [Remarks], [Servic_Tax_Payble_by]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Bilty] WHERE (([Date] = ?) AND ([Truck_no] = ?))" 
        
        UpdateCommand="UPDATE [Bilty] SET [Date] = ?, [G_R_no] = ?, [Truck_no] = ?, [From] = ?, [To] = ?, [Consignor] = ?, [Consignor_TIN_no] = ?, [Consignee] = ?, [Consignee_TIN_no] = ?, [No_pkgs] = ?, [Desc_Goods] = ?, [Rate] = ?, [Weight] = ?, [Freight] = ?, [Service_Tax] = ?, [Total] = ?, [Advance] = ?, [Grand_Total] = ?, [Remarks] = ?, [Servic_Tax_Payble_by] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="G_R_no" Type="Int32" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="From" Type="String" />
            <asp:Parameter Name="To" Type="String" />
            <asp:Parameter Name="Consignor" Type="String" />
            <asp:Parameter Name="Consignor_TIN_no" Type="String" />
            <asp:Parameter Name="Consignee" Type="String" />
            <asp:Parameter Name="Consignee_TIN_no" Type="String" />
            <asp:Parameter Name="No_pkgs" Type="Double" />
            <asp:Parameter Name="Desc_Goods" Type="String" />
            <asp:Parameter Name="Rate" Type="Double" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Freight" Type="Double" />
            <asp:Parameter Name="Service_Tax" Type="Double" />
            <asp:Parameter Name="Total" Type="Double" />
            <asp:Parameter Name="Advance" Type="Double" />
            <asp:Parameter Name="Grand_Total" Type="Double" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="Servic_Tax_Payble_by" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Date" 
                PropertyName="SelectedValue" Type="DateTime" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Truck_no" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="G_R_no" Type="Int32" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="From" Type="String" />
            <asp:Parameter Name="To" Type="String" />
            <asp:Parameter Name="Consignor" Type="String" />
            <asp:Parameter Name="Consignor_TIN_no" Type="String" />
            <asp:Parameter Name="Consignee" Type="String" />
            <asp:Parameter Name="Consignee_TIN_no" Type="String" />
            <asp:Parameter Name="No_pkgs" Type="Double" />
            <asp:Parameter Name="Desc_Goods" Type="String" />
            <asp:Parameter Name="Rate" Type="Double" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Freight" Type="Double" />
            <asp:Parameter Name="Service_Tax" Type="Double" />
            <asp:Parameter Name="Total" Type="Double" />
            <asp:Parameter Name="Advance" Type="Double" />
            <asp:Parameter Name="Grand_Total" Type="Double" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="Servic_Tax_Payble_by" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="UpadateBilty" Width="570px" CellPadding="10" 
        DefaultMode="Edit" ForeColor="#333333" HeaderText="Details" 
        HorizontalAlign="Center" EnableTheming="True" 
        FooterText=" " GridLines="Both">
       
        <EditItemTemplate>
           
             ID:
            <asp:Label ID="IDLabel1" runat="server" 
                Text='<%# Eval("ID") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            G_R_no:
            <asp:TextBox ID="G_R_noTextBox" runat="server" 
                Text='<%# Bind("G_R_no") %>' />
            <br />
            Truck_no:
            <asp:TextBox ID="Truck_noTextBox" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            From:
            <asp:TextBox ID="FromTextBox" runat="server" 
                Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:TextBox ID="ToTextBox" runat="server" 
                Text='<%# Bind("To") %>' />
            <br />
            Consignor:
            <asp:TextBox ID="ConsignorTextBox" runat="server" 
                Text='<%# Bind("Consignor") %>' />
            <br />
            Consignor_TIN_no:
            <asp:TextBox ID="Consignor_TIN_noTextBox" runat="server" 
                Text='<%# Bind("Consignor_TIN_no") %>' />
            <br />
            Consignee:
            <asp:TextBox ID="ConsigneeTextBox" runat="server" 
                Text='<%# Bind("Consignee") %>' />
            <br />
            Consignee_TIN_no:
            <asp:TextBox ID="Consignee_TIN_noTextBox" runat="server" 
                Text='<%# Bind("Consignee_TIN_no") %>' />
            <br />
            No_pkgs:
            <asp:TextBox ID="No_pkgsTextBox" runat="server" 
                Text='<%# Bind("No_pkgs") %>' />
            <br />
            Desc_Goods:
            <asp:TextBox ID="Desc_GoodsTextBox" runat="server" 
                Text='<%# Bind("Desc_Goods") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Freight:
            <asp:TextBox ID="FreightTextBox" runat="server" Text='<%# Bind("Freight") %>' />
            <br />
            Service_Tax:
            <asp:TextBox ID="Service_TaxTextBox" runat="server" 
                Text='<%# Bind("Service_Tax") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            Advance:
            <asp:TextBox ID="AdvanceTextBox" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Grand_Total:
            <asp:TextBox ID="Grand_TotalTextBox" runat="server" 
                Text='<%# Bind("Grand_Total") %>' />
            <br />
            Remarks:
            <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            Servic_Tax_Payble_by:
            <asp:TextBox ID="Servic_Tax_Payble_byTextBox" runat="server" 
                Text='<%# Bind("Servic_Tax_Payble_by") %>' />
            <br />
            <br />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                 onclick="UpdateCancelButton_Click" />
           
                
        </EditItemTemplate>
        <EditRowStyle Wrap="True" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            G_R_no:
            <asp:TextBox ID="G_R_noTextBox" runat="server" 
                Text='<%# Bind("G_R_no") %>' />
            <br />
            Truck_no:
            <asp:TextBox ID="Truck_noTextBox" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            From:
            <asp:TextBox ID="FromTextBox" runat="server" 
                Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:TextBox ID="ToTextBox" runat="server" 
                Text='<%# Bind("To") %>' />
            <br />
            Consignor:
            <asp:TextBox ID="ConsignorTextBox" runat="server" 
                Text='<%# Bind("Consignor") %>' />
            <br />
            Consignor_TIN_no:
            <asp:TextBox ID="Consignor_TIN_noTextBox" runat="server" 
                Text='<%# Bind("Consignor_TIN_no") %>' />
            <br />
            Consignee:
            <asp:TextBox ID="ConsigneeTextBox" runat="server" 
                Text='<%# Bind("Consignee") %>' />
            <br />
            Consignee_TIN_no:
            <asp:TextBox ID="Consignee_TIN_noTextBox" runat="server" 
                Text='<%# Bind("Consignee_TIN_no") %>' />
            <br />
            No_pkgs:
            <asp:TextBox ID="No_pkgsTextBox" runat="server" 
                Text='<%# Bind("No_pkgs") %>' />
            <br />
            Desc_Goods:
            <asp:TextBox ID="Desc_GoodsTextBox" runat="server" 
                Text='<%# Bind("Desc_Goods") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Freight:
            <asp:TextBox ID="FreightTextBox" runat="server" Text='<%# Bind("Freight") %>' />
            <br />
            Service_Tax:
            <asp:TextBox ID="Service_TaxTextBox" runat="server" 
                Text='<%# Bind("Service_Tax") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            Advance:
            <asp:TextBox ID="AdvanceTextBox" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Grand_Total:
            <asp:TextBox ID="Grand_TotalTextBox" runat="server" 
                Text='<%# Bind("Grand_Total") %>' />
            <br />
            Remarks:
            <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            Servic_Tax_Payble_by:
            <asp:TextBox ID="Servic_Tax_Payble_byTextBox" runat="server" 
                Text='<%# Bind("Servic_Tax_Payble_by") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" 
                Text='<%# Eval("ID") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            G_R_no:
            <asp:Label ID="G_R_noLabel" runat="server" Text='<%# Bind("G_R_no") %>' />
            <br />
            Truck_no:
            <asp:Label ID="Truck_noLabel" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            From:
            <asp:Label ID="FromLabel" runat="server" 
                Text='<%# Bind("From") %>' />
            <br />
            To:
            <asp:Label ID="ToLabel" runat="server" 
                Text='<%# Bind("To") %>' />
            <br />
            Consignor:
            <asp:Label ID="ConsignorLabel" runat="server" Text='<%# Bind("Consignor") %>' />
            <br />
            Consignor_TIN_no:
            <asp:Label ID="Consignor_TIN_noLabel" runat="server" 
                Text='<%# Bind("Consignor_TIN_no") %>' />
            <br />
            Consignee:
            <asp:Label ID="ConsigneeLabel" runat="server" Text='<%# Bind("Consignee") %>' />
            <br />
            Consignee_TIN_no:
            <asp:Label ID="Consignee_TIN_noLabel" runat="server" 
                Text='<%# Bind("Consignee_TIN_no") %>' />
            <br />
            No_pkgs:
            <asp:Label ID="No_pkgsLabel" runat="server" 
                Text='<%# Bind("No_pkgs") %>' />
            <br />
            Desc_Goods:
            <asp:Label ID="Desc_GoodsLabel" runat="server" 
                Text='<%# Bind("Desc_Goods") %>' />
            <br />
            Rate:
            <asp:Label ID="RateLabel" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Weight:
            <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Freight:
            <asp:Label ID="FreightLabel" runat="server" Text='<%# Bind("Freight") %>' />
            <br />
            Service_Tax:
            <asp:Label ID="Service_TaxLabel" runat="server" 
                Text='<%# Bind("Service_Tax") %>' />
            <br />
            Total:
            <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            Advance:
            <asp:Label ID="AdvanceLabel" runat="server" Text='<%# Bind("Advance") %>' />
            <br />
            Grand_Total:
            <asp:Label ID="Grand_TotalLabel" runat="server" 
                Text='<%# Bind("Grand_Total") %>' />
            <br />
            Remarks:
            <asp:Label ID="RemarksLabel" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            Servic_Tax_Payble_by:
            <asp:Label ID="Servic_Tax_Payble_byLabel" runat="server" 
                Text='<%# Bind("Servic_Tax_Payble_by") %>' />
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
