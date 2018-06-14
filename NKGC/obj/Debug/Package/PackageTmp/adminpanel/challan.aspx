<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="challan.aspx.vb" Inherits="NKGC.challan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .style1
        {}
        .style2
        {
            width: 208px;
            margin-left: 40px;
        }
        .style6
        {
            width: 166px;
        }
        .style7
        {
            width: 177px;
        }
        .style8
        {
            width: 193px;
        }
        .style9
        {
            width: 193px;
            height: 28px;
        }
        .style10
        {
            width: 166px;
            height: 28px;
        }
        .style11
        {
            width: 177px;
            height: 28px;
        }
        .style12
        {
            height: 28px;
        }
        #form1
        {
            margin-bottom: 19px;
        }
        .style13
        {
            width: 227px;
        }
        .style14
        {
            width: 128px;
        }
    </style>
    
</head>
<body style="background-color: #FFCC99;">
    <form id="form1" runat="server">
    <center>  
     <div style="border: thin solid #000000; width: 9in; height: 6in">
    
    <div style="background-image: url('../images/bgcolor.bmp'); color: white; border-bottom-color: #000000; border-bottom-width: thin; border-bottom-style: solid; width: 9in; height: 1in">
        <div><font class="phone_number" style="float: right;">
                Mo. 123456789
                <br />
                Mo. 123456789 </font>
            <font style="float:left; font-size: x-small;">PAN No.:#Number</font> 
            
        </div>
        <br />
        <div align="center" style="font-size: 30px">
            <sup style="font-size: 20px">New </sup><b>Kemri </b>Golden Carrier
        </div>
        &nbsp;
    <font style="font-size: small; float: right;">Transport Nagar,Borunda,District:Jodhour(Raj.)</font>&nbsp;
       </div>
        
       <div style="height:1.8in; border-bottom-width: thin; border-bottom-style: solid; border-bottom-color: #000000;" align="center">
                  
           <table style="width: 100%; height: 100%;">
               <tr>
                   <td class="style14" align="right">
                       Challan No.</td>
                   <td align="left" class="style13">
                       <asp:Label ID="label1" runat="server" Text="1" Font-Bold="True" ForeColor="Red"></asp:Label>
                   </td>
                   <td class="style2" align="right">
                       Date<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style2">
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style14" align="center">
                       Truck No.</td>
                   <td align="left" class="style13">
                       <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="200px" 
                           AutoPostBack="True" DataSourceID="TruckNoFromNewEntry" DataTextField="Truck_no" 
                           DataValueField="Truck_no">
                           <asp:ListItem>Select Truck</asp:ListItem>
                       </asp:DropDownList>
                   </td>
                   <td class="style46" align="center">
                       Driver Mob.No.<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                           ControlToValidate="TextBox3" ErrorMessage="(10 Digits)" ForeColor="Red" 
                           ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   </td>
                   <td align="left" class="style47">
                       <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style14" align="center">
                       Driver Name<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox4" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style13">
                       <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="20px"></asp:TextBox>
                   </td>
                   <td class="style46" align="center">
                       Driver licence No.<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox5" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style47">
                       <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style14" align="center">
                       From<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style13">
                       <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="200px">Jodhpur</asp:TextBox>
                   </td>
                   <td class="style46" align="center">
                       To<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style47">
                       <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style14" align="center">
                       Address<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox8" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style1" colspan="3">
                       <asp:TextBox ID="TextBox8" runat="server" Width="690px" Height="20px"></asp:TextBox>
                       </td>
               </tr>
           </table>
  </div>


  <div style="border-bottom: thin solid #000000; width: 9in; height: 1.8in; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">
  
      <table style="width: 100%; height: 170px;">
          <tr>
              <td class="style9" 
                  style="border-style: solid; border-width: thin; border-color: black">
                  Sender of Goods<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
              <td class="style10" 
                  style="border-style: solid; border-width: thin; border-color: black">
                  Receiver of Goods<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
              <td class="style11" 
                  style="border-style: solid; border-width: thin; border-color: black">
                  Description of Goods<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" 
                           ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
              <td class="style12" 
                  style="border-style: solid; border-width: thin; border-color: black">
                  Detaile of Frieght</td>
          </tr>
          <tr>
              <td class="style8" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  &nbsp;&nbsp;<asp:TextBox 
                      ID="TextBox9" runat="server" Height="90px" TextMode="MultiLine" 
                      Width="150px"></asp:TextBox>
                  &nbsp;</td>
              <td class="style6" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="TextBox10" runat="server" Height="90px" TextMode="MultiLine" 
                      Width="150px"></asp:TextBox>
              </td>
              <td class="style7" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="TextBox11" runat="server" Height="90px" TextMode="MultiLine" 
                      Width="150px"></asp:TextBox>
              </td>
              <td>
                  <table style="border: thin solid #000000; height: 118px" width="100%" 
                      border="2" frame="box">
                      <tr>
                          <td>
                              Rate<asp:RequiredFieldValidator 
                                  ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox12" 
                                  ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          </td>
                          <td >
                              <asp:TextBox ID="TextBox12" runat="server" Width="180px" placeholder="per quintal"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              Weight<asp:RequiredFieldValidator 
                                  ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox13" 
                                  ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          </td>
                          <td >
                              <asp:TextBox ID="TextBox13" runat="server" Width="180px" Placeholder="in quintal"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td >
                              Advance<asp:RequiredFieldValidator 
                                  ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox14" 
                                  ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox14" runat="server" Width="180px">0</asp:TextBox>
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
      </table>
  
  </div>



  <div style="height: 0.6in; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">
  
  
      <table style="width:100%;">
          <tr>
              <td style="border: thin solid black">
                  Commision</td>
              <td style="border: thin solid black">
                  Labour</td>
              <td style="border: thin solid black">
                  Scale</td>
              <td style="border: thin solid black">
                  Total</td>
          </tr>
          <tr>
              <td style="border: thin solid black">
                  <asp:TextBox ID="TextBox15" runat="server" Width="98%" AutoPostBack="True">0</asp:TextBox>
              </td>
              <td style="border: thin solid black">
                  <asp:TextBox ID="TextBox16" runat="server" Width="98%" AutoPostBack="True">0</asp:TextBox>
              </td>
              <td style="border: thin solid black">
                  <asp:TextBox ID="TextBox17" runat="server" Width="98%" AutoPostBack="True">0</asp:TextBox>
              </td>
              <td style="border: thin solid black">
                  <asp:TextBox ID="TextBox18" runat="server" Width="98%" AutoPostBack="True">0</asp:TextBox>
              </td>
          </tr>
      </table>
  
  
  </div>


  <div style="width:100%; height: 0.67in;">
  
      <table style="width: 100%; height: 100%;">
          <tr>
              <td align="left" class="style59" style="font-size: 12px">
                  I am full of in accepted the conditions of carriage given on the back side of 
                  the consignment reciept.<br />
                  Note: Any t5ype
                  <br />
                  <br />
                  Sign: Driver or Owner</td>
              <td align="right" style="font-size: 15px">
                  <br />
                  <br />
                  Sign : New Kemri Golden Carrier</td>
          </tr>
      </table>
  
  </div>

    </div>
        <br />
        <br />
        <asp:AccessDataSource ID="TruckNoFromNewEntry" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT [Truck_no] FROM [NewEntry]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="ChallanDataSelect" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT [Driver_Mobile_no], [Driver_Name], [Driver_License_no], [Address] FROM [NewEntry] WHERE ([Truck_no] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Truck_no" PropertyName="SelectedValue" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="ChallanDataInsert" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            
            
            
            InsertCommand="INSERT INTO challan([Date], Truck_no, Driver_mobile_no, Driver_name, Driver_license_no, [From], [To], Address, Sender_of_Goods, Receiver_of_Goods, Description_of_Goods, Rate, Weight, Advance, Commission, Labour, Scale, Total) VALUES (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="c1" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="c2" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox3" Name="c3" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="c4" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="c5" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="c6" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="c7" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="c8" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox9" Name="c9" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox10" Name="c10" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox11" Name="c11" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox12" Name="c12" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox13" Name="c13" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox14" Name="c14" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox15" Name="c15" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox16" Name="c16" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox17" Name="c17" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox18" Name="c18" PropertyName="Text" />
            </InsertParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="GetMaxChallanNumber" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT MAX(challan_no) AS Expr1 FROM challan">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="checking" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT [Truck_no] FROM [challan] WHERE (([Date] = ?) AND ([Truck_no] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Date" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Truck_no" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
     <br />

  <asp:Button ID= "ClearButton" runat="server" Text="Clear" Height="30px" Width="63px" 
            CausesValidation="False" UseSubmitBehavior="False"></asp:Button>&nbsp&nbsp
  <asp:Button ID="SubmitandPrintButton" runat="server" Text="Submit and Print" 
            Height="30px"></asp:Button>

        <br />
        <div align="left">
            <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                UseSubmitBehavior="False" />
        </div>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="checking" ForeColor="#FFCC99">
            <Columns>
                <asp:BoundField DataField="Truck_no" HeaderText="Truck_no" 
                    SortExpression="Truck_no" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="GetMaxChallanNumber" 
            ForeColor="#FFCC99" Height="16px" Width="16px">
        </asp:GridView>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ChallanDataSelect" Enabled="False" ForeColor="#FFCC99" 
            Height="16px" Width="16px" >
            <Columns>
                <asp:BoundField DataField="Driver_Mobile_no" HeaderText="Driver_Mobile_no" 
                    SortExpression="Driver_Mobile_no" />
                <asp:BoundField DataField="Driver_Name" HeaderText="Driver_Name" 
                    SortExpression="Driver_Name" />
                <asp:BoundField DataField="Driver_License_no" HeaderText="Driver_License_no" 
                    SortExpression="Driver_License_no" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
            </Columns>
        </asp:GridView>

        <br />

</center>


    </form>
</body>
</html>
