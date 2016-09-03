<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<% String contextPath = request.getContextPath();
 %>
<!-- Style sheet inclusion  -->
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">
</head>

<body topmargin="0" leftmargin="0">
<form name = "frmHome">

<!-- Graphic file inclusion  -->
<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
height="60">
<TR>
<TD width="13%" align="left">&nbsp;&nbsp;&nbsp;<IMG align="center" height=150 src="<%=contextPath%>/images/KnowIt.bmp" width=960 border=0></TD>
<TD>&nbsp;</TD>
</TR>
<tr width = "100%">
<td bgcolor="#333399" width = "100%" colspan = 3><img src="<%=contextPath%>/images/spacer.gif" width="1" height="1"></td>
</tr>
</TABLE>
<!--End of HEADer-->
<table width = "100%" align = "center" border = "0">
<tr>
<td align = "right">
<h6><a class = "linkoff">Printable&nbsp;Version</a>&nbsp;|&nbsp;<A  href="<%=contextPath%>/jsp/Login.jsp">Logout</A>&nbsp;|&nbsp;<A  href="Contactus.jsp">Contact&nbsp;Us</A>&nbsp;|&nbsp;<A href="*">Tips</A>&nbsp;|&nbsp;<A href="*">Help</A></h6></td>

</tr>
</table>
<script type="text/javascript" src="<%=contextPath%>/Scripts/milonic_src.js"></script> 

<script type="text/javascript" src="<%=contextPath%>/Scripts/mmenudom.js"></script> 
<script type="text/javascript" src="<%=contextPath%>/Scripts/menu_data.js"></script>
	<br><br>		<TABLE border="0" width="98%">
				
				
				<TR>
					<TD class=bodytext align="right"></TD>
				</TR>

				<TR>
					<TD>
						<font face="verdana" color="#4f81bd" size="5">Account Report Card System
						</font>
					</TD>
					<% String user =(String) request.getSession().getAttribute("user");
							if(user != null){
						 %>
					<td align="right">
						<font face="verdana" color="#4f81bd"> Welcome <%=user %></font>
					</td>
					<%
						 	}
						  %>

				</TR>
			</TABLE>
<br>
<table width="100%" border="0">
<tr>
<p class="bodytextLarge">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Account Report Card is your one stop shop for all account related metrics. 
All you need to do is upload the USGAAP and "Allocation To Activities" reports along with some project level details
 and this system will generate reports that you can use for your DM/Senior Management Review.<br>
</p>
</tr>
<tr ><p class="bodytextLarge">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~~ </p></tr>
<tr> <p class="bodytextLarge"> </p></tr>
<tr>
 <p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Business Update Opportunity -Use this section to update opportunities in the pipe line
</p></tr><tr>
<p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Business Update Extended Opportunity Use this section to list the opportunities that were converted to projects
</p></tr>
<tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Revenue Projection  Upload your BE (Best Estimate) data here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Resource Data Upload the Allocation To Activities report here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Project Setup Update the CMMi Level of the projects in your account here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Financial Data Upload the USGAAP report here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Unbilled Effort Set Working Days  Update the number of working days per month here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Unbilled Effort  Unbilled Effort  Upload the unbilled effort data here
</p></tr><tr><p class="bodytextLarge">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Generate Effort  Graphs can be generated here. The graph can be generated as a .pdf or .ppt
 </p></tr>
 </table>


</form>
</body>
</html>
