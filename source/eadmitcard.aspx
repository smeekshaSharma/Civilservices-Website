<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To Civil Services Examination</title>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("downloadcard.aspx")
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:1626px;
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
	height:497px;
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
	height:352px;
	z-index:3;
	left: 0px;
	top: 604px;
}
.style5 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18px;
}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
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
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource1" ForeColor="White" GridLines="None" Width="100%">
                  <Columns>
                      <asp:BoundField DataField="nexam" SortExpression="nexam" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
        <td><h1 align="center">E-ADMIT CARD</h1></td>
      </tr>
      <tr>
        <td height="23" bgcolor="#2B5277"><table border="0" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tbody>
            <tr>
              <td width="40%" height="21" align="center"><span class="style5">महत्वपूर्ण अनुदेश</span></td>
            </tr>
          </tbody>
        </table>
          <div align="center"></div></td>
      </tr>
      <tr>
        <td><table border="0" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tbody>
            <tr>
              <td align="left">1. ई-प्रवेश पत्र की सावधानीपूर्वक जांच करें तथा विसंगतियां, यदि कोई हों, तत्काल संघ लोक सेवा आयोग के ध्यान में लाएं।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">2. संघ लोक सेवा आयोग के साथ अपने सभी पत्र व्यवहार में अपना नाम, अनुक्रमांक, रजिस्ट्रेशन आईडी तथा परीक्षा के नाम और वर्ष का उल्लेख करें ।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>3. प्रत्येक सत्र में परीक्षा भवन में प्रवेश सुनिश्चित करने के लिए फोटो पहचान पत्र (मूल) के साथ ई-प्रवेश पत्र (प्रति) अवश्य लाएं। केन्द्रीय औद्योगिक सुरक्षा बल सहायक कमांडेंट (कार्यकारी) सीमित विभागीय प्रतियोगी परीक्षा, 2020 के अंतिम परिणामों की घोषणा होने तक ई-प्रवेश पत्र को अवश्य सुरक्षित रखें।</strong></td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">4. ई-प्रवेश पत्र की सुरक्षा की जिम्मेदारी आपकी है और यदि कोई अन्य व्यक्ति इस ई-प्रवेश पत्र का प्रयोग करता है, तब यह प्रमाणित करने का दायित्व आपका है कि आपने किसी प्रतिरूपधारक की सेवा नहीं ली है।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">5. उम्मीदवार नोट करें कि ओ एम आर उत्तर पत्रक में, विशेषकर अनुक्रमांक और परीक्षण पुस्तिका की सीरीज़ कोड के संबंध में विवरण कूटबद्ध करते समय हुई किसी प्रकार की चूक/ भूल/ विसंगति के मामले में उत्तर पत्रक अस्वीकृत कर दिया जाएगा।</td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">6. कृपया नोट करें कि परीक्षा के प्रारंभ होने के 10 मिनट पहले परीक्षा स्थल पर प्रवेश बंद कर दिया जाएगा अर्थात पूर्वाह्न सत्र में प्रात: 09:20 बजे तथा अपराह्न सत्र में अपराह्न 01:50 बजे। प्रवेश बंद होने के पश्चात परीक्षा स्थल पर किसी भी उम्मीदवार को अंदर जाने की अनुमति नहीं दी जाएगी।</td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">7. उम्मीदवारों को सलाह दी जाती है कि वे फ्रिस्किंग के लिए समय रहते परीक्षा स्थल पर पहुंचें।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">8. उम्मीदवारों को यह ध्यान रखना चाहिए कि उन्हें उनके ई-प्रवेश पत्र में उल्लिखित परीक्षा स्थल के अलावा किसी अन्य परीक्षा स्थल पर परीक्षा में बैठने की अनुमति नहीं दी जाएगी।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">9. परीक्षा नोटिस में उपलब्ध “परीक्षा की नियमावली” के अंतर्गत “परीक्षा में प्रवेश दिए गए उम्मीदवारों के लिए विशेष अनुदेश” और परीक्षा भवन के बाहर प्रदर्शित “पोस्टर” जिसमें अनुदेशों का उल्लेख किया गया है, को पढ़ें।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">10. परीक्षा के लिए आपकी उम्मीदवारी अनंतिम है।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">11. उम्मीदवार यह नोट कर लें कि परीक्षा के दौरान उनके पास कोई मोबाइल फोन (स्वि‍च ऑफ मोड में भी नहीं), पेजर या कोई इलेक्ट्रॉनिक उपकरण या प्रोग्रामेबल उपकरण या स्टोरेज मीडिया जैसे पेन ड्राइव, स्मा‍र्ट घड़ी आदि या कोई कैमरा या ब्लूटूथ उपकरण या कोई अन्य‍ उपकरण या संबंधित एक्सेसरी चालू या स्विच ऑफ मोड में नहीं होना चाहिए जिसका इस्तेमाल संचार उपकरण के रूप में किया जा सके। इन अनुदेशों का उल्लंघन किए जाने पर अनुशासनिक कार्रवाई की जाएगी और भावी परीक्षाओं से विवर्जित कर दिया जाएगा।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>12. उम्मीदवारों द्वारा परीक्षा कक्ष/भवन के भीतर साधारण अथवा सामान्य कलाई घड़ी ले जाने की अनुमति होगी। तथापि, किसी विशेष सहायक उपकरण से युक्त घड़ियां, जिन्हें संचार उपकरण के तौर पर प्रयोग किया जा सके अथवा स्मार्ट घड़ियों का प्रयोग पूर्णतया वर्जित है और उम्मीदवारों को इस प्रकार की घड़ियां परीक्षा कक्ष/भवन में ले जाने की अनुमति नहीं है।</strong></td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">13. काले बॉल प्वाइंट पेन के अलावा किसी अन्य पेन से अंकित किए गए उत्तरों का मूल्यांकन नहीं किया जाएगा ।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">14. उम्मीदवारों को सलाह दी जाती है कि वे कीमती/ मूल्यवान सामान और बैग परीक्षा भवन में न लाएं, क्योंकि उनकी सुरक्षा सुनिश्चित नहीं की जा सकती। इस संबंध में हुए नुकसान के लिए आयोग जिम्मेवार नहीं होगा ।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">15. जिन उम्मीदवारों की फोटो ई-प्रवेश पत्र पर स्पष्ट नहीं है, उन्हें सलाह दी जाती है कि वे परीक्षा में प्रवेश के लिए अपने साथ पासपोर्ट आकार के दो फोटोग्राफ, प्रत्येक सत्र के लिए एक, और परिवचन सहित फोटो पहचान का प्रमाण लाएं ।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">16. उम्मीदवार यह नोट कर लें कि वस्तुनिष्ठ प्रकार के पेपर (पेपर-।) के ओएमआर पत्रक की सभी प्रविष्टियां और पेपर-। व पेपर-।। हेतु स्कैनेबल उपस्थिति सूची (एसएएल) की प्रविष्टियां <u>काले बॉल प्वाइंट पेन </u>से ही की जानी हैं।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">17. प्रश्न पत्र-।। में, निबंध लेखन का माध्यम वही होगा जिसका चयन उम्मीदवार दवारा आवेदन पत्र में किया हो और आयोग दवारा जिसकी अनुमति प्रदान की हो।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">18. सार लेखन तथा कांप्रीहेंशन संबंधी भाग का माध्यम केवल अंग्रेजी होगा।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">19. उम्मीदवारों को सलाह दी जाती है कि वे कम-से-कम एक दिन पहले परीक्षा स्थल पर जाएं तथा अंतिम समय की हड़बड़ी से बचने के लिए अपने हित में, अपने आपको मार्ग से अवगत करा लें।</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>20. उम्मीदवार वर्दी पहन कर ही परीक्षा दें और अपना पहचान-पत्र अपने साथ अवश्य लाएं।</strong></td>
            </tr>
          </tbody>
        </table>        </td>
      </tr>
      <tr>
        <td><hr /></td>
      </tr>
      <tr>
        <td bgcolor="#2B5277"><span class="style6">Important Instructions</span></td>
      </tr>
      <tr>
        <td><table border="0" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tbody>
            <tr>
              <td align="left">1. Check the e Admit Card carefully and bring discrepancies, if any, to the notice of the UPSC immediately.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">2. Mention your Name, Roll Number, Registration ID and Name &amp; Year of the Examination in all the correspondence with the UPSC.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>3. Bring this e Admit Card (print out) along with the (original) Photo Identity Card, in each session to secure admission to Examination Hall. E Admit Card must be preserved till the declaration of the final results of the Central Industrial Security Force AC (Exe) LDC Exam, 2020.</strong></td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">4. You are responsible for safe custody of the e Admit Card and in the event of any other person using this e Admit Card, the onus lies on you to prove that you have not used the service of any impersonator.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">5. Candidates should note that any omission/ mistake/ discrepancy in encoding / filling in details in the OMR answer sheet, especially with regard to Roll Number and Test Booklet Series Code, will render the answer sheet liable for rejection.</td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">6. Please note that entry into the Examination Venue shall be closed 10 minutes before the schedule commencement of the Examination i.e. 09:20 AM for the Forenoon Session and 01.50 PM for the Afternoon Session. No candidate shall be allowed the entry into the Examination Venue after closure of the entry.</td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td align="left">7. Candidates are advised to enter the Examination Venue well in time for frisking.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">8. Candidates should note that they shall not be allowed to appear at any other Examination Venue except the Examination Venue mentioned in the e Admit Card.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">9. Read the ‘Special Instructions for candidates admitted to the Examination’ given in the ‘Rules for the Examination’ available in Examination Notice and the ‘Poster’ containing instructions displayed outside the Examination Venue.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">10. Your candidature to the Examination is provisional.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">11. Candidate should not be in possession of or using any mobile phone (even in switched off mode), pager or any electronic equipment or programmable device or storage media like pen drive, smart watches, etc., or camera or Bluetooth devices or any other equipment or related accessories either in working or switched off mode capable of being used as a communication device during the examination. Any infringement of these instructions shall entail disciplinary action including ban from future Examinations.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>12. Use of normal or simple wrist watches by candidates is allowed inside the Examination Rooms/ Halls. However, use of watches fitted with any special accessory that might be used as communication device or smart watches is strictly prohibited and candidates are not allowed to take such watches into the Examination Rooms/ Halls.</strong></td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">13. Answers other than those made by Black Ball Point Pen will not be evaluated.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">14. Candidates are advised not to bring any valuables/ costly items and bags to the Examination Venue, as safe keeping of the same cannot be assured. The Commission will not be responsible for any loss in this regard.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">15. Candidates who do not have clear photographs on the e-Admit Card will have to bring a photo identify proof and two passport size photographs one for each Session for appearing in the Examination with an undertaking.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">16. Candidates may note that all the entries in the OMR Sheet for Objective Type Paper (Paper-1) and entries in the Scannable Attendance List(SAL) for both Paper-1 and Paper-II should be filled up by <u>Black Ball Point Pen</u> only.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">17. In the Paper-II, the medium of Essay writing should be same as opted by the candidate and allowed by the Commission.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">18. The medium of Precise writing and Comprehension components will be English only.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left">19. Candidates are advised to visit their Examination Venue at least one day in advance and familiarize themselves with the itinerary to avoid the last minute hassle in their own interest.</td>
            </tr>
            <tr>
              <td height="7"></td>
            </tr>
            <tr>
              <td align="left"><strong>20. Candidates should appear for the exam in their uniform and must carry their Identity Card with them.</strong></td>
            </tr>
          </tbody>
        </table>
        </td>
      </tr>
      <tr>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#2B5277" Font-Bold="True" 
                ForeColor="White" onclick="Button1_Click" Text="Continue" />
          </td>
      </tr>
    </table>
  </div>
</div>
    </form>
</body>
</html>
