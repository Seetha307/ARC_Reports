<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>--%>

<html> 
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<% String contextPath = request.getContextPath();
	System.out.println("printing path-----------------------------"+contextPath);

 %>
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">

<script type="text/javascript" src="<%=contextPath %>/Scripts/Validations.js"></script>
</head> 
<body  onload="fnSubmitLogin()">


<form name="loginForm" method="post" action="<%=contextPath %>/LoginServlet">

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
<br><br>
<div id="errorUserDiv" style="display: none">

				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
					
						<tr class="highlight1" >
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Please enter User Name</b> </font>
								</p>
							</td>
						</tr>

				
				</TABLE>
			</div>
			<div id="errorPasswordDiv" style="display: none">
			
				<TABLE table width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Please enter Password</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
			
			<div id="errorMessage1" style="display: none" >
		<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
			
			<tr class="highlight1">
			<td width='1%'>
			<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
			</td>
			<td  height='15' align="center"><p><font color="#ff0000"><b>Username or password is Invalid</b></font></p></td>
			</tr>
			
			
			</TABLE>
			</div>
			<div id="errorAuthMessage" style="display: none" >
		<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
			
			<tr class="highlight1">
			<td width='1%'>
			<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
			</td>
			<td  height='15' align="center"><p><font color="#ff0000"><b>You are not authorized to view this tool!!</b></font></p></td>
			</tr>
			
			
			</TABLE>
			</div>
		
<%
	String user = (String)request.getAttribute("user");
	String pword = (String)request.getAttribute("password");
	String errorMsg = (String)request.getAttribute("errorMsg");
	String errorAuthMessage = (String)request.getAttribute("errorAuthMessage");
	
	if(errorMsg != null){
		%>
		
		<script>
		
		document.getElementById("errorUserDiv").style.display ="none";
		document.getElementById("errorPasswordDiv").style.display ="none";
		document.getElementById("errorMessage1").style.display ="inline";
		document.getElementById("errorAuthMessage").style.display="none";
		</script>
		
		<%				
					}
	if(errorAuthMessage != null){
		%>
		
		<script>
		
		document.getElementById("errorUserDiv").style.display ="none";
		document.getElementById("errorPasswordDiv").style.display ="none";
		document.getElementById("errorAuthMessage").style.display ="inline";
		document.getElementById("errorMessage1").style.display ="none";
		</script>
		
		<%				
					}  
	%>		  


			
<TABLE width="100%" height="100%" align="center" cellspacing="3" 
	cellpadding="5" border="0" >
	<TR>
		<TD class="bodytextbold" align="right"><font class="mand">* </font><font face="tahoma" color="black" >User Name :</font></TD>
  <TD align="left"><%if(user != null) {%><input type = "text" name="user" style="width: 100px;"  value="<%=user %>">
  <%}else{ %>
  	<input type = "text" name="user" style="width: 100px;" >
  <%} %>
  </TD>
  </TR>

  <TR>
  <TD class=bodytextbold align="right"><font class="mand">* </font><font face="tahoma" color="black" >Password :</font></TD>
  <td align="left"><%if(pword != null) {%>
  <input type = "password" name="password" style="width: 100px;"  maxlength="60" value="<%=pword%>"><td>
<%}else{ %>
	 <input type = "password" name="password" style="width: 100px;" maxlength="60"><td>
<%} %>
  </TR>

  </TABLE>
 
  
 
<table width="10%" height="50%" align="center" >
  <tr align ="center">
  
  <td  width="5" align="center"><input type="button" value="Submit" onclick="fnLogin()"></td><Td></Td>
  <td  width="5" align="center"><input type="reset" value="Reset"></td>
   
   </tr>



 </table>
</form>

</body>
</html>