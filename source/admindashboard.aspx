<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | Admin Dash Board</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select uname from logintemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("adminlogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand("select fn from admin where email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select ln from admin where email='" & Label1.Text & "'")
            command.Connection = conn
            lname = command.ExecuteScalar
            Label2.Text = "Welcome: " & fname & " " & lname
        End If
        conn.Close()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete from logintemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into logintemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        Response.Redirect("adminlogin.aspx")
        conn.Close()
        
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:777px;
	z-index:1;
	left: 0px;
	top: 0px;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:44px;
	z-index:1;
	background-color: #006df0;
        top: 0px;
        left: 0px;
    }
#apDiv3 {
	position:absolute;
	width:257px;
	height:532px;
	z-index:2;
	left: 2px;
	top: 58px;
	background-color: #FFFFFF;
}
#apDiv4 {
	position:absolute;
	width:1032px;
	height:1552px;
	z-index:2;
	left: 268px;
	top: 64px;
}
#apDiv5 {
	position:absolute;
	width:1035px;
	height:1577px;
	z-index:1;
	left: 19px;
	top: 6px;
}
#apDiv6 {
	position:absolute;
	width:80%;
	height:657px;
	z-index:3;
	left: 270px;
	top: 42px;
	background-color: #FFFFFF;
}
.style2 {
	color: #000000;
	font-weight: bold;
	font-size: 24px;
}
.style3 {
	font-size: 24px;
	font-weight: 700;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:369px;
	z-index:4;
	left: 7px;
	top: 679px;
}
.style5 {color: #003371}
.style9 {color: #333333; font-weight: bold; }
#apDiv8 {
	position:absolute;
	width:100%;
	height:50px;
	z-index:4;
	left: 6px;
	top: 648px;
}
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #333333;
}
a:hover {
	text-decoration: underline;
	color: #003A82;
}
a:active {
	text-decoration: none;
	color: #003A82;
}
a {
	font-size: 14px;
	font-weight: bold;
}
    .style10
    {
        width: 75%;
        height: 64px;
    }
    .style11
    {
        height: 64px;
    }
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0" style="height: 49px">
      <tr>
        <td width="20%" bgcolor="#FFFFFF" class="style11"><img src="../images/logo.png" width="257" height="60" /></td>
        <td class="style10"></td>
        <td width="5%" class="style11"></td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <table width="100%" border="0">
      <tr>
        <td width="12%"><img src="../images/logos/homeic.png" width="25" height="25" /></td>
        <td width="88%"><a href="admindashboard.aspx"><span class="style9">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style9"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style9"><a href="adminrecuritapp.aspx">Recuritment Application</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style9">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/Untitled-1.png" width="25" height="25" /></td>
        <td><a href="adminpostdetail.aspx">Post Detail</a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style9">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style9"><a href="adminexaminationresult.aspx">Examination Result</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style9">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style9">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style9">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style9">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style9">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style9">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="admincurrentnews.aspx"><span class="style9">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style9"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style9">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterviewnoti.aspx"><span class="style9">Interview Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="adminfinalresult.aspx"><span class="style9">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" 
                onclick="LinkButton1_Click">Logout</asp:LinkButton>
          </td>
      </tr>
      
      <tr>
        <td colspan="2"><span class="style3">What is Administrator?</span></td>
      </tr>
      
      <tr>
        <td colspan="2">A database administrator (DBA) is the information technician responsible for directing or performing all activities related to maintaining a successful database environment. A DBA makes sure an organization's database and its related applications operate functionally and efficiently.</td>
      </tr>
      <tr>
        <td colspan="2"><span class="style2">Importance Of DBA</span></td>
      </tr>
      
      <tr>
        <td colspan="2"><p align="justify">If your organization uses a database management system (DBMS) for mission-critical workloads, it is important to employ one or more database administrators to ensure that applications have ongoing, uninterrupted access to data. Most modern organizations of every size use at least one DBMS, and therefore the need for database administrators is greater today than ever before.The DBA is responsible for understanding and managing the overall database environment. By developing and implementing a strategic blueprint to follow when deploying databases within their organization, DBAs are instrumental to the ongoing efficacy of modern applications that rely on databases for data storage and access.Without the DBA's oversight, it is inevitable that application and system outages, downtime and slowdowns will occur. Problems such as these result in business outages that can negatively affect revenue, customer experience and company reputation.DBAs are the subject matter experts for database management systems and all related topics, including DBMS implementation and configuration; database design; SQL coding; data extraction, transformation and loading (ETL); test data management; problem resolution; data integrity; database security; optimization; and database backup and recovery.Database administration is a vital component of the IT environment for any organization that relies on one or more database management systems.</p>        </td>
      </tr>
      <tr>
        <td colspan="2"><span class="style2">Roles &amp; Responsibility</span></td>
      </tr>
      
      <tr>
        <td height="344" colspan="2"><p align="justify">          A database administrator (DBA) is the information technician responsible for directing or performing all activities related to maintaining a successful database environment. A DBA makes sure an organization's database and its related applications operate functionally and efficiently. Importance of a DBA</p>
          <p align="justify">If your organization uses a database management system (DBMS) for mission-critical workloads, it is important to employ one or more database administrators to ensure that applications have ongoing, uninterrupted access to data. Most modern organizations of every size use at least one DBMS, and therefore the need for database administrators is greater today than ever before.</p>
          <p align="justify" style="height: 209px">The DBA is responsible for understanding and managing the overall database environment. By developing and implementing a strategic blueprint to follow when deploying databases within their organization, DBAs are instrumental to the ongoing efficacy of modern applications that rely on databases for data storage and access.Without the DBA's oversight, it is inevitable that application and system outages, downtime and slowdowns will occur. Problems such as these result in business outages that can negatively affect revenue, customer experience and company reputation.DBAs are the subject matter experts for database management systems and all related topics, including DBMS implementation and configuration; database design; SQL coding; data extraction, transformation and loading (ETL); test data management; problem resolution; data integrity; database security; optimization; and database ckup and recovery.</p>        </td>
      </tr>
    </table>
    </div>
  <div id="apDiv8">
    <table width="100%" border="0">
      <tr>
        <td><hr /></td>
      </tr>
      <tr>
        <td height="21"><blockquote>
            <blockquote>
              <blockquote>
                <blockquote>
                  <blockquote>
                    <blockquote>
                      <blockquote>
                        <blockquote>
                          <blockquote>
                            <blockquote>
                              <blockquote>
                                <p><span class="style5"> This Website Designed &amp; Developed By Muskan Sharma</p>
                              </blockquote>
                            </blockquote>
                          </blockquote>
                        </blockquote>
                      </blockquote>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
            </blockquote>
        </blockquote></td>
      </tr>
    </table>
  </div>
</div>
    </form>
</body>
</html>
