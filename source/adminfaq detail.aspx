<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services |FAQ Detail</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T1.Text = "" Or T2.Text = "select any one" Or T4.Text = "" Or T5.Text = "" Then
            MsgBox("Please Fill All Records")
            Exit Sub
        End If
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from FAQ where faqtype='" & T2.Text & "'and que='" & UCase(T4.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        If (count > 0) Then
            MsgBox("FAQ detail already Exist")
            T4.Text = ""
            conn.Close()
        Else
            sql = "insert into FAQ values('" & T1.Text & "','" & T2.Text & "','" & T4.Text & "','" & T5.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("FAQ Detail Submitted Sucessfully")
            conn.Close()
            T4.Text = ""
            
            
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from faq where faqtype='" & T2.Text & "'and que='" & T4.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("FAQ Detail deleted Sucessfully")
        T4.Text = ""
       End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update FAQ set ans ='" & T5.Text & "'where faqtype='" & UCase(T2.Text) & "'and que='" & T4.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("FAQ Detail updated successfully")
        T4.Text = ""
    End Sub
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        T1.Text = Format(Now, "dd/MM/yyyy")
        T1.Enabled = False
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
	width:244px;
	height:566px;
	z-index:2;
	left: 0px;
	top: 69px;
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
	left: 245px;
	top: 66px;
	background-color: #FFFFFF;
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
    .style15
    {
	width: 65%;
	font-size: medium;
	height: 26px;
	font-weight: bold;
	color: #000000;
    }
    .style16
    {
        height: 26px;
    }
    .style17
    {
	width: 65%;
	font-size: medium;
	height: 68px;
	font-weight: bold;
	color: #000000;
    }
    .style18
    {
        height: 68px;
    }
a {
	font-size: 14px;
	color: #333333;
}
a:link {
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
.style23 {
	height: 23px;
	font-weight: bold;
	color: #000000;
}
.style25 {
	height: 68px;
	font-weight: bold;
	color: #000000;
}
.style26 {color: #000000}
.style27 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
.style33 {color: #006DF0; font-weight: bold; }
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <td width="19%" bgcolor="#FFFFFF"><img src="../images/logo.png" width="218" height="60" /></td>
        <td width="76%">&nbsp;</td>
        <td width="5%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <table width="100%" border="0">
      <tr>
        <td width="15%"><img src="../images/logos/homeic.png" width="25" height="25" /></td>
        <td width="85%"><a href="admindashboard.aspx"><span class="style33">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style33"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style33">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style33">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style33">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style33">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style33">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style33">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style33">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style33">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style33">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style33">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style33">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style33"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style33">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style33">Written Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style33">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td colspan="3"><div align="center"><strong>FAQ Detail</strong></div></td>
      </tr>
      
      <tr>
        <td colspan="3"><hr /></td>
      </tr>
      <tr>
        <td colspan="3">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LogOut</asp:LinkButton>
          </td>
      </tr>
      <tr>
        <td class="style11">Current Date</td>
        <td width="29%" class="style23">
            <p>
              <asp:TextBox ID="T1" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
            </p>
          <p>&nbsp;                        </p></td>
        <td width="4%" class="style12"></td>
      </tr>
      <tr>
        <td class="style13">FAQ Type</td>
        <td class="style14">
            <asp:DropDownList ID="T2" runat="server">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>Examination</asp:ListItem>
                <asp:ListItem>Candidate</asp:ListItem>
            </asp:DropDownList>
          </td>
        <td class="style14">&nbsp;</td>
      </tr>
      
      <tr>
        <td class="style15">Question</td>
        <td class="style16">          <span class="style26"><strong>
            <asp:TextBox ID="T4" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
          </strong></span></td>
        <td class="style16"></td>
      </tr>
      <tr>
        <td class="style27">Answer</td>
        <td><span class="style26"><strong>
          <asp:TextBox ID="T5" runat="server" Height="23px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
        <td>&nbsp;</td>
      </tr>
      

      <tr>
        <td class="style17">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                Height="29px" Width="49px" />
&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button3" runat="server" Text="Deleted" 
                onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Updated" Height="27px" 
                onclick="Button4_Click" />          </td>
        <td class="style25"></td>
        <td class="style18"></td>
      </tr>
      <tr>
        <td class="style27">&nbsp;</td>
        <td><span class="style26"></span></td>
        <td>&nbsp;</td>
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
                              <p><span class="style5"> This Website Designed &amp; Developed By Muskan Sharmama              </blockquote>
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
