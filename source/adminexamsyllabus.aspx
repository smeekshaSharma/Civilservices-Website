<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services |Admin Examination Syllabus</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim fname As String
    Dim lname As String
    Dim pdf4 As String
    Dim pdf1 As String
    Dim pdf2 As String
    
    Dim pdf3 As String
    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T1.Text = "" Or d2.Text = "select any one" Or d3.Text = "select any one" Or t2.Text = "" Or T3.Text = "" Or T4.Text = "" Or FileUpload2.FileName = "" Or T5.Text = "" Or T6.Text = "" Or T7.Text = "" Or T8.Text = "" Or T9.Text = "" Or T10.Text = "" Or FileUpload3.FileName = "" Or T11.Text = "" Or FileUpload4.FileName = "" Or T12.Text = "" Or T13.Text = "" Or FileUpload1.FileName = "" Then
            MsgBox("Please Fill All Records")
            Exit Sub
        End If
        If IsNumeric(d2.Text) Then
            MsgBox("please fill Examname")
            d2.Text = ""
            Exit Sub
        End If
        If IsNumeric(d3.Text) Then
            MsgBox("please fill Postname")
            d3.Text = ""
            Exit Sub
        End If
        If IsNumeric(T3.Text) Then
            MsgBox("please fill Subname")
            T3.Text = ""
            Exit Sub
        End If
        If IsNumeric(T5.Text) Then
            MsgBox("please fill Subname")
            T5.Text = ""
            Exit Sub
        End If
        If IsNumeric(T7.Text) Then
            MsgBox("please fill Subname")
            T7.Text = ""
            Exit Sub
        End If
        If IsNumeric(T8.Text) Then
            MsgBox("please fill Subname")
            T8.Text = ""
            Exit Sub
        End If
        If IsNumeric(T12.Text) Then
            MsgBox("please fill Subname")
            T12.Text = ""
            Exit Sub
        End If
        pdf2 = "~/pdf/" & FileUpload2.FileName
        pdf3 = "~/pdf/" & FileUpload3.FileName
        pdf4 = "~/pdf/" & FileUpload4.FileName
        pdf1 = "~/pdf/" & FileUpload1.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from examsly where examname='" & UCase(d2.Text) & "'and postname ='" & d3.Text & "'and cyear='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This syl already Exist")
            d2.Text = ""
            conn.Close()
        Else
            sql = "insert into examsly values('" & T1.Text & "','" & UCase(d2.Text) & "','" & d3.Text & "','" & t2.Text & "','" & T3.Text & "','" & T4.Text & "','" & pdf2 & "','" & T5.Text & "','" & T6.Text & "','" & pdf3 & "','" & T7.Text & "','" & T8.Text & "', '" & pdf4 & "','" & T9.Text & "','" & T10.Text & "','" & pdf1 & "','" & T11.Text & "','" & T12.Text & "','" & FileUpload1.FileName & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("examsyll Detail Submitted Sucessfully")
            conn.Close()
            t2.Text = ""
            
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and Cyear='" & T3.Text & "'")
       
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("syllbus Detail deleted Sucessfully")
        t2.Text = ""
        
       
       
        
            
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update examsly set pdf5='" & FileUpload1.FileName & "',dur='" & T13.Text & "',subname5='" & T12.Text & "',pdf4='" & FileUpload4.FileName & "',dur4='" & T11.Text & "',subname4='" & T10.Text & "',pdf3='" & FileUpload3.FileName & "',dur3='" & T10.Text & "',subname3='" & T9.Text & "',pdf='" & FileUpload2.FileName & "',dur2='" & T8.Text & "',subname2='" & T7.Text & "',pdf1='" & FileUpload1.FileName & "',dur='" & T6.Text & "',subname1='" & T5.Text & "',cdate='" & T1.Text & "',where examname='" & d2.Text & "' and postname='" & d3.Text & "' and cyear='" & t2.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Syllabus Detail updated successfully")
        t2.Text = ""
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
        End If
        conn.Close()
    End Sub

    Protected Sub button_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select subname1 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T3.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select dur from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T4.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select subname2 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T5.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select dur2 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T6.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select subname3 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T7.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select dur3 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T8.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select subname4 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T9.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select dur4 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T10.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select subname5 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            T11.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select dur5 from examsly where examname='" & UCase(d2.Text) & "'and postname='" & d3.Text & "'and cyear='" & t2.Text & "'")
            command.Connection = conn
            conn.Close()
        Else
            MsgBox("Syllabus detail not exist")
            t2.Text = ""
        
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
	height:899px;
	z-index:1;
	left: 1px;
	top: 1px;
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
	left: 4px;
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
	height:767px;
	z-index:3;
	left: 265px;
	top: 66px;
	background-color: #FFFFFF;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:32px;
	z-index:4;
	left: 1px;
	top: 858px;
}
#apDiv8 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
}
    .style10
    {
        width: 65%;
        font-size: medium;
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
.style18 {
	height: 23px;
	font-weight: bold;
	color: #000000;
}
.style23 {
	color: #000000;
	font-weight: bold;
}
.style24 {color: #000000}
.style25 {height: 61px; font-weight: bold; color: #000000; }
.style26 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
.style27 {width: 65%; font-size: medium; height: 101px; font-weight: bold; color: #000000; }
    .style28
    {
        width: 65%;
        font-size: medium;
        font-weight: bold;
        color: #000000;
        height: 26px;
    }
    .style29
    {
        height: 26px;
    }
.style31 {color: #006DF0; font-weight: bold; }
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
        <td width="85%"><a href="admindashboard.aspx"><span class="style31">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style31"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style31">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style31">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style31">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style31">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style31">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style31">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style31">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style31">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style31">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style31">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style31">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style31"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style31">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style31">Written Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style31">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td colspan="2"><div align="center" class="style23">
            <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            </div></td>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" 
                onclick="LinkButton1_Click">Logout</asp:LinkButton>
          </td>
      </tr>
      
      <tr>
        <td colspan="4" style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Examination Revised Subject &amp; Syllabus Detail&nbsp;</td>
      </tr>
      
      <tr>
        <td colspan="4"><hr /></td>
      </tr>
      <tr>
        <td colspan="4"><span class="style24"></span></td>
      </tr>
      <tr>
        <td class="style11">Current Date</td>
        <td width="29%" class="style12" colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T1" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
        <td width="4%" class="style18"></td>
      </tr>
      <tr>
        <td class="style13">Examination Name</td>
        <td class="style14" colspan="2">
            <asp:DropDownList ID="d2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="examname" 
                DataValueField="examname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
          </td>
        <td class="style25">&nbsp;</td>
      </tr>
      <tr>
        <td class="style26">Post Name
        <td colspan="2"><span class="style25">
          <asp:DropDownList ID="d3" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="postname" DataValueField="postname">
            <asp:ListItem>Select Any One</asp:ListItem>
          </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [postname] FROM [post] WHERE ([examname] = @examname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="d2" Name="examname" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </span></td>
        <td rowspan="18"><span class="style24"></span></td>
      </tr>
      <tr>
        <td class="style26">Current Year      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="t2" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td colspan="3" bgcolor="#006DF0" class="style26"> Stage 1             </tr>
      <tr>
        <td class="style26">Subject1 Name      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T3" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Duration      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T4" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">PDF/Document      
        <td colspan="2">
            <asp:FileUpload ID="FileUpload2" runat="server" />          </td>
      </tr>
      <tr>
        <td class="style28">Subject  2Name    
        <td class="style29" colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T5" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Duration      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T6" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">PDF/Document      
        <td colspan="2">
            <asp:FileUpload ID="FileUpload3" runat="server" />          </td>
      </tr>
      <tr>
        <td colspan="3" bgcolor="#006DF0" class="style26">Stage2      </tr>
      <tr>
        <td class="style26">Subject Name      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T7" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Duration
        <td colspan="2">          <span class="style24"><strong>
            <asp:TextBox ID="T8" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
          </strong></span></td>
      </tr>
      <tr>
        <td class="style26">PDF/Document      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T9" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Subject2 Name     
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T10" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Duration      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T11" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">PDF/Document      
        <td colspan="2">
            <asp:FileUpload ID="FileUpload4" runat="server" />
          </td>
      </tr>
      <tr>
        <td class="style26">Subject3 Name     
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T12" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      <tr>
        <td class="style26">Duration      
        <td colspan="2"><span class="style24"><strong>
          <asp:TextBox ID="T13" runat="server" Height="22px" 
                validationgroup="current date"></asp:TextBox>
        </strong></span></td>
      </tr>
      
      <tr>
        <td class="style26">PDF/Document</td>
        <td colspan="2">
            <asp:FileUpload ID="FileUpload1" runat="server" />          </td>
        <td><span class="style24"></span></td>
      </tr>
      
      <tr>
        <td class="style10"><span class="style27">
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                Height="29px" Width="49px" />          
        </span></td>
        <td colspan="2"><span class="style27">
          <asp:Button ID="button" runat="server" Text="Search" onclick="button_Click" />          
        </span></td>
        <td><span class="style24"></span></td>
      </tr>
      <tr>
        <td class="style10"><span class="style27">
          <asp:Button ID="Button3" runat="server" Text="Deleted" 
                onclick="Button3_Click" />          
        </span></td>
        <td colspan="2"><span class="style27">
          <asp:Button ID="Button4" runat="server" Text="Updated" Height="27px" 
                onclick="Button4_Click" />          
        </span></td>
        <td><span class="style24"></span></td>
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
