﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | Admin EXAM RESULT</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim fname As String
    Dim lname As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T1.Text = "" Or T2.Text = "select any one" Or T3.Text = "" Or T4.Text = "" Or T5.Text = "" Or T6.Text = "select any one" Or T7.Text = "" Or T8.Text = "" Or T9.Text = "" Or T10.Text = "" Or T11.Text = "" Or T12.Text = "" Then
            MsgBox("Please Fill All Records")
            Exit Sub
        End If
        If IsNumeric(T3.Text) Then
            MsgBox("please fill Fname")
            T3.Text = ""
            Exit Sub
        End If
        If IsNumeric(T7.Text) Then
            MsgBox("please fill Candidatename")
            T7.Text = ""
            Exit Sub
        End If
        If IsNumeric(T10.Text) Then
            MsgBox("please fill Location ")
            T10.Text = ""
            Exit Sub
        End If
        If Not IsNumeric(T2.Text) Then
            MsgBox("please fill ENCROLLEMENT ID ")
            T2.Text = ""
            Exit Sub
        End If
        If Not IsNumeric(T4.Text) Then
            MsgBox("please fill Contactno ")
            T4.Text = ""
            Exit Sub
        End If
 
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from int where eni='" & UCase(T2.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This int detail already Exist")
            conn.Close()
        Else
            sql = "insert into int values('" & T1.Text & "','" & UCase(T2.Text) & "','" & T3.Text & "','" & T4.Text & "','" & T5.Text & "', '" & T6.Text & "','" & T7.Text & "', '" & T8.Text & "', '" & T9.Text & "','" & T10.Text & "','" & T11.Text & "','" & T12.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Interview   Detail Submitted Sucessfully")
            conn.Close()
          
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from int where eni='" & UCase(T2.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Interview   Detail deleted Sucessfully")
    
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update  int set toi ='" & T12.Text & "', doi='" & T11.Text & "',loc='" & T10.Text & "',pname ='" & T9.Text & "', email ='" & T8.Text & "',cname ='" & T7.Text & "',ename ='" & t6.Text & "',dob ='" & T5.Text & "',con ='" & T4.Text & "',fname ='" & T3.Text & "',cyear ='" & T1.Text & "'where eni='" & UCase(T2.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Interview  Detail updated successfully")
     
    End Sub

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
            conn.Close()
        End If
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from int where eni='" & UCase(T2.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar()
        If (count > 0) Then
           
           
            command = New Data.SqlClient.SqlCommand("select  int  from post where  eni='" & UCase(T2.Text) & "'")
            command.Connection = conn
            conn.Close()
        Else
            MsgBox("Interview detail not successfully")
            conn.Close()
        End If
          
            
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

    Protected Sub T2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select fullname from appconform where eid='" & T2.Text & "'")
        command.Connection = conn
        T7.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select mno from appconform where eid='" & T2.Text & "'")
        command.Connection = conn
        T4.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select email from appconform where eid='" & T2.Text & "'")
        command.Connection = conn
        T8.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select fname from Table2 where email='" & T8.Text & "'")
        command.Connection = conn
        T3.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select dob from Table2 where email='" & T8.Text & "'")
        command.Connection = conn
        T5.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select post from Table2 where email='" & T8.Text & "'")
        command.Connection = conn
        T9.Text = command.ExecuteScalar
        
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
	width:910px;
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
        <td colspan="2"> <div align="center">
            <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            </div></td>
        <td colspan="2"> 
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" 
                onclick="LinkButton1_Click">Logout</asp:LinkButton>
          </td>
      </tr>
      
      <tr>
        <td colspan="4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Interview Notification</strong>&nbsp;</td>
      </tr>
      
      <tr>
        <td colspan="4"><hr /></td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
      </tr>
      <tr>
        <td class="style11">Current Year</td>
        <td width="29%" class="style12" colspan="2">          <span class="style24">
            <asp:TextBox ID="T1" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
           </span></td>
        <td width="4%" class="style12"></td>
      </tr>
      <tr>
        <td class="style13">Encrollement Id</td>
        <td class="style14" colspan="2">
            <asp:DropDownList ID="T2" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="eni" DataValueField="eni" 
                onselectedindexchanged="T2_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [eni] FROM [exam]"></asp:SqlDataSource>
          </td>
        <td class="style14">&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Father Name
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T3" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      
      
      <tr>
        <td class="style25">Contact No</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T4" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Date of Birth</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T5" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Examination Name</td>
        <td colspan="2">
            <asp:DropDownList ID="T6" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="examname" DataValueField="examname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
          </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Candidate Name</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T7" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Email</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T8" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Post Name</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T9" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3" class="style25">Interview Detail</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">location</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T10" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Date of interview</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T11" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25">Time of interview</td>
        <td colspan="2"><span class="style27">
          <asp:TextBox ID="T12" runat="server" Height="22px" 
                ValidationGroup="current date"></asp:TextBox>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style25"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" 
                Height="29px" Width="49px" />                  &nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="Search" onclick="Button5_Click" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Deleted" 
                onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Updated" Height="27px" 
                onclick="Button4_Click" />          </td>
        <td colspan="2"><span class="style28"></span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="150" class="style25">&nbsp;</td>
        <td colspan="2"><span class="style28"></span></td>
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
