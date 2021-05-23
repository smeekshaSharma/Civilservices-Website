<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To Civil Services Examination|</title>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:968px;
	z-index:1;
	left: 2px;
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
	height:502px;
	z-index:2;
	left: 0px;
	top: 105px;
}
#apDiv4 {
	position:absolute;
	width:100%;
	height:38px;
	z-index:1;
	background-color: #154979;
	top: -2px;
}
#apDiv5 {
	position:absolute;
	width:73%;
	height:412px;
	z-index:2;
	left: 0px;
	top: 37px;
}
#apDiv6 {
	position:absolute;
	width:26%;
	height:416px;
	z-index:3;
	left: 964px;
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
	height:37px;
	z-index:5;
	background-color: #2B5277;
}
a:link {
	color: #FFFFFF;
	font-weight: bold;
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
#apDiv9 {
	position:absolute;
	width:100%;
	height:115px;
	z-index:2;
	left: 26px;
	top: 674px;
}
#apDiv10 {
	position:absolute;
	width:591px;
	height:255px;
	z-index:3;
	left: 698px;
	top: 609px;
}
.style7 {
	color: #F7F702;
	font-weight: bold;
	font-size: 18px;
}
#apDiv11 {
	position:absolute;
	width:79px;
	height:24px;
	z-index:2;
	top: 221px;
	left: 505px;
}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
.style9 {
	color: #FFFFFF;
	font-weight: bold;
}
#apDiv12 {
	position:absolute;
	width:666px;
	height:306px;
	z-index:4;
	left: 16px;
	top: 610px;
}
.style10 {
	color: #F7F717;
	font-weight: bold;
	font-size: 18px;
}
#apDiv13 {
	position:absolute;
	width:100%;
	height:24px;
	z-index:5;
	left: 0;
	top: 936px;
}
.style12 {color: #2B5277; font-weight: bold; }
.style13 {color: #000000}
.style14 {color: #2B5277}
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
                  DataSourceID="SqlDataSource2" Width="100%" ForeColor="White" 
                  GridLines="None">
            <Columns>
            <asp:BoundField DataField="nexam" SortExpression="nexam" />
            </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [nexam] FROM [news]"></asp:SqlDataSource>
          </marquee></td>
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
    <div id="apDiv8">
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
  <div id="apDiv10">
    <table width="100%" height="177" border="0">
      <tr>
        <td colspan="2" bgcolor="#000000"><span class="style7">Our Services-:</span></td>
        </tr>
      <tr>
        <td width="49%"><div align="center"><img src="../images/faqlogo.png" width="40" height="25" /></div></td>
        <td width="51%"><div align="center"><img src="../images/postnew.jpg" width="50" height="33" /></div></td>
      </tr>
      <tr>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="faq.aspx">FAQ</a></div></td>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="post.aspx">Post Detail</a></div></td>
      </tr>
      <tr>
        <td><div class="style8" id="apDiv11">More....</div>
          <div align="center"><img src="../images/prev.jpg" width="25" height="25" /></div></td>
        <td><div align="center"><img src="../images/rtinew.jpg" width="44" height="35" /></div></td>
      </tr>
      <tr>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="preqp.aspx">Previous Question Papers</a></div></td>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="RTI.aspx">RTI</a></div></td>
      </tr>
      <tr>
        <td><div align="center"><img src="../images/recuritmentlogo.png" width="25" height="25" /></div></td>
        <td><div align="center"><img src="../images/internew.jpg" width="41" height="38" /></div></td>
      </tr>
      <tr>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="Adminreg.aspx">Recruitments</a></div></td>
        <td bgcolor="#2B5277"><div align="center" class="style9"><a href="Interview.aspx">Interview Result</a></div></td>
      </tr>
    </table>
  </div>
  <div id="apDiv12">
    <table width="100%" border="0">
      <tr>
        <td bgcolor="#000000"><span class="style10">WELCOME TO OUR WEBSITE </span></td>
      </tr>
      <tr>
        <td><hr /></td>
      </tr>
      <tr>
        <td><div align="center"><img src="../images/wl.jpg" width="100" height="100" /></div></td>
      </tr>
      <tr>
        <td height="46" bgcolor="#FFFFFF"><div align="justify"><span class="style12">Historical Perspective :-</span>Civil Servants for the East India Company used to be nominated by the Directors  of the Company and thereafter trained at Haileybury College in London and then sent to  India.</div></td>
      </tr>
      <tr>
        <td height="49"><div align="justify"><span class="style12">Constitutional Provisions:-</span><span class="style14"><span class="style13">Subject to the provisions of this article, there shall be a Public Service Commission for the Union and a Public Service Commission for each State.</span></span></div></td>
      </tr>
      <tr>
        <td height="49"><span class="style12">Function:</span><span class="style14">-<span class="style13">Under Article 320 of the Constitution of India, the Commission is, inter-alia, required to be consulted on all matters relating to recruitment to civil services and posts</span></span></td>
      </tr>
    </table>
  </div>
  <div id="apDiv13">
    <table width="100%" border="0">
      <tr>
        <td width="51%"><strong>This website is developed by Muskan Sharma </strong> </td>
        <td width="49%"><strong>All Rights Reserved</strong></td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
