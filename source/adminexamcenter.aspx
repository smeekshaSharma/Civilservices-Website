<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Civil Services | Admin EXAM CENTER</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim fname As String
    Dim lname As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If T1.Text = "" Or t2.Text = "select any one"  Or t3.Text = "select any one" Or t4.Text = "select any one" Or T5.Text = "" Or T6.Text = "" Or T7.Text = "" Then
            MsgBox("Please Fill All Records")
            Exit Sub
        End If
        If IsNumeric(t4.Text) Then
            MsgBox("please fill Examination")
            t4.Text = ""
            Exit Sub
        End If
        
        
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from examcenter where city='" & UCase(t3.Text) & "'and ename='" & UCase(t4.Text) & "'and aoe='" & UCase(T6.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("exam upload already exits")
         
            T6.Text = ""
            conn.Close()
        Else
            sql = "insert into examcenter values('" & T1.Text & "','" & (t2.Text) & "','" & UCase(t3.Text) & "','" & UCase(t4.Text) & "','" & (T5.Text) & "','" & UCase(T6.Text) & "','" & (T7.Text) & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("int Detail Submited Sucessfully")
            conn.Close()
        
            T6.Text = ""
            
        End If
                
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from examcenter where city='" & UCase(t3.Text) & "'and ename='" & UCase(t4.Text) & "'and aoe='" & UCase(T6.Text) & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select  ename  from examcenter where city='" & UCase(t3.Text) & "'and ename='" & UCase(t4.Text) & "'and aoe='" & UCase(T6.Text) & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select aoe  from  examcenter where city='" & UCase(t3.Text) & "'and ename='" & UCase(t4.Text) & "'and aoe='" & UCase(T6.Text) & "'")
            command.Connection = conn
            T6.Text = command.ExecuteScalar
            conn.Close()
        Else
            MsgBox("Examcentre detail not successfully")
           
            T6.Text = ""
              conn.Close()
            
        End If
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete from examcenter where city='" & UCase(t3.Text) & "'and ename='" & UCase(T4.Text) & "' and aoe='" & (T6.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Examcentre details has been deleted")
       
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
       
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update examcenter set et ='" & T7.Text & "',cc= '" & T5.Text & "',state='" & t2.Text & "',cdate='" & T1.Text & "' where city='" & UCase(t3.Text) & "'and ename='" & UCase(T4.Text) & "'and aoe='" & UCase(T6.Text) & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Examcentre  has been updated")
       
        T6.Text = ""
     
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
    
    Protected Sub t2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub d1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
       
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

    Protected Sub t2_SelectedIndexChanged1(ByVal sender As Object, ByVal e As System.EventArgs)
        t3.Items.Clear()
        If t2.Text = "Andhra Pradesh" Then
            t3.Items.Add("Dadam")
            t3.Items.Add("Thinsa")
            t3.Items.Add("sola")
            t3.Items.Add("khela")
            t3.Items.Add("ranglum")
        ElseIf t2.Text = "Arunacha Pradesh" Then
            t3.Items.Add("Hawai")
            t3.Items.Add("Jairampur")
            t3.Items.Add("tawang")
            t3.Items.Add("Changlang")
            t3.Items.Add("Pasighat")
        ElseIf t2.Text = "Assam" Then
            t3.Items.Add("Patna")
            t3.Items.Add("Gaya")
            t3.Items.Add("Haflong")
            t3.Items.Add("Dergaon")
            t3.Items.Add("lakhipur")
        ElseIf t2.Text = "Bihar" Then
            t3.Items.Add("Patna")
            t3.Items.Add("gaya")
            t3.Items.Add("Ara")
            t3.Items.Add("Chapra")
            t3.Items.Add("Hajipur")
        ElseIf t2.Text = "Chattisgarh" Then
            t3.Items.Add("Jashpur")
            t3.Items.Add("Durg")
            t3.Items.Add("Koriya")
            t3.Items.Add("Raysis")
            t3.Items.Add("Bilaspur")
        ElseIf t2.Text = "Goa" Then
            t3.Items.Add("Gama")
            t3.Items.Add("Curchorem")
            t3.Items.Add("Ponda")
            t3.Items.Add("Mormugao,")
            t3.Items.Add("Valpoi")
        ElseIf t2.Text = "Gujrat" Then
            t3.Items.Add("Morvi")
            t3.Items.Add("Anand")
            t3.Items.Add("Surat")
            t3.Items.Add("Jamnanagar")
            t3.Items.Add("Rajkot")
        ElseIf t2.Text = "Harayana" Then
            t3.Items.Add("Hisar")
            t3.Items.Add("Rohtak")
            t3.Items.Add("Ambala")
            t3.Items.Add("Jind")
            t3.Items.Add("Kosli")
            
        ElseIf t2.Text = "Himachal Pradesh" Then
            t3.Items.Add("badsar")
            t3.Items.Add("Una")
            t3.Items.Add("Kullu Manali")
            t3.Items.Add("Rohtang Pass")
            t3.Items.Add("Kufri")
        ElseIf t2.Text = "Jarkhand" Then
            t3.Items.Add("Ranchi")
            t3.Items.Add("Deoghar")
            t3.Items.Add("Phusro")
            t3.Items.Add("Palamu")
            t3.Items.Add("Dhanbad")
        ElseIf t2.Text = "karnatka" Then
            t3.Items.Add("Bidar")
            t3.Items.Add("Hassan")
            t3.Items.Add("Mandya")
            t3.Items.Add("Kolara")
            t3.Items.Add("Haveri")
        ElseIf t2.Text = "kerala" Then
            t3.Items.Add("Kochi")
            t3.Items.Add("Alleppey")
            t3.Items.Add("Munnar")
            t3.Items.Add("Kovalam")
            t3.Items.Add("ldukki")
        ElseIf t2.Text = "Madhya Pradesh" Then
            t3.Items.Add("Bhopal")
            t3.Items.Add("Kanha")
            t3.Items.Add("Baihar")
            t3.Items.Add("Gwaliaor")
            t3.Items.Add("Ujjain")
        ElseIf t2.Text = "Maharashtra" Then
            t3.Items.Add("Pune")
            t3.Items.Add("Shirdi")
            t3.Items.Add("Mumabi")
            t3.Items.Add("Nagpur")
            t3.Items.Add("Aurangabad")
        ElseIf t2.Text = "Manipur" Then
            t3.Items.Add("Senapati")
            t3.Items.Add("Kumbi")
            t3.Items.Add("Lamlai")
            t3.Items.Add("Lilong")
            t3.Items.Add("Chandel")
        ElseIf t2.Text = "Meghalaya" Then
            t3.Items.Add("Shilong")
            t3.Items.Add("Jowai")
            t3.Items.Add("Dawki")
            t3.Items.Add("Jorabat")
            t3.Items.Add("Baghmara")
        ElseIf t2.Text = "Nagaland" Then
            t3.Items.Add("Dimapur")
            t3.Items.Add("Kohima")
            t3.Items.Add("Mon")
            t3.Items.Add("Peren")
            t3.Items.Add("Phek")
            
        ElseIf t2.Text = "Odhisha" Then
            t3.Items.Add("Bisahupur")
            t3.Items.Add("Chandel")
            t3.Items.Add("Lilong")
            t3.Items.Add("Lamlai")
            t3.Items.Add("Senapati")
        ElseIf t2.Text = "Punjab" Then
            t3.Items.Add("Amritsar")
            t3.Items.Add("Ludhiana")
            t3.Items.Add("Patiala")
            t3.Items.Add("Jlandhar")
            t3.Items.Add("Batala")
        ElseIf t2.Text = "Rajasthan" Then
            t3.Items.Add("Jaipur")
            t3.Items.Add("Jodpur")
            t3.Items.Add("Vadipur")
            t3.Items.Add("Bharatpur")
            t3.Items.Add("Ajmer")
             

        ElseIf t2.Text = "Sikkim" Then
            t3.Items.Add("Gangtok")
            t3.Items.Add("Pelling")
            t3.Items.Add("Lachess")
            t3.Items.Add("Ravanger")
            t3.Items.Add("Lachisng")
            



        ElseIf t2.Text = "Tamil Nadu" Then
            t3.Items.Add("Chennai")
            t3.Items.Add("Vellore")
            t3.Items.Add("Salem")
            t3.Items.Add("Madurai")
            t3.Items.Add("Tirupper")
            
        ElseIf t2.Text = "Uttarakhand" Then
            t3.Items.Add("Dehradun")
            t3.Items.Add("Haridwar")
            t3.Items.Add("Alorme")
            t3.Items.Add("Srinagar")
            t3.Items.Add("Mussori")
        ElseIf t2.Text = "Uttar Pradesh" Then
            t3.Items.Add("Lucknow")
            t3.Items.Add("Kanpur")
            t3.Items.Add("Meerut")
            t3.Items.Add("Varanasi")
            t3.Items.Add("Noida")
            
        ElseIf t2.Text = "West Bengal" Then
            t3.Items.Add("Kolkata")
            t3.Items.Add("Asansad")
            t3.Items.Add("Durgapur")
            t3.Items.Add("Hakra")
            t3.Items.Add("Shantipur")
        End If
    End Sub

    Protected Sub t3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

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
	left: 258px;
	top: 69px;
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
.style19 {
	height: 23px;
	font-weight: bold;
	color: #000000;
}
.style20 {
	height: 61px;
	font-weight: bold;
	color: #000000;
}
.style22 {
	color: #000000;
	font-weight: bold;
        width: 120px;
    }
