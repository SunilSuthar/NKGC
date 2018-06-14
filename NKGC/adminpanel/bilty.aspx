<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bilty.aspx.vb" Inherits="NKGC.bilty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style20
        {
            width: 104px;
            height: 20px;
        }
        .style21
        {
            width: 326px;
            height: 20px;
        }
        .style22
        {
            width: 151px;
            height: 20px;
        }
        .style23
        {
            height: 20px;
        }
        .style24
        {
            height: 29px;
        }
        .style25
        {
            height: 29px;
            width: 69px;
        }
        .style26
        {
            width: 69px;
        }
        .style27
        {
            height: 58px;
        }
        .style30
        {
            height: 29px;
            width: 363px;
        }
        .style32
        {
            height: 29px;
            width: 184px;
        }
        .style38
        {
            height: 23px;
            width: 188px;
        }
        .style40
        {
            width: 104px;
            height: 18px;
        }
        .style41
        {
            width: 326px;
            height: 18px;
        }
        .style42
        {
            width: 151px;
            height: 18px;
        }
        .style43
        {
            height: 18px;
        }
        .style44
        {
            width: 104px;
            height: 17px;
        }
        .style45
        {
            width: 326px;
            height: 17px;
        }
        .style46
        {
            width: 151px;
            height: 17px;
        }
        .style47
        {
            height: 17px;
        }
        .style48
        {
            width: 188px;
            height: 24px;
        }
        .style52
        {
            height: 23px;
            width: 230px;
        }
        .style53
        {
            width: 230px;
            height: 24px;
        }
        .style54
        {
            width: 230px;
        }
        .style55
        {
            width: 188px;
        }
        .style56
        {
            width: 184px;
        }
        .style57
        {
            width: 188px;
            height: 15px;
        }
        .style58
        {
            width: 230px;
            height: 15px;
        }
        .style59
        {
            width: 523px;
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
        &nbsp;<font style="background-color: #FFCC99; font-size: medium; float: left;">Transport Contractor and Commission</font>
        </div>
         
       <div style="height:1.8in; overflow: visible; border-bottom-width: thin; border-bottom-style: solid; border-bottom-color: #000000;">
       



           
           <table style="width: 100%; height: 98%;">
               <tr>
                   <td class="style40" align="center">
                       </td>
                   <td align="left" class="style41">
                   </td>
                   <td class="style42" align="right">
                       G.R.No.</td>
                   <td align="left" class="style43">
                       <asp:Label ID="control2" runat="server" Text="1"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="style44" align="center">
                       Consignor<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator3" runat="server" ControlToValidate="control6" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style45">
                       <asp:TextBox ID="control6" runat="server" Width="325px" Height="20px" placeholder="Consignor"></asp:TextBox>
                   </td>
                   <td class="style46" align="center">
                       Date</td>
                   <td align="left" class="style47">
                       <asp:TextBox ID="control1" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style44" align="right">
                       TIN No.<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator4" runat="server" ControlToValidate="control7" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style45">
                       <asp:TextBox ID="control7" runat="server" Width="325px" Height="20px" placeholder="Consignor's TIN No."></asp:TextBox>
                   </td>
                   <td class="style46" align="center">
                       Truck No.</td>
                   <td align="left" class="style47">
                       <asp:DropDownList ID="control3" runat="server" AutoPostBack="True" 
                           DataSourceID="getTodayChallanTruckNumber" DataTextField="Truck_no" 
                           DataValueField="Truck_no" Width="128px" ></asp:DropDownlist>
                   </td>
               </tr>
               <tr>
                   <td class="style44" align="center">
                       Consignee<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator5" runat="server" ControlToValidate="control8" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style45">
                       <asp:TextBox ID="control8" runat="server" Height="20px" Width="325px" placeholder="Consignee"> </asp:TextBox>
                   </td>
                   <td class="style46" align="center">
                       From<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator1" runat="server" ControlToValidate="control4" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style47">
                       <asp:TextBox ID="control4" runat="server" placeholder="From"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="style20" align="right">
                       TIN No.<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator6" runat="server" ControlToValidate="control9" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style21">
                       <asp:TextBox ID="control9" runat="server" Width="325px" Height="20px" placeholder="Consignee's TIN No."></asp:TextBox>
                       </td>
                   <td class="style22" align="center">
                       To<asp:RequiredFieldValidator 
                           ID="RequiredFieldValidator2" runat="server" ControlToValidate="control5" 
                           ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
                   </td>
                   <td align="left" class="style23">
                       <asp:TextBox ID="control5" runat="server" style="margin-left: 0px" placeholder="To"></asp:TextBox>      
               </td>
               </tr>
           </table>
  </div>


  <div style="border-bottom: thin solid #000000; width: 9in; height: 2.56in">
  
  
      <table style="width: 100%; height: 100%;">
          <tr>
              <td align="center" class="style25" bgcolor="#999999" 
                  style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                  No. of Pkgs</td>
              <td align="center" class="style32" bgcolor="#999999" 
                  style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                  Description of Goods<asp:RequiredFieldValidator 
                      ID="RequiredFieldValidator7" runat="server" ControlToValidate="control11" 
                      ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
              </td>
              <td align="center" class="style30" colspan="2" bgcolor="#999999" 
                  style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                  Details of Freight</td>
              <td align="center" class="style24" bgcolor="#999999" 
                  
                  style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000" 
                  width="128px">
                  Remarks</td>
          </tr>
          <tr>
              <td class="style26" rowspan="7" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control10" runat="server" Height="160px" Width="70px" placeholder="No. of Pkgs"></asp:TextBox>
              </td>
              <td class="style56" rowspan="7" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000;">
                  <asp:TextBox ID="control11" runat="server" Height="159px" Width="150px" placeholder="Description of Goods"></asp:TextBox>
              </td>
              <td class="style55" align="right">
                  Rate<asp:RequiredFieldValidator 
                      ID="RequiredFieldValidator8" runat="server" ControlToValidate="control12" 
                      ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
              </td>
              <td class="style54" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control12" runat="server" Width="200px" AutoPostBack="True">0</asp:TextBox>
              </td>
              <td class="style27" rowspan="4">
                  <asp:TextBox ID="control19" runat="server" Height="94px" Width="166px" placeholder="Remarks of goods"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style55" align="right">
                  Weight(quintal)<asp:RequiredFieldValidator 
                      ID="RequiredFieldValidator9" runat="server" ControlToValidate="control13" 
                      ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
              </td>
              <td class="style54" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control13" runat="server" Width="200px" AutoPostBack="True" 
                      ForeColor="#000000">0</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style55" align="right">
                  Freight</td>
              <td class="style54" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control14" runat="server" Width="200px" AutoPostBack="True" 
                      ReadOnly="True">0</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style55" align="right">
                  Service Tax</td>
              <td class="style54" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control15" runat="server" Width="200px" AutoPostBack="True" 
                      ReadOnly="True">0</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style38" align="right">
                  Total</td>
              <td class="style52" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control16" runat="server" Width="200px" AutoPostBack="True" 
                      ReadOnly="True">0</asp:TextBox>
              </td>
              <td rowspan="3" id="ServiceTaxPayble" align="left">
                  Service Tax Payble by <br />
                  <asp:RadioButton ID="RadioButton1" runat="server" Text="Consignor" groupname= "A" />
                  <br />
                  <asp:RadioButton ID="RadioButton2" runat="server" Text="Consignee" groupname= "A" />
                  <br />
                  <asp:RadioButton ID="RadioButton3" runat="server" Text="Transporter" groupname= "A" />
              </td>
          </tr>
          <tr>
              <td class="style57" align="right">
                  Advance<asp:RequiredFieldValidator 
                      ID="RequiredFieldValidator13" runat="server" ControlToValidate="control17" 
                      ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="valcontrol"></asp:RequiredFieldValidator>
              </td>
              <td class="style58" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control17" runat="server" Width="200px" AutoPostBack="True">0</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style48" align="right">
                  Grand
                  Total</td>
              <td class="style53" 
                  style="border-right-style: solid; border-right-width: thin; border-right-color: #000000">
                  <asp:TextBox ID="control18" runat="server" Width="200px" AutoPostBack="True" 
                      ReadOnly="True">0</asp:TextBox>
              </td>
          </tr>
      </table>
  
  
  </div>

  <div style="hieght:100%; height: 51px;">
  
      <table style="width: 100%; height: 100%;">
          <tr>
              <td align="left" class="style59" style="font-size: 12px">
                  Declaration by Consignor:<br />
                  We are full of in accepted the conditions of carriage given on the back side of 
                  the consignment reciept.<br />
                  Delivery 
                  at.........................................................................................................................,</td>
              
              <td align="right" style="font-size: 15px">
                  <br />
                  <br />
                  Of : New Kemri Golden Carrier</td>
          </tr>
      </table>
  <br />
  </div>




    </div>
        <asp:AccessDataSource ID="getTodayChallanTruckNumber" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT [Truck_no] FROM [challan] WHERE ([Date] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="control1" Name="Date" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="getTodayChallanDetails" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            
            SelectCommand="SELECT [From], [To], Rate, Weight, Advance FROM challan WHERE (Truck_no = ?) AND ([Date] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="control3" Name="Truck_no" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="control1" Name="Date" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="InsertBiltyData" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            
            
            InsertCommand="INSERT INTO Bilty([Date], G_R_no, Truck_no, [From], [To], Consignor, Consignor_TIN_no, Consignee, Consignee_TIN_no, No_pkgs, Desc_Goods, Rate, Weight, Freight, Service_Tax, Total, Advance, Grand_Total, Remarks, Servic_Tax_Payble_by) VALUES (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20)">
            <InsertParameters>
                <asp:ControlParameter ControlID="control1" Name="b1" PropertyName="Text" />
                <asp:ControlParameter ControlID="control2" Name="b2" PropertyName="Text" />
                <asp:ControlParameter ControlID="control3" Name="b3" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="control4" Name="b4" PropertyName="Text" />
                <asp:ControlParameter ControlID="control5" Name="b5" PropertyName="Text" />
                <asp:ControlParameter ControlID="control6" Name="b6" PropertyName="Text" />
                <asp:ControlParameter ControlID="control7" Name="b7" PropertyName="Text" />
                <asp:ControlParameter ControlID="control8" Name="b8" PropertyName="Text" />
                <asp:ControlParameter ControlID="control9" Name="b9" PropertyName="Text" />
                <asp:ControlParameter ControlID="control10" Name="b10" PropertyName="Text" />
                <asp:ControlParameter ControlID="control11" Name="b11" PropertyName="Text" />
                <asp:ControlParameter ControlID="control12" Name="b12" PropertyName="Text" />
                <asp:ControlParameter ControlID="control13" Name="b13" PropertyName="Text" />
                <asp:ControlParameter ControlID="control14" Name="b14" PropertyName="Text" />
                <asp:ControlParameter ControlID="control15" Name="b15" PropertyName="Text" />
                <asp:ControlParameter ControlID="control16" Name="b16" PropertyName="Text" />
                <asp:ControlParameter ControlID="control17" Name="b17" PropertyName="Text" />
                <asp:ControlParameter ControlID="control18" Name="b18" PropertyName="Text" />
                <asp:ControlParameter ControlID="control19" Name="b19" PropertyName="Text" />
                <asp:ControlParameter ControlID="control20" Name="b20" 
                    PropertyName="Value" />
            </InsertParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="getMaxGR" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT MAX(ID) AS Expr1 FROM Bilty"></asp:AccessDataSource>
        <asp:AccessDataSource ID="checking" runat="server" 
            DataFile="~/adminpanel/DataBase/DataBase.accdb" 
            SelectCommand="SELECT [Truck_no] FROM [Bilty] WHERE (([Date] = ?) AND ([Truck_no] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="control1" Name="Date" PropertyName="Text" 
                    Type="DateTime" />
                <asp:ControlParameter ControlID="control3" Name="Truck_no" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:HiddenField ID="control20" runat="server" />
        </br>

  <asp:Button ID= "Button1" runat="server" Text="Clear" Height="30px" Width="63px" 
            CausesValidation="False" UseSubmitBehavior="False"></asp:Button>&nbsp&nbsp
        <asp:Button  Height="30px" ID="PandS" runat="server" Text="Submit &amp; Print" />

        <div align="left">
            <asp:Button ID="goMainPage" runat="server" CausesValidation="False" 
                PostBackUrl="~/adminpanel/mainpage.aspx" Text="&lt;&lt;-" ToolTip="Go To Home" 
                UseSubmitBehavior="False" />
        </div>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="checking" EmptyDataText="none" Height="40px" 
            ForeColor="#FFCC99">
            <Columns>
                <asp:BoundField DataField="Truck_no" HeaderText="Truck_no" 
                    SortExpression="Truck_no" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="getTodayChallanDetails" ForeColor="#FFCC99" Height="16px" 
            Width="36px">
            <Columns>
                <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" 
                    SortExpression="Weight" />
                <asp:BoundField DataField="Advance" HeaderText="Advance" 
                    SortExpression="Advance" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" DataSourceID="getMaxGR" 
            ForeColor="#FFCC99">
        </asp:GridView>
</center>
 
    </form>
</body>
</html>
