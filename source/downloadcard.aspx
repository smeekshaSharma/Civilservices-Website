<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To Civil Services Examination</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\civilservices.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from appconform where eid='" & TextBox1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("delete from eidtemp")
            command.Connection = conn
            command.ExecuteScalar()
            sql = "insert into eidtemp values('" & TextBox1.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Login Succeed")
            Response.Redirect("printcard.aspx")
        Else
            MsgBox("Wrong Enrollment Id")
            
        End If
        conn.Close()
              
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:836px;
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
	height:502px;
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
#apDiv7 {
	position:absolute;
	width:100%;
	height:39px;
	z-index:4;
	left: 0px;
	top: 451px;
	background-color: #353535;
}
#apDiv8 {
	position:absolute;
	width:100%;
	height:213px;
	z-index:2;
	left: 0px;
	top: 105px;
}
.style6 {font-size: 24px; font-weight: bold; color: #154979; }
.style7 {
	font-size: 18px;
	font-weight: bold;
}
.style8 {color: #FF0000}
-->
</style>
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
  <div id="apDiv8">
    <table width="100%" border="0">
      <tr>
        <td colspan="4"><div align="center"><span class="style6">Detailed of Application Form</span></div></td>
      </tr>
      <tr>
        <td colspan="4"><div align="center" class="style7">Civil Services Examinations</div></td>
      </tr>
      <tr>
        <td width="4%">&nbsp;</td>
        <td width="44%"><div align="center"><strong>Enrollment ID</strong></div></td>
        <td width="44%">
            <asp:TextBox ID="TextBox1" runat="server" Width="497px"></asp:TextBox>
          </td>
        <td width="8%">&nbsp;</td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#154979" Font-Bold="True" 
                ForeColor="White" onclick="Button1_Click" Text="Download" />
          </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="4"><hr /></td>
      </tr>
      <tr>
        <td colspan="4"><div align="center"><span class="style8">LOGIN MODULE FOR ONLINE FILLING OF DETAILED APPLICATION FORM BY THE CANDIDATE</span></div></td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
      </tr>
    </table>
  </div>
</div>
    </form>
</body>
</html>
