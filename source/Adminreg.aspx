TYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | Admin Registration</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T8.Text <> "Civil852" Then
            MsgBox("Admin Code Not Match")
            T8.Text = ""
            Exit Sub
        End If
        If T4.Text <> T5.Text Then
            MsgBox("Password & Reenter Password Not Match")
            T4.Text = ""
            T5.Text = ""
            Exit Sub
        End If
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from admin where email='" & T3.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This admin reg detail already Exist")
            T3.Text = ""
            conn.Close()
        Else
            sql = "insert into admin values('" & T1.Text & "','" & T2.Text & "','" & T3.Text & "','" & T4.Text & "','" & T5.Text & "', '" & D1.Text & "','" & T6.Text & "', '" & D2.Text & "', '" & T7.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("admin reg  Detail Submitted Sucessfully")
            conn.Close()
            T1.Text = ""
            T2.Text = ""
            T3.Text = ""
            T4.Text = ""
            T5.Text = ""
            T6.Text = ""
            T7.Text = ""
         
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    
            
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
        
        
         
        
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
      
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      
            
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
	width:1089px;
	height:563px;
	z-index:3;
	left: 212px;
	top: 71px;
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
	width: 37%;
	height: 23px;
	font-weight: bold;
	color: #000000;
    }
    .style12
    {
        height: 23px;
    }
    .style24 {
	color: #000000;
	font-weight: bold;
}
.style25 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
.style27 {height: 23px; font-weight: bold; color: #000000; }
.style28 {color: #000000}
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
.style40 {color: #006DF0; font-weight: bold; }
    .style41
    {
        width: 37%;
        font-size: medium;
        font-weight: bold;
        color: #000000;
    }
    .style42
    {
        height: 23px;
        width: 127px;
    }
    .style44
    {
        width: 127px;
    }
    .style45
    {
        width: 37%;
        font-size: medium;
        font-weight: bold;
        color: #000000;
        height: 26px;
    }
    .style46
    {
        width: 127px;
        height: 26px;
    }
    .style47
    {
        height: 26px;
    }
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
        <td width="85%"><a href="admindashboard.aspx"><span class="style40">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style40"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style40">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style40">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style40">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style40">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style40">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style40">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style40">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style40">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style40">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style40">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style40">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style40"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style40">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style40">Interview Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style40">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td colspan="4"> <div align="center"><strong>Admin Registration</strong></div></td>
      </tr>
      
      <tr>
        <td colspan="4"><hr /></td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
      </tr>
      <tr>
        <td class="style11">First Name</td>
        <td class="style42">          <span class="style24">
            <asp:TextBox ID="T1" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
          </span></td>
        <td width="19%" class="style12">Last Name</td>
        <td width="19%" class="style12">
            <asp:TextBox ID="T2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td class="style41">Email<td class="style44">
            <asp:TextBox ID="T3" runat="server"></asp:TextBox>
          </td>
        <td colspan="2">&nbsp;</td>
      </tr>
      
      
      <tr>
        <td class="style41">Admin Code<td class="style44"><span class="style27">
          <asp:TextBox ID="T8" runat="server" Height="22px" 
                ValidationGroup="current date" TextMode="Password"></asp:TextBox>
        </span></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      
      
      <tr>
        <td class="style41">Password
        
        <td class="style44"><span class="style27">
          <asp:TextBox ID="T4" runat="server" Height="22px" 
                ValidationGroup="current date" TextMode="Password"></asp:TextBox>
        </span></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      
      
      <tr>
        <td class="style41">Reenter Password</td>
        <td class="style44"><span class="style27">
          <asp:TextBox ID="T5" runat="server" Height="22px" 
                ValidationGroup="current date" TextMode="Password"></asp:TextBox>
        </span></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td class="style41">Gender</td>
        <td class="style44">
            <asp:DropDownList ID="D1" runat="server">
                <asp:ListItem Value="Select Any One"></asp:ListItem>
                <asp:ListItem Value="Male"></asp:ListItem>
                <asp:ListItem Value="Female"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          </td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td class="style41">Mobile NO</td>
        <td class="style44">
            <asp:TextBox ID="T6" runat="server"></asp:TextBox>
          </td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td class="style41">Secutity Ques</td>
        <td class="style44">
            <asp:DropDownList ID="D2" runat="server">
                <asp:ListItem Value="Select Any One"></asp:ListItem>
                <asp:ListItem Value="Your Best Friend Name"></asp:ListItem>
                <asp:ListItem Value="Your Favourite Food"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          </td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td class="style45">Answer</td>
        <td class="style46"><span class="style27">
          <asp:TextBox ID="T7" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td colspan="2" class="style47"></td>
      </tr>
      <tr>
        <td colspan="4" class="style25"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" 
                Height="29px" Width="49px" />        &nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;<span class="style28"></span></td>
        </tr>
      
      <tr>
        <td height="150" class="style41">&nbsp;</td>
        <td class="style44"><span class="style28"></span></td>
        <td colspan="2">&nbsp;</td>
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
