<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="new.aspx.vb" Inherits="NKGC._new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Entry Page</title>
    <style type="text/css">
        .style1
        {
            width: 192px;
        }
        .style2
        {
            width: 113px;
            height: 46px;
        }
        
        .style3
        {
            width: 181px;
        }
        .style4
        {
            width: 113px;
            height: 46px;
        }
        .style5
        {
            width: 192px;
            height: 46px;
        }
        .style6
        {
            width: 181px;
            height: 46px;
        }
        .style7
        {
            height: 46px;
        }
        .style8
        {
            width: 113px;
            height: 64px;
        }
        .style9
        {
            width: 192px;
            height: 64px;
        }
        .style10
        {
            width: 181px;
            height: 64px;
        }
        .style11
        {
            height: 64px;
        }
        .style12
        {
            width: 113px;
            height: 56px;
        }
        .style13
        {
            width: 192px;
            height: 56px;
        }
        .style14
        {
            width: 181px;
            height: 56px;
        }
        .style15
        {
            height: 56px;
        }
        .style16
        {
            width: 113px;
            height: 16px;
        }
        .style17
        {
            width: 192px;
            height: 16px;
        }
        .style18
        {
            width: 181px;
            height: 16px;
        }
        .style19
        {
            height: 16px;
        }
        .style20
        {
            width: 113px;
            height: 71px;
        }
        .style21
        {
            width: 192px;
            height: 71px;
        }
        .style22
        {
            width: 181px;
            height: 71px;
        }
        .style23
        {
            height: 71px;
        }
    </style>
</head>
<body style="background-color: #FFCC99;">
    <form id="form1" runat="server">
  <div style="background-image: url('../images/bgcolor.bmp'); color:White;">
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
        style="color: #CC6600; font-weight: bolder; font-size: large; font-family: georgia;" >
     <b><marquee behavior=alternate style="width: 234px" >New Entry</marquee></b>
    </div>
    <div align="right">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <br />
  <br />
    <asp:AccessDataSource ID="NewEntry" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        
        
        InsertCommand="INSERT INTO NewEntry([Date], Truck_no, Driver_Mobile_no, Driver_Name, Driver_License_no, Owner_Name, Owner_Mobile_no, Truck_Type, Goupe_Name, Address) VALUES (n1,n2,n3,n4,n5,n6,n7,n8,n9,n10)">
        <InsertParameters>
            <asp:ControlParameter ControlID="Label1" Name="n1" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="n2" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="n3" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox3" Name="n4" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox4" Name="n5" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox5" Name="n6" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox6" Name="n7" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="n8" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="TextBox7" Name="n9" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox8" Name="n10" PropertyName="Text" />
        </InsertParameters>
    </asp:AccessDataSource>





    <table style="width:100%; margin-left:25px;margin-top:20px; height: 302px;">
        <tr>
            <td class="style4" align="justify">
                1.Truck No. 
                <asp:RequiredFieldValidator ID="oneRequired" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
              <br /><br />
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" ></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
            <td class="style6" align="justify">
                2.Driver&#39;s Mobile No. 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
               <br /><br />
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="phoneFormat" runat="server" 
                    ControlToValidate="TextBox2" 
                    ErrorMessage="Phone no. length must be 10 digit long." 
                    ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8" align="justify">
                3.Driver Name 
                <asp:RequiredFieldValidator ID="threeRequired" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br /><br />
            </td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
            <td class="style10" align="justify">
                4.Driver License No. 
                 <asp:RequiredFieldValidator ID="fourRequired" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <br /><br />
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style12" align="justify">
                5.Owner&#39;s Name</td>
            <td class="style13">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style14" align="justify">
                6.Owner&#39;s Mobile No.</td>
            <td class="style15">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <br />
                7.Truck Type 
                 <br /><br />
            </td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="55px">
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                </asp:DropDownList>
                Tyres<br />
            </td>
            <td class="style18">
                8.Group Name</td>
            <td class="style19">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style20">
                9.Addrees 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            <td class="style21">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Height="30px" 
                    Width="133px"></asp:TextBox>
                </td>
            <td class="style22">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                    PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                    UseSubmitBehavior="False" />
            </td>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="ClearButton" runat="server" Text="Clear" 
                    CausesValidation="False" />
                &nbsp;&nbsp;
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
            </td>
        </tr>
    </table>





    <asp:AccessDataSource ID="checking" runat="server" 
        DataFile="~/adminpanel/DataBase/DataBase.accdb" 
        SelectCommand="SELECT [Truck_no] FROM [NewEntry] WHERE ([Truck_no] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Truck_no" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="checking" ForeColor="#FFCC99">
        <Columns>
            <asp:BoundField DataField="Truck_no" HeaderText="Truck_no" 
                SortExpression="Truck_no" />
        </Columns>
    </asp:GridView>





    </form>
</body>
</html>
