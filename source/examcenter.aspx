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
   
    Protected Sub d1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        d2.Items.Clear()
        If d1.Text = "Andhra Pradesh" Then
            d2.Items.Add("Dadam")
            d2.Items.Add("Thinsa")
            d2.Items.Add("sola")
            d2.Items.Add("khela")
            d2.Items.Add("ranglum")
        ElseIf d1.Text = "Arunacha Pradesh" Then
            d2.Items.Add("Hawai")
            d2.Items.Add("Jairampur")
            d2.Items.Add("tawang")
            d2.Items.Add("Changlang")
            d2.Items.Add("Pasighat")
        ElseIf d1.Text = "Assam" Then
            d2.Items.Add("Patna")
            d2.Items.Add("Gaya")
            d2.Items.Add("Haflong")
            d2.Items.Add("Dergaon")
            d2.Items.Add("lakhipur")
        ElseIf d1.Text = "Bihar" Then
            d2.Items.Add("Patna")
            d2.Items.Add("gaya")
            d2.Items.Add("Ara")
            d2.Items.Add("Chapra")
            d2.Items.Add("Hajipur")
        ElseIf d1.Text = "Chattisgarh" Then
            d2.Items.Add("Jashpur")
            d2.Items.Add("Durg")
            d2.Items.Add("Koriya")
            d2.Items.Add("Raysis")
            d2.Items.Add("Bilaspur")
        ElseIf d1.Text = "Goa" Then
            d2.Items.Add("Gama")
            d2.Items.Add("Curchorem")
            d2.Items.Add("Ponda")
            d2.Items.Add("Mormugao,")
            d2.Items.Add("Valpoi")
        ElseIf d1.Text = "Gujrat" Then
            d2.Items.Add("Morvi")
            d2.Items.Add("Anand")
            d2.Items.Add("Surat")
            d2.Items.Add("Jamnanagar")
            d2.Items.Add("Rajkot")
        ElseIf d1.Text = "Harayana" Then
            d2.Items.Add("Hisar")
            d2.Items.Add("Rohtak")
            d2.Items.Add("Ambala")
            d2.Items.Add("Jind")
            d2.Items.Add("Kosli")
            
        ElseIf d1.Text = "Himachal Pradesh" Then
            d2.Items.Add("badsar")
            d2.Items.Add("Una")
            d2.Items.Add("Kullu Manali")
            d2.Items.Add("Rohtang Pass")
            d2.Items.Add("Kufri")
        ElseIf d1.Text = "Jarkhand" Then
            d2.Items.Add("Ranchi")
            d2.Items.Add("Deoghar")
            d2.Items.Add("Phusro")
            d2.Items.Add("Palamu")
            d2.Items.Add("Dhanbad")
        ElseIf d1.Text = "karnatka" Then
            d2.Items.Add("Bidar")
            d2.Items.Add("Hassan")
            d2.Items.Add("Mandya")
            d2.Items.Add("Kolara")
            d2.Items.Add("Haveri")
        ElseIf d1.Text = "kerala" Then
            d2.Items.Add("Kochi")
            d2.Items.Add("Alleppey")
            d2.Items.Add("Munnar")
            d2.Items.Add("Kovalam")
            d2.Items.Add("ldukki")
        ElseIf d1.Text = "Madhya Pradesh" Then
            d2.Items.Add("Bhopal")
            d2.Items.Add("Kanha")
            d2.Items.Add("Baihar")
            d2.Items.Add("Gwaliaor")
            d2.Items.Add("Ujjain")
        ElseIf d1.Text = "Maharashtra" Then
            d2.Items.Add("Pune")
            d2.Items.Add("Shirdi")
            d2.Items.Add("Mumabi")
            d2.Items.Add("Nagpur")
            d2.Items.Add("Aurangabad")
        ElseIf d1.Text = "Manipur" Then
            d2.Items.Add("Senapati")
            d2.Items.Add("Kumbi")
            d2.Items.Add("Lamlai")
            d2.Items.Add("Lilong")
            d2.Items.Add("Chandel")
        ElseIf d1.Text = "Meghalaya" Then
            d2.Items.Add("Shilong")
            d2.Items.Add("Jowai")
            d2.Items.Add("Dawki")
            d2.Items.Add("Jorabat")
            d2.Items.Add("Baghmara")
        ElseIf d1.Text = "Nagaland" Then
            d2.Items.Add("Dimapur")
            d2.Items.Add("Kohima")
            d2.Items.Add("Mon")
            d2.Items.Add("Peren")
            d2.Items.Add("Phek")
            
        ElseIf d1.Text = "Odhisha" Then
            d2.Items.Add("Bisahupur")
            d2.Items.Add("Chandel")
            d2.Items.Add("Lilong")
            d2.Items.Add("Lamlai")
            d2.Items.Add("Senapati")
        ElseIf d1.Text = "Punjab" Then
            d2.Items.Add("Amritsar")
            d2.Items.Add("Ludhiana")
            d2.Items.Add("Patiala")
            d2.Items.Add("Jlandhar")
            d2.Items.Add("Batala")
        ElseIf d1.Text = "Rajasthan" Then
            d2.Items.Add("Jaipur")
            d2.Items.Add("Jodpur")
            d2.Items.Add("Vadipur")
            d2.Items.Add("Bharatpur")
            d2.Items.Add("Ajmer")
             

        ElseIf d1.Text = "Sikkim" Then
            d2.Items.Add("Gangtok")
            d2.Items.Add("Pelling")
            d2.Items.Add("Lachess")
            d2.Items.Add("Ravanger")
            d2.Items.Add("Lachisng")
            



        ElseIf d1.Text = "Tamil Nadu" Then
            d2.Items.Add("Chennai")
            d2.Items.Add("Vellore")
            d2.Items.Add("Salem")
            d2.Items.Add("Madurai")
            d2.Items.Add("Tirupper")
            
        ElseIf d1.Text = "Uttarakhand" Then
            d2.Items.Add("Dehradun")
            d2.Items.Add("Haridwar")
            d2.Items.Add("Alorme")
            d2.Items.Add("Srinagar")
            d2.Items.Add("Mussori")
        ElseIf d1.Text = "Uttar Pradesh" Then
            d2.Items.Add("Lucknow")
            d2.Items.Add("Kanpur")
            d2.Items.Add("Meerut")
            d2.Items.Add("Varanasi")
            d2.Items.Add("Noida")
            
        ElseIf d1.Text = "West Bengal" Then
            d2.Items.Add("Kolkata")
            d2.Items.Add("Asansad")
            d2.Items.Add("Durgapur")
            d2.Items.Add("Hakra")
            d2.Items.Add("Shantipur")
        End If
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
    .style5
    {
        color: #2B5277;
        font-weight: 700;
        font-size: x-large;
        background-color: #FFFFFF;
    }
    .style6
    {
        height: 30px;
    }
