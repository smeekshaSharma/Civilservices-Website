<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | Admin Card Detail</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        T1.Text = Format(Now, "dd/MM/yyyy")
        T1.Enabled = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from gradecard where encid='" & D4.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This gradecard detail already Exist")
            conn.Close()
        Else
            sql = "insert into gradecard values('" & T1.Text & "','" & d1.Text & "','" & d2.Text & "','" & D3.Text & "','" & D4.Text & "', '" & T6.Text & "','" & T7.Text & "', '" & T10.Text & "','" & t9.Text & "', '" & T14.Text & "','" & t11.SelectedDate & "','" & t12.Text & "','" & T13.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Gradecard Detail Submitted Sucessfully")
            conn.Close()
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from gradecard where encid='" & UCase(D4.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar()
        If (count > 0) Then
           
            command = New Data.SqlClient.SqlCommand("select  cdate from gradecard where encid ='" & UCase(T1.Text) & "'")
            command.Connection = conn
            d1.Text = command.ExecuteScalar("select  state from gradecard where encid ='" & UCase(d1.Text) & "'")
            command.Connection = conn
            d2.Text = command.ExecuteScalar("select  city from gradecard where encid ='" & UCase(d2.Text) & "'")
            command.Connection = conn
            D3.Text = command.ExecuteScalar("select  ename from gradecard where encid ='" & UCase(D3.Text) & "'")
            command.Connection = conn
            T6.Text = command.ExecuteScalar("select cname from gradecard where encid ='" & UCase(T6.Text) & "'")
            command.Connection = conn
            T7.Text = command.ExecuteScalar("select hname from  gradecard where  ='" & UCase(T7.Text) & "'")
            command.Connection = conn
            T10.Text = command.ExecuteScalar("select  con from gradecard where encid ='" & UCase(T10.Text) & "'")
            command.Connection = conn
            T9.Text = command.ExecuteScalar("select address from gradecard where encid ='" & UCase(T9.Text) & "'")
            command.Connection = conn
            T14.Text = command.ExecuteScalar("select examtime from gradecard where encid ='" & UCase(T14.Text) & "'")
            command.Connection = conn
            T12.Text = command.ExecuteScalar("select  examcode from gradecard where encid ='" & UCase(T12.Text) & "'")
            command.Connection = conn
            T13.Text = command.ExecuteScalar("select  examcentre from gradecard where encid ='" & UCase(T13.Text) & "'")
            command.Connection = conn
            
            conn.Close()
        Else
            MsgBox("gradecard detail deleted")
            T1.Text = ""
            T6.Text = ""
            T7.Text = ""
            T10.Text = ""
            T9.Text = ""
            T14.Text = ""
            T12.Text = ""
            T13.Text = ""
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from gradecard where encid='" & UCase(d2.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("gradecard   Detail deleted Sucessfully")
    
    End Sub
    
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update gradecard set examcentre ='" & T13.Text & "',examcode  ='" & t12.Text & "',examtime='" & T10.Text & "',address ='" & t9.Text & "',hname ='" & T7.Text & "',cname ='" & T6.Text & "', ename='" & D3.Text & "',city ='" & d2.Text & "',state ='" & d1.Text & "',cdate ='" & T1.Text & "'where encid='" & UCase(D4.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Gradecard Detail updated successfully")
     
    End Sub

   

    Protected Sub D4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from appconform where eid='" & D4.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select fullname from appconform where eid='" & D4.Text & "'")
            command.Connection = conn
            T6.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select cno from appconform where eid='" & D4.Text & "'")
            command.Connection = conn
            T10.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select email from appconform where eid='" & D4.Text & "'")
            command.Connection = conn
            t9.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select fname from Table2 where email='" & t9.Text & "'")
            command.Connection = conn
            T7.Text = command.ExecuteScalar
            conn.Close()
            
        End If
    End Sub

    Protected Sub t12_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select aoe from examcenter where cc='" & t12.Text & "'")
        command.Connection = conn
        T13.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select et from examcenter where cc='" & t12.Text & "' and ename='" & T13.Text & "'")
        command.Connection = conn
        T13.Text = command.ExecuteScalar
        conn.Close()
        
    End Sub
   
    Protected Sub d1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

     
</script>
<style type="text/css">
    <!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:904px;
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
	left: 260px;
	top: 70px;
	background-color: #FFFFFF;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:30px;
	z-index:4;
	left: 0px;
	top: 783px;
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
	height: 13px;
	font-weight: bold;
	color: #000000;
    }
    .style14
    {
        height: 13px;
    }
    .style15
    {
	height: 23px;
	width: 4%;
	font-weight: bold;
	color: #000000;
    }
    .style16
    {
	height: 13px;
	width: 4%;
	font-weight: bold;
	color: #000000;
    }
    .style17
    {
        width: 4%;
    }