.style23 {color: #000000}
.style24 {width: 65%; font-size: medium; font-weight: bold; color: #000000; }
.style26 {color: #006DF0; font-weight: bold; }
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
        <td width="85%"><a href="admindashboard.aspx"><span class="style26">Home</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ex.png" width="25" height="25" /></td>
        <td><span class="style26"><a href="adminexamnotice.aspx">Examination Notice</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/reqic.png" width="25" height="25" /></td>
        <td><span class="style26">Recuritment Application</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/a.png" width="25" height="25" /></td>
        <td><a href="adminexamcenter.aspx"><span class="style26">Examination Centre</span></a></td>
      </tr>
      <tr>
        <td height="29"><img src="../images/logos/greadeicon.png" width="25" height="25" /></td>
        <td><a href="admincarddetail.aspx"><span class="style26">Grade Card Detail</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/exam result.png" alt="" width="25" height="25" /></td>
        <td><span class="style26">Examination Result</span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/cuicon.png" width="25" height="25" /></td>
        <td><a href="admincuttoffmarks.aspx"><span class="style26">Cutt Of Marks</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/sybbicon copy.png" width="25" height="25" /></td>
        <td><a href="adminexamsyllabus.aspx"><span class="style26">Syllabus</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ques icon.png" width="25" height="25" /></td>
        <td><a href="adminprevques.aspx"><span class="style26">Previous Question Paper</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abouticon.png" width="25" height="25" /></td>
        <td><a href="adminaboutus.aspx"><span class="style26">About Us</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/formsicon copy.png" width="25" height="25" /></td>
        <td><a href="adminformsupload.aspx"><span class="style26">Forms and Download</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/faqicon.png" width="25" height="25" /></td>
        <td><a href="FAQDetail.aspx"><span class="style26">FAQ's</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/news icon.png" width="25" height="25" /></td>
        <td><a href="adminnew.aspx"><span class="style26">Current News </span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/abc.png" width="25" height="25" /></td>
        <td><span class="style26"><a href="adminrti.aspx">RTI</a></span></td>
      </tr>
      <tr>
        <td><img src="../images/logos/efg.png" width="25" height="25" /></td>
        <td><a href="adminexamfinal.aspx"><span class="style26">Upcoming Examination</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/ssss.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style26">Written Result</span></a></td>
      </tr>
      <tr>
        <td><img src="../images/logos/Untitled-1 copy.png" width="25" height="25" /></td>
        <td><a href="admininterview.aspx"><span class="style26">Final Result</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv6">
    &nbsp;<table width="100%" border="0">
      <tr>
        <td colspan="2"><div align="center" class="style22">
            <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
            </div></td>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" 
                onclick="LinkButton1_Click">Logout</asp:LinkButton>
          </td>
      </tr>
      
      <tr>
        <td colspan="4" style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Examination Center Detail</td>
      </tr>
      
      <tr>
        <td colspan="4"><hr /></td>
      </tr>
      <tr>
        <td colspan="4"><span class="style23"></span></td>
      </tr>
      <tr>
        <td class="style11">Current Date</td>
        <td width="29%" class="style12" colspan="2">          <span class="style23"><strong>
            <asp:TextBox ID="T1" runat="server" Height="22px"></asp:TextBox>
          </strong> </span></td>
        <td width="4%" class="style19">&nbsp;</td>
      </tr>
      <tr>
        <td class="style13">State</td>
        <td class="style14" colspan="2">          
            <asp:DropDownList ID="t2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="t2_SelectedIndexChanged1" style="height: 22px">
                <asp:ListItem Value="Select Any One"></asp:ListItem>
                <asp:ListItem Value="Andhra Pradesh"></asp:ListItem>
                <asp:ListItem Value="Arunachal Pradesh"></asp:ListItem>
                <asp:ListItem Value="Assam"></asp:ListItem>
                <asp:ListItem Value="Bihar"></asp:ListItem>
                <asp:ListItem Value="Chattisgarh"></asp:ListItem>
                <asp:ListItem Value="Goa"></asp:ListItem>
                <asp:ListItem Value="Gujrat"></asp:ListItem>
                <asp:ListItem Value="Haryana"></asp:ListItem>
                <asp:ListItem Value="Himachal Pradesh"></asp:ListItem>
                <asp:ListItem Value="Jharkhand"></asp:ListItem>
                <asp:ListItem Value="Karnatka"></asp:ListItem>
                <asp:ListItem Value="Kerala"></asp:ListItem>
                <asp:ListItem Value="Madhya Pradesh"></asp:ListItem>
                <asp:ListItem Value="Maharashtra"></asp:ListItem>
                <asp:ListItem Value="Manipur"></asp:ListItem>
                <asp:ListItem Value="Meghalaya"></asp:ListItem>
                <asp:ListItem Value="Nagaland"></asp:ListItem>
                <asp:ListItem Value="Odhisha"></asp:ListItem>
                <asp:ListItem Value="Punjab"></asp:ListItem>
                <asp:ListItem Value="Rajasthan"></asp:ListItem>
                <asp:ListItem Value="Sikkhim"></asp:ListItem>
                <asp:ListItem Value="Tamil Nadhu">Tamil Nadhu</asp:ListItem>
                <asp:ListItem Value="Uttarakhand"></asp:ListItem>
                <asp:ListItem Value="Uttar Pradesh"></asp:ListItem>
                <asp:ListItem Value="West Bengal"></asp:ListItem>
            </asp:DropDownList>
          </td>
        <td class="style20"></td>
      </tr>
      <tr>
        <td class="style24">City
        <td colspan="2">          
            <asp:DropDownList ID="t3" runat="server" 
                onselectedindexchanged="t3_SelectedIndexChanged">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          </td>
        <td><span class="style23"></span> </td>
      </tr>
      <tr>
        <td class="style24">Examination Name</td>
        <td colspan="2">          
            <asp:DropDownList ID="t4" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="examname" DataValueField="examname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [examname] FROM [examnotice]"></asp:SqlDataSource>
          </td>
        <td><span class="style23"></span> </td>
      </tr>
      <tr>
        <td class="style24">Center Code</td>
        <td colspan="2"><span class="style23"><strong>
          <asp:TextBox ID="T5" runat="server" Height="22px"></asp:TextBox>
        </strong></span></td>
        <td><span class="style23"></span></td>
      </tr>
      <tr>
        <td class="style24">Address of Exam</td>
        <td colspan="2"><span class="style23"><strong>
          <asp:TextBox ID="T6" runat="server"></asp:TextBox>
        </strong></span></td>
        <td><span class="style23"></span></td>
      </tr>
      <tr>
        <td class="style24">Exam Time</td>
        <td colspan="2"><span class="style23"><strong>
          <asp:TextBox ID="T7" runat="server"></asp:TextBox>
        </strong></span></td>
        <td><span class="style23"></span> </td>
      </tr>
      <tr>
        <td class="style24">
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
        <td colspan="2"><span class="style23"></span></td>
        <td><span class="style23"></span></td>
      </tr>
      <tr>
        <td class="style24">&nbsp;</td>
        <td colspan="2"><span class="style23"></span></td>
        <td><span class="style23"></span></td>
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
