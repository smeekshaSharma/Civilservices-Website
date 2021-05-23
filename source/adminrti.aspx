<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | RIGHT TO INFORMATION</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pdf As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T1.Text = "" Or T2.Text = "" Or T3.Text = "" Or fileuplod1.FileName = "" Then
            MsgBox("Please Fill All Records")
            Exit Sub
        End If
       
        pdf = "~/pdf/" & fileuplod1.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from rti where rtititle='" & UCase(T2.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("RTI Detail already exits")
            T2.Text = ""
            conn.Close()
        Else
            sql = "insert into rti values('" & T1.Text & "','" & UCase(T2.Text) & "','" & T3.Text & "','" & pdf & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("RTI Detail Submited Sucessfully")
            conn.Close()
            
            T2.Text = ""
            T3.Text = ""
         
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from rti where rtititle='" & UCase(T2.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
           
            command = New Data.SqlClient.SqlCommand("select  RTIdes from rtides where rtititle  ='" & UCase(T2.Text) & "'")
            command.Connection = conn
            T3.Text = command.ExecuteScalar
            conn.Close()
        Else
            MsgBox("RTI Detail Does not Exist")
            T2.Text = ""
            conn.Close()
            
        End If
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete from rti where rtititle='" & UCase(T2.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("RTI Detail has been deleted")
        T1.Text = ""
        T2.Text = ""
        T3.Text = ""
       
            
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        pdf = "~/pdf/" & fileuplod1.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update rti set rtides='" & T3.Text & "', cdate='" & T1.Text & "',pdf='" & pdf & "' where rtititle= '" & UCase(T2.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("RTI Detail  has been updated")
        T1.Text = ""
        T2.Text = ""
        T3.Text = ""
       
        
        
        
         
        
        
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
	height:672px;
	z-index:1;
	left: 0px;
	top: 0px;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:63px;
	z-index:1;
	background-color: #006df0;
}
#apDiv3 {
	position:absolute;
	width:20%;
	height:566px;
	z-index:2;
	left: -8px;
	top: 67px;
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
	height:563px;
	z-index:3;
	left: 211px;
	top: 67px;
	background-color: #FFFFFF;
}
.style3 {
	font-size: 24px;
	font-weight: bold;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:30px;
	z-index:4;
	left: 0px;
	top: 629px;
}
#apDiv8 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
}
    .style11
    {
	width: 65%;
	height: 23px;
	font-weight: bold;
	color: #000000;
    }
    .style12
    {
        height: 23px;
    }
    .style13
    {
	width: 65%;
	font-size: medium;
	height: 61px;
	font-weight: bold;
	color: #000000;
    }
    .style14
    {
        height: 61px;
    }
.style15 {
	height: 23px;
	font-weight: bold;
	color: #000000;
}
.style16 {
	height: 61px;
	font-weight: bold;
	color: #000000;
}
.style18 {color: #000000}
.style19 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
.style23 {color: #006DF0; font-weight: bold; }
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <td width="20%" bgcolor="#FFFFFF"><img src="../images/logo.png" width="200" height="60" /></td>
        <td width="75%">&nbsp;</td>
        <td width="5%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <table width="100%" border="0">
      <tr>
        <td width="15%"><img src="../images/logos/homeic.png" width="25" height="25" /></td>
        <td width="85%"><a href="admindashboard.aspx"><span class="style23">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style23"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style23">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style23">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style23">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style23">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style23">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style23">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style23">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style23">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style23">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style23">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style23">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style23"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style23">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style23">Written Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style23">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td colspan="3"><div align="center"><span class="style3">Admin RTI</span></div></td>
      </tr>
      
      <tr>
        <td colspan="3"><hr /></td>
      </tr>
      <tr>
        <td colspan="3"><span class="style18"></span></td>
      </tr>
      <tr>
        <td class="style11">Current Date</td>
        <td width="29%" class="style12">          <span class="style18"><strong>
            <asp:TextBox ID="T1" runat="server" Height="22px"></asp:TextBox>
          </strong> </span></td>
        <td width="4%" class="style15">&nbsp;</td>
      </tr>
      <tr>
        <td class="style13">RTI Title</td>
        <td class="style14">          <span class="style18"><strong>
            <asp:TextBox ID="T2" runat="server"></asp:TextBox>
          </strong> </span></td>
        <td class="style16">&nbsp;            </td>
      </tr>
      <tr>
        <td class="style19">RTI Description
        <td>          <span class="style18"><strong>
            <asp:TextBox ID="T3" runat="server"></asp:TextBox>
          </strong> </span></td>
        <td><span class="style18"></span> </td>
      </tr>
      
      <tr>
        <td class="style19">Notification of PDF</td>
        <td>
            <asp:FileUpload ID="fileuplod1" runat="server" />          </td>
        <td><span class="style18"></span> </td>
      </tr>
      <tr>
        <td class="style19">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                Height="29px" Width="49px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Search" Height="24px" 
                style="margin-left: 15px" Width="63px" onclick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Deleted" 
                onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Updated" Height="27px" 
                onclick="Button4_Click" />          </td>
        <td><span class="style18"></span></td>
        <td><span class="style18"></span></td>
      </tr>
      <tr>
        <td class="style19">&nbsp;</td>
        <td><span class="style18"></span></td>
        <td><span class="style18"></span></td>
      </tr>
    </table>
  </div>
  <div id="apDiv7">
    <table width="100%" border="0">
      <tr>
        <td><hr /></td>
      </tr>
      <tr>
        <td><blockquote>
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
