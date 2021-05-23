<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To Civil Services Examination|</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pdf1 As String
    Dim pdf2 As String
    Dim pdf3 As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        pdf1 = "~/images/" & FileUpload1.FileName
        pdf2 = "~/images/" & FileUpload2.FileName
        pdf3 = "~/images/" & FileUpload3.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*)from table2 where recapp='" & D1.Text & "' and email='" & T8.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("registration already exist")
            T8.Text = ""
        Else
            sql = "insert into Table2 values ('" & T1.Text & "','" & D1.Text & "','" & T2.Text & "','" & T3.Text & "','" & t4.Text & "','" & D5.Text & "','" & D3.Text & "','" & D4.Text & "','" & t12.SelectedDate & "','" & T5.Text & "','" & d6.Text & "','" & D7.Text & "','" & T6.Text & "','" & T7.Text & "','" & T8.Text & "','" & T9.Text & "','" & T10.Text & "','" & T11.Text & "', '" & pdf1 & "','" & pdf2 & "','" & pdf3 & "','" & d8.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("registration has been saved")
            T1.Text = ""
            T2.Text = ""
            T3.Text = ""
            t4.Text = ""
            T5.Text = ""
            T6.Text = ""
            T7.Text = ""
            T8.Text = ""
            T9.Text = ""
            T10.Text = ""
            T11.Text = ""
        
        End If
    End Sub
   
   
    Protected Sub T1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        T1.Text = Format(Now, "dd/MM/yyyy")
        T1.Enabled = False
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:1245px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:1356px;
	height:103px;
	z-index:1;
}
.style1 {
	font-size: 30px;
	font-weight: bold;
	color: #154979;
}
.style2 {
	font-size: 24px;
	font-weight: bold;
}
#apDiv3 {
	position:absolute;
	width:100%;
	height:496px;
	z-index:2;
	left: 0px;
	top: 105px;
}
#apDiv4 {
	position:absolute;
	width:1355px;
	height:38px;
	z-index:1;
	background-color: #154979;
	top: -2px;
}
#apDiv5 {
	position:absolute;
	width:960px;
	height:412px;
	z-index:2;
	left: 1px;
	top: 37px;
}
#apDiv6 {
	position:absolute;
	width:30%;
	height:416px;
	z-index:3;
	left: 960px;
	top: 36px;
	background-color: #2b5277;
}
.style3 {
	color: #FFFFFF;
	font-size: 24px;
	font-weight: bold;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:39px;
	z-index:4;
	left: 0px;
	top: 451px;
	background-color: #353535;
}
.style4 {
	color: #f7f702;
	font-weight: bold;
}
#apDiv8 {
	position:absolute;
	width:100%;
	height:671px;
	z-index:3;
	left: 0px;
	top: 604px;
}
.style9 {color: #2B5277; font-size: 14; }
.style11 {
	color: #2B5277;
	font-weight: bold;
}
    .style12
    {
        height: 31px;
    }
    .style13
    {
        height: 26px;
    }
.style15 {
	height: 31px;
	color: #2B5277;
	font-weight: bold;
}
.style16 {
	color: #2B5290;
	font-weight: bold;
}
    .style17
    {
        height: 52px;
    }
#apDiv9 {
	position:absolute;
	width:100%;
	height:37px;
	z-index:5;
	background-color: #2B5277;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: underline;
	color: #FFFFFF;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <td width="5%" rowspan="2"><img src="../images/logo.jpg" width="64" height="92" /></td>
        <td width="83%" height="49"><span class="style2"><span class="style1">Civil Services Examinations</span></span> </td>
        <td width="12%"><img src="../images/logo (1).png" width="156" height="65" /></td>
      </tr>
      <tr>
        <td colspan="2"><span class="style2">संघ लोक सेवा आयोग</span></td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <div id="apDiv5">
      <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','960','height','412','src','../animation/Movie2','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../animation/Movie2' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="960" height="412">
        <param name="movie" value="../animation/Movie2.swf" />
        <param name="quality" value="high" />
        <embed src="../animation/Movie2.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="960" height="412"></embed>
      </object>
    </noscript></div>
    <div id="apDiv6">
      <table width="100%" border="0">
        <tr>
          <td><div align="center"><span class="style3">What’s New</span></div></td>
        </tr>
        <tr>
          <td><hr /></td>
        </tr>
        <tr>
          <td><marquee direction="up"height="374px"width="336px"scrollamount="3">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource3" ForeColor="White" GridLines="None" 
                  Width="100%">
                  <Columns>
                      <asp:BoundField DataField="nexam" SortExpression="nexam" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [nexam] FROM [news]"></asp:SqlDataSource></marquee>
          </td>
        </tr>
      </table>
    </div>
    <div id="apDiv7">
      <table width="100%" border="0">
        <tr>
          <td width="4%"><img src="../images/alert.png" width="35" height="35" /></td>
          <td width="96%"><span class="style4"> <marquee direction="left">Civil Services (Preliminary) Examination, 2020: Last date for Online submission of application is 03.03.2020, 6.00 PM    </marquee>    </span></td>
        </tr>
      </table>
    </div>
    <div id="apDiv9">
      <table width="100%" border="0">
        <tr>
          <td><asp:Menu ID="Menu1" runat="server" BackColor="#2B5277" 
                      DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" 
                      ForeColor="White" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                      Font-Bold="True">
              <DynamicHoverStyle BackColor="#2B5277" ForeColor="White" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
                  BackColor="#2B5277" />
              <DynamicMenuStyle BackColor="#2B5277" />
              <DynamicSelectedStyle BackColor="#2B5277" ForeColor="Black" />
              <Items>
                <asp:MenuItem Text="Home" Value="Home" ImageUrl="~/images/homelogo.png" 
                      NavigateUrl="~/source/index.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About" Value="About" ImageUrl="~/images/aboutlogo.png">
                  <asp:MenuItem Text="About" Value="About" NavigateUrl="~/source/about.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="RTI" Value="RTI" NavigateUrl="~/source/RTI.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Examination" Value="Examination" 
                      ImageUrl="~/images/exlogo.png">
                  <asp:MenuItem Text="Calender" Value="Calender" 
                        NavigateUrl="~/source/upcomexam.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Previous Question Paper" Value="Previous Question Paper" 
                        NavigateUrl="~/source/preqp.aspx"> </asp:MenuItem>
                  <asp:MenuItem Text="Cutt Off Marks" Value="Cutt Off Marks" 
                        NavigateUrl="~/source/examcuttmarks.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Syllabus" Value="Syllabus" 
                        NavigateUrl="~/source/examsyllabus.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Post Detail" Value="Post Detail" 
                        NavigateUrl="~/source/exampost.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Examination Center" Value="Examination Center" 
                        NavigateUrl="~/source/examcenter.aspx"> </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Recuritment" Value="Recuritment" 
                      ImageUrl="~/images/recuritmentlogo.png">
                  <asp:MenuItem Text="Apply Online" Value="Apply Online" 
                        NavigateUrl="~/source/apllyonline.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Admit Card" Value="Admit Card" 
                        NavigateUrl="~/source/eadmitcard.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Written Result" Value="Written Result" 
                        NavigateUrl="~/source/Writtenresult.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Interview Result" Value="Interview Result" 
                        NavigateUrl="~/source/Interview.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Forms &amp; Download" Value="Forms &amp; Download" 
                      NavigateUrl="~/source/downloadforms.aspx" 
                      ImageUrl="~/images/downloadlogo.png"> </asp:MenuItem>
                <asp:MenuItem Text="FAQ" Value="FAQ" NavigateUrl="~/source/faq.aspx" 
                      ImageUrl="~/images/faqlogo.png"></asp:MenuItem>
                <asp:MenuItem Text="Admin Login" Value="Admin Login" 
                      NavigateUrl="~/source/adminlogin.aspx" ImageUrl="~/images/adminlogo.png"></asp:MenuItem>
              </Items>
              <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
              <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
                          BackColor="#2B5277" />
              <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
          </td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv8">
    <table width="100%" border="0">
      <tr>
        <td colspan="10"><h2>पंजीकरण / REGISTRATION (All Fields are Mandatory)</h2></td>
      </tr>
      <tr>
        <td class="style13"><span class="style11">Current Date</span></td>
        <td width="15%" class="style13">
          <asp:TextBox ID="T1" runat="server" Width="233px" ontextchanged="T1_TextChanged"></asp:TextBox>          </td>
        <td width="17%" class="style13" colspan="2"><span class="style11">Recuritment Application For</span></td>
        <td colspan="5" class="style13">
            <asp:DropDownList ID="D1" runat="server" Height="16px" 
                DataSourceID="SqlDataSource1" DataTextField="examname" 
                DataValueField="examname">
                <asp:ListItem Value="Select Any One"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>          </td>
        <td class="style13"></td>
      </tr>
      <tr>
        <td width="27%"><table width="100%">
          <tbody>
            <tr>
              <td width="30%" class="style9"><strong>नाम / Name</strong></td>
            </tr>
          </tbody>
        </table>        </td>
        <td colspan="2">
            <asp:TextBox ID="T2" runat="server" Width="238px"></asp:TextBox>          </td>
        <td colspan="2" class="style11">
            Post</td>
        <td colspan="2">
            <asp:DropDownList ID="d8" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="postname" DataValueField="postname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [postname] FROM [post] WHERE ([examname] = @examname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D1" Name="examname" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </td>
        <td colspan="2">&nbsp;
            </td>
        <td width="0%">&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>पिता का नाम / Father's Name</strong></span></td>
        <td>
            <asp:TextBox ID="T3" runat="server" Width="238px"></asp:TextBox>          </td>
        <td colspan="2"><span class="style16">माता का नाम / Mother's Name</span></td>
        <td width="12%" colspan="2"><span class="style12">
          <asp:TextBox ID="t4" runat="server" Width="238px"></asp:TextBox>
        </span></td>
        <td width="8%" class="style11" colspan="2">लिंग / Gender</td>
        <td width="21%"><asp:DropDownList ID="D5" runat="server" AutoPostBack="True">
          <asp:ListItem Value="Select Any One"></asp:ListItem>
          <asp:ListItem Value="Male"></asp:ListItem>
          <asp:ListItem Value="Female"></asp:ListItem>
          <asp:ListItem></asp:ListItem>
          <asp:ListItem></asp:ListItem>
          <asp:ListItem></asp:ListItem>
        </asp:DropDownList></td>
        <td>&nbsp;</td>
      </tr>
      
      <tr>
        <td><span class="style9"><strong>समुदाय / Community</strong></span></td>
        <td colspan="8"><asp:DropDownList ID="D3" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Select Any One"></asp:ListItem>
            <asp:ListItem Value="GEN"></asp:ListItem>
            <asp:ListItem Value="OBC"></asp:ListItem>
            <asp:ListItem Value="SC"></asp:ListItem>
            <asp:ListItem>ST</asp:ListItem>
            <asp:ListItem Value="EWS"></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
          </asp:DropDownList>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>क्या आप दिव्यांग हैं ? / Are You Physically Challenged ?</strong></span></td>
        <td colspan="8"><asp:DropDownList ID="D4" runat="server" AutoPostBack="True">
            <asp:ListItem>Select Any One</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem></asp:ListItem>
          </asp:DropDownList>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>जन्मतिथि / Date Of Birth</strong></span></td>
        <td colspan="8"><asp:Calendar ID="t12" runat="server" Height="167px" Width="221px"></asp:Calendar>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>जन्मस्थान / Place Of Birthh</strong></span></td>
        <td colspan="8"><asp:TextBox ID="T5" runat="server" Width="226px"></asp:TextBox>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>राज्य का नाम जहां आप का जन्म हुआ था</strong><br />
              <strong>Name of the State where You were born</strong></span></td>
        <td colspan="8">
            <asp:DropDownList ID="d6" runat="server" Width="124px">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem Value="HP">Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhatisgarh</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujrat</asp:ListItem>
                <asp:ListItem Value="Haryana"></asp:ListItem>
                <asp:ListItem Value="HP"></asp:ListItem>
                <asp:ListItem Value="Jharkhand"></asp:ListItem>
                <asp:ListItem Value="Kerala"></asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Ngaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem Value="Tamil Nadu"></asp:ListItem>
                <asp:ListItem>Uttarakhand</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>          </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style12"><span class="style9"><strong>राष्ट्रीयता / Nationality</strong></span></td>
        <td colspan="8" class="style12">
            <asp:DropDownList ID="D7" runat="server" 
                Height="16px" Width="142px">
            <asp:ListItem>Select Any One</asp:ListItem>
            <asp:ListItem Value="Citizen of INDIA"></asp:ListItem>
            <asp:ListItem>A Person of India Origin Who has migrated from Uganda with the intension of permanently</asp:ListItem>
            <asp:ListItem Value="A Person of India Origin Who has migrated from the Unites public of Republic of Tanzia">A Person of India Origin Who has migrated</asp:ListItem>
            <asp:ListItem Value="A Person of India Origin Who has migrated fom Zambia with the intension of permanently setting in India"></asp:ListItem>
            <asp:ListItem Value="A Person of India Origin Who has migrated fom Zaire with the intension of permanently setting in India"></asp:ListItem>
            <asp:ListItem Value="A Person of India Origin Who has migrated fom Ethoipio with the intension of permanently setting in India"></asp:ListItem>
            <asp:ListItem Value="Subject of Bhutan"></asp:ListItem>
            <asp:ListItem Value="Subject of Nepal"></asp:ListItem>
            <asp:ListItem></asp:ListItem>
          </asp:DropDownList>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>मोबाइल नंबर / Mobile Number</strong></span></td>
        <td colspan="8"><asp:TextBox ID="T6" runat="server" Width="188px"></asp:TextBox>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style17"><span class="style9"><strong>मोबाइल नंबर की पुष्टि करें/ Confirm Mobile Number</strong></span></td>
        <td colspan="8" class="style17"><asp:TextBox ID="T7" runat="server" Width="196px" 
                Height="22px"></asp:TextBox>        </td>
        <td class="style17"></td>
      </tr>
      <tr>
        <td><span class="style9"><strong>ई-मेल का पता / E-mail Address</strong></span></td>
        <td colspan="8"><asp:TextBox ID="T8" runat="server" Width="276px"></asp:TextBox>        </td>
        <td class="style12"></td>
      </tr>
      <tr>
        <td><span class="style9"><strong>ईमेल पते की पुष्टि करें / Confirm E-mail Address</strong></span></td>
        <td colspan="8"><asp:TextBox ID="T9" runat="server" Width="269px"></asp:TextBox>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><span class="style9"><strong>इच्छीत पासवर्ड / Desired Password</strong></span></td>
        <td colspan="8"><asp:TextBox ID="T10" runat="server" Width="267px"></asp:TextBox>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style12"><span class="style9"><strong>पासवर्ड की पुष्टि करें / Confirm Password</strong></span></td>
        <td colspan="8" class="style12"><asp:TextBox ID="T11" runat="server" Width="268px"></asp:TextBox>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td background="#2B5277" bgcolor="#FFFFFF"><span class="style11">Proof of Adhar Card</span></td>
        <td colspan="8">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />          </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td background="#2B5277" bgcolor="#FFFFFF"><span class="style11">Proof of Signature</span></td>
        <td colspan="8">
            <asp:FileUpload ID="FileUpload2" runat="server" Width="218px" />          </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td background="#2B5277" bgcolor="#FFFFFF" class="style15">Proof of Photograph</td>
        <td colspan="8" class="style12">
            <asp:FileUpload ID="FileUpload3" runat="server" Width="223px" />          </td>
        <td class="style12"></td>
      </tr>
      <tr>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="63px" BackColor="#2B5277" Font-Bold="True" 
                ForeColor="White" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 30px" Text="Reset" 
                Width="83px" BackColor="#2B5277" Font-Bold="True" ForeColor="White" />          </td>
        <td colspan="8">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