#apDiv9 {
	position:absolute;
	width:100%;
	height:37px;
	z-index:5;
	background-color: #2B5277;
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
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource2" ForeColor="White" GridLines="None" Width="112px">
                  <Columns>
                      <asp:BoundField DataField="examname" SortExpression="examname" />
                  </Columns>
              </asp:GridView></marquee>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
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
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style5">&nbsp;&nbsp;&nbsp; Exam Center Detail</span><br />
            &nbsp;</td>
      </tr>
      <tr>
        <td><hr /></td>
      </tr>
      <tr>
        <td>State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="d1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="d1_SelectedIndexChanged">
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
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td class="style6">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="d2" runat="server" AutoPostBack="True">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td class="style6">Exam Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D3" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource3" DataTextField="examname" 
                DataValueField="examname">
                <asp:ListItem Value="Select Any One"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" 
                
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="ename" HeaderText="Examination Name" 
                        SortExpression="ename" />
                    <asp:BoundField DataField="cc" HeaderText="cc" SortExpression="cc" />
                    <asp:BoundField DataField="aoe" HeaderText="aoe" SortExpression="aoe" />
                    <asp:BoundField DataField="et" HeaderText="et" SortExpression="et" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [state], [city], [ename], [cc], [aoe], [et] FROM [examcenter] WHERE (([city] = @city) AND ([ename] = @ename))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="d2" Name="city" PropertyName="SelectedValue" 
                        Type="String" />
                    <asp:ControlParameter ControlID="D3" Name="ename" PropertyName="SelectedValue" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