.style30 {
	color: #000000;
	font-weight: bold;
}
.style31 {color: #000000}
.style32 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
.style33 {width: 4%; font-weight: bold; color: #000000; }
.style35 {color: #006DF0; font-weight: bold; }
    .style36
    {
        width: 65%;
        font-size: medium;
        font-weight: bold;
        color: #000000;
        height: 26px;
    }
    .style38
    {
        width: 4%;
        font-weight: bold;
        color: #000000;
        height: 26px;
    }
    .style39
    {
        color: #000000;
        height: 26px;
    }
    .style40
    {
        width: 65%;
        font-size: medium;
        font-weight: bold;
        color: #000000;
        height: 59px;
    }
    .style41
    {
        height: 59px;
    }
    .style42
    {
        width: 4%;
        font-weight: bold;
        color: #000000;
        height: 59px;
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
        <td width="85%"><a href="admindashboard.aspx"><span class="style35">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style35"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style35">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style35">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style35">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style35">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style35">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style35">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style35">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style35">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style35">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style35">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style35">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style35"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style35">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style35">Written Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style35">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    <table width="100%" border="0">
      <tr>
        <td colspan="3"><div align="center"><span class="style30"> ADMIT CARD DETAIL</span></div></td>
      </tr>
      
      <tr>
        <td colspan="3"><hr /></td>
      </tr>
      <tr>
        <td colspan="3"><span class="style31"></span></td>
      </tr>
      <tr>
        <td class="style11">Current Date</td>
        <td width="29%" class="style12">          <span class="style31"><strong>
            <asp:TextBox ID="T1" runat="server" Height="22px"></asp:TextBox>
          </strong> </span></td>
        <td class="style15">&nbsp;</td>
      </tr>
      <tr>
        <td class="style13"></td>
        <td class="style14"></td>
        <td class="style16"></td>
      </tr>
      <tr>
        <td class="style32">State<td>
            <asp:DropDownList ID="d1" runat="server" 
                onselectedindexchanged="d1_SelectedIndexChanged" >
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
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">City<td>
            <asp:DropDownList ID="d2" runat="server" >
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          </td>
        <td class="style33">&nbsp;            </td>
      </tr>
      <tr>
        <td class="style40">Examination Name</td>
        <td class="style41">
            <asp:DropDownList ID="D3" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="examname" DataValueField="examname" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
          </td>
        <td class="style42">&nbsp;            </td>
      </tr>
      <tr>
        <td class="style32">Enrollment Id</td>
        <td>
            <asp:DropDownList ID="D4" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="eid" DataValueField="eid" 
                onselectedindexchanged="D4_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [eid] FROM [appconform] WHERE ([reapp] = @reapp)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D3" Name="reapp" PropertyName="SelectedValue" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">Candidate Name</td>
        <td><span class="style31"><strong>
          <asp:TextBox ID="T6" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">Father/Husband Name</td>
        <td class="style31" id="t7"><span class="style31"><strong>
          <asp:TextBox ID="T7" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style36">Email</td>
        <td class="style39" id="t7"><span class="style31"><strong>
          <asp:TextBox ID="t9" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style38">&nbsp;</td>
      </tr>
      <tr>
        <td class="style36">Contact No</td>
        <td class="style39" id="t7"><span class="style31"><strong>
          <asp:TextBox ID="T10" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style38"></td>
      </tr>
      <tr>
        <td class="style32">Exam Date Date</td>
        <td>
            <asp:Calendar ID="t11" runat="server"></asp:Calendar>
          </td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">Exam centre code</td>
        <td>
            <asp:DropDownList ID="t12" runat="server" DataSourceID="SqlDataSource3" 
                DataTextField="cc" DataValueField="cc" 
                onselectedindexchanged="t12_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [cc] FROM [examcenter] WHERE (([city] = @city) AND ([ename] = @ename))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="d2" Name="city" PropertyName="SelectedValue" 
                        Type="String" />
                    <asp:ControlParameter ControlID="D3" Name="ename" PropertyName="SelectedValue" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">Exam centre address</td>
        <td><span class="style31"><strong>
          <asp:TextBox ID="T13" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style33">&nbsp;            </td>
      </tr>
      <tr>
        <td class="style32">
            Exam Time</td>
        <td><span class="style31"><strong>
          <asp:TextBox ID="T14" runat="server"></asp:TextBox>
        </strong></span></td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style32">
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
        <td><span class="style31"></span></td>
        <td class="style33">&nbsp;</td>
      </tr>
      <tr>
        <td class="style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="style17">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv7">
    <table width="100%" border="0" style="height: 72px">
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
                              <p><span class="style5"> This Website Designed &amp; Developed By Muskan Sharma>
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
