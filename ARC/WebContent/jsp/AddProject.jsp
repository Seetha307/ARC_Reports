<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- beginning of head section -->
<head>
<% String contextPath = request.getContextPath();
 %>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript" src="<%=contextPath %>/Scripts/Validations.js"></script>
<!-- Style sheet inclusion  -->
<link rel="stylesheet" href="<%=contextPath%>css/standard.css" type="text/css">
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">

</head>

<script>
function fnProjectSetupHome(){
	
	document.forms.AddProjectfrm.method='post';
	document.forms.AddProjectfrm.action='<%=contextPath%>/jsp/ProjectSetup1.jsp';
	document.forms.AddProjectfrm.submit();
}
</script>
<body topmargin="0" leftmargin="0">
<form name="AddProjectfrm" method="post" action="<%=contextPath %>/AddProjectServlet">

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
<!-- beginning of the form for CMM Level Adherence -->
<br>
<br>

<div id="errorAddMsg" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project Added Successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
			<div id="errorAddMsg1"style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Internal Error Occured While Adding Project</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
<div id="errorDescriptionDiv" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Please enter Project Description</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>


<div id="errorProjectcodeDiv" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Please enter Project Code</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>

<%
	String errorAddMsg=(String)request.getAttribute("success"); 

	if(errorAddMsg!=null)
	{System.out.println("Sucess");
%>

			
			
<script>

document.getElementById("errorAddMsg").style.display ="inline";
document.getElementById("errorDescriptionDiv").style.display ="none";
document.getElementById("errorAddMsg1").style.display ="none";
document.getElementById("errorProjectcodeDiv").style.display ="none";
</script>


<% } String errorAddMsg1=(String)request.getAttribute("fail"); 

	if(errorAddMsg1!=null)
	{
%>

<script>
document.getElementById("errorAddMsg1").style.display ="inline";
document.getElementById("errorAddMsg").style.display ="none";
document.getElementById("errorDescriptionDiv").style.display ="none";
document.getElementById("errorProjectcodeDiv").style.display ="none";
</script>
<%} %>





<TABLE border="0" width="98%">
				
				
				<TR>
					<TD class=bodytext align="right"></TD>
				</TR>

				<TR>
					<TD>
						<font face="verdana" color="#4f81bd" size="5">Project Setup
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
<table class=fieldBlue border="0" width="40%" align="center">
<tr>
	<td align="center"><p>Project Code</p></td>
	<td><input type="text"name="txtprojcode"maxlength="25" size="30"></td>

</tr>

<tr>
	<td align="center"><p>Project Description</td>
	<td><input type="text"name="txtprojcodeDescription"maxlength="25" size="30"></td>

</tr>
<tr>
	<td align="center"><p>Type</td>
	<TD>
	<select name="type">
	<option selected >Standard</option>
	<option>Non-Standard</option>
	<option>Special</option>
	</select>
	</TD>

</tr>
<tr>
	<td align="center"><p>CMM Level</td>
	<TD>
	<select name="cmm">
	<option selected>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	</select>
	</TD>
</tr>
<tr>
	<td align="center"><p>Location</td>
	
	<TD>
	<select name="Locations">
	<option>M-City</option>
	<option>Shols</option>
	<option>Trivandrum</option>
	<option>Onsite</option>
	</select>
	</TD>

</tr>
<tr>
	<td align="center"><p>Month</td>
	<TD>
	<select name="Month">
	<option>Jan</option>
	<option>Feb</option>
	<option >Mar</option>
	<option selected>Apr</option>
	<option>May</option>
	<option>Jun</option>
	<option>Jul</option>
	<option>Aug</option>
	<option>Sep</option>
	<option>Oct</option>
	<option>Nov</option>
	<option>Dec</option>
	</select>
	</TD>

</tr>
</table>
<br><br>
<center><input type="button" value="Save" onclick="fnAddProject()">&nbsp;&nbsp;&nbsp;
<input type=reset value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="PrjectSetup Home" onclick="fnProjectSetupHome()"/>

</center>
 <!--end of table -->
</form>
 <!--end of form --> 
<!--end of body -->
</body>
<!--end of body -->
</html>
