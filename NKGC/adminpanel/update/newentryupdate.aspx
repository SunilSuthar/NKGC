﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newentryupdate.aspx.vb" Inherits="NKGC.newentryupdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 490px;
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
     <b><marquee behavior=alternate style="width: 314px" >Update From New Entry</marquee></b>
    </div>
    <asp:Panel ID="Panel1" runat="server">
   
    <table style="width:100%;">
        <tr>
            <td align="center" class="style1">
                Select Truck Number</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="201px" 
                    DataSourceID="TruckNumForSelect" DataTextField="Truck_no" 
                    DataValueField="Truck_no">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Ok For Update" Width="123px" />
            </td>
        </tr>
    </table>
  
 </asp:Panel>





    <asp:AccessDataSource ID="TruckNumForSelect" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT DISTINCT [Truck_no] FROM [NewEntry]"></asp:AccessDataSource>
    <asp:AccessDataSource ID="SelectAndUpdateData" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        DeleteCommand="DELETE FROM [NewEntry] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [NewEntry] ([ID], [Date], [Truck_no], [Driver_Mobile_no], [Driver_Name], [Driver_License_no], [Owner_Name], [Owner_Mobile_no], [Truck_Type], [Goupe_Name], [Address]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [NewEntry] WHERE ([Truck_no] = ?)" 
        UpdateCommand="UPDATE [NewEntry] SET [Date] = ?, [Truck_no] = ?, [Driver_Mobile_no] = ?, [Driver_Name] = ?, [Driver_License_no] = ?, [Owner_Name] = ?, [Owner_Mobile_no] = ?, [Truck_Type] = ?, [Goupe_Name] = ?, [Address] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="Driver_Mobile_no" Type="String" />
            <asp:Parameter Name="Driver_Name" Type="String" />
            <asp:Parameter Name="Driver_License_no" Type="String" />
            <asp:Parameter Name="Owner_Name" Type="String" />
            <asp:Parameter Name="Owner_Mobile_no" Type="String" />
            <asp:Parameter Name="Truck_Type" Type="String" />
            <asp:Parameter Name="Goupe_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Truck_no" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Truck_no" Type="String" />
            <asp:Parameter Name="Driver_Mobile_no" Type="String" />
            <asp:Parameter Name="Driver_Name" Type="String" />
            <asp:Parameter Name="Driver_License_no" Type="String" />
            <asp:Parameter Name="Owner_Name" Type="String" />
            <asp:Parameter Name="Owner_Mobile_no" Type="String" />
            <asp:Parameter Name="Truck_Type" Type="String" />
            <asp:Parameter Name="Goupe_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="SelectAndUpdateData" Width="574px" CellPadding="4" 
        DefaultMode="Edit" ForeColor="#333333" HeaderText="Details" 
        HorizontalAlign="Center" FooterText=" ">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Truck_no:
            <asp:TextBox ID="Truck_noTextBox" runat="server" 
                Text='<%# Bind("Truck_no") %>' />
            <br />
            Driver_Mobile_no:
            <asp:TextBox ID="Driver_Mobile_noTextBox" runat="server" 
                Text='<%# Bind("Driver_Mobile_no") %>' />
            <br />
            Driver_Name:
            <asp:TextBox ID="Driver_NameTextBox" runat="server" 
                Text='<%# Bind("Driver_Name") %>' />
            <br />
            Driver_License_no:
            <asp:TextBox ID="Driver_License_noTextBox" runat="server" 
                Text='<%# Bind("Driver_License_no") %>' />
            <br />
            Owner_Name:
            <asp:TextBox ID="Owner_NameTextBox" runat="server" 
                Text='<%# Bind("Owner_Name") %>' />
            <br />
            Owner_Mobile_no:
            <asp:TextBox ID="Owner_Mobile_noTextBox" runat="server" 
                Text='<%# Bind("Owner_Mobile_no") %>' />
            <br />
            Truck_Type:
            <asp:TextBox ID="Truck_TypeTextBox" runat="server" 
                Text='<%# Bind("Truck_Type") %>' />
            <br />
            Goupe_Name:
            <asp:TextBox ID="Goupe_NameTextBox" runat="server" 
                Text='<%# Bind("Goupe_Name") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
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
            Driver_Mobile_no:
            <asp:TextBox ID="Driver_Mobile_noTextBox" runat="server" 
                Text='<%# Bind("Driver_Mobile_no") %>' />
            <br />
            Driver_Name:
            <asp:TextBox ID="Driver_NameTextBox" runat="server" 
                Text='<%# Bind("Driver_Name") %>' />
            <br />
            Driver_License_no:
            <asp:TextBox ID="Driver_License_noTextBox" runat="server" 
                Text='<%# Bind("Driver_License_no") %>' />
            <br />
            Owner_Name:
            <asp:TextBox ID="Owner_NameTextBox" runat="server" 
                Text='<%# Bind("Owner_Name") %>' />
            <br />
            Owner_Mobile_no:
            <asp:TextBox ID="Owner_Mobile_noTextBox" runat="server" 
                Text='<%# Bind("Owner_Mobile_no") %>' />
            <br />
            Truck_Type:
            <asp:TextBox ID="Truck_TypeTextBox" runat="server" 
                Text='<%# Bind("Truck_Type") %>' />
            <br />
            Goupe_Name:
            <asp:TextBox ID="Goupe_NameTextBox" runat="server" 
                Text='<%# Bind("Goupe_Name") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Truck_no:
            <asp:Label ID="Truck_noLabel" runat="server" Text='<%# Bind("Truck_no") %>' />
            <br />
            Driver_Mobile_no:
            <asp:Label ID="Driver_Mobile_noLabel" runat="server" 
                Text='<%# Bind("Driver_Mobile_no") %>' />
            <br />
            Driver_Name:
            <asp:Label ID="Driver_NameLabel" runat="server" 
                Text='<%# Bind("Driver_Name") %>' />
            <br />
            Driver_License_no:
            <asp:Label ID="Driver_License_noLabel" runat="server" 
                Text='<%# Bind("Driver_License_no") %>' />
            <br />
            Owner_Name:
            <asp:Label ID="Owner_NameLabel" runat="server" 
                Text='<%# Bind("Owner_Name") %>' />
            <br />
            Owner_Mobile_no:
            <asp:Label ID="Owner_Mobile_noLabel" runat="server" 
                Text='<%# Bind("Owner_Mobile_no") %>' />
            <br />
            Truck_Type:
            <asp:Label ID="Truck_TypeLabel" runat="server" 
                Text='<%# Bind("Truck_Type") %>' />
            <br />
            Goupe_Name:
            <asp:Label ID="Goupe_NameLabel" runat="server" 
                Text='<%# Bind("Goupe_Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
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




    <br />

        <div align="left">
            <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                UseSubmitBehavior="False" />
        &nbsp;<asp:Button ID="goBack" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/search.aspx" Text="&lt;" ToolTip="Go Back" 
                UseSubmitBehavior="False" />
        &nbsp;<asp:Button ID="refButton" runat="server" Text="҉" Width="36px" />
        </div>




    </form>
   
</body>
</html>
