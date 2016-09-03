<%-- 
    Document   : jsppiechart
    Created on : 1 Sep, 2008, 1:01:09 PM
    Author     : komal
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import ="org.jfree.data.*"%>
<%@ page  import ="com.ARCdao.*"%>
<%@ page  import ="java.util.ArrayList"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WALGREENS Chj</title>
    </head>
    <%
String contextPath = request.getContextPath();
%>
    <link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">
   <script>
   function fnProjectSetupHome(){
	
	document.forms.frmGenerateChart.method='post';
	document.forms.frmGenerateChart.action='<%=contextPath%>/jsp/ProjectSetup1.jsp';
	document.forms.frmGenerateChart.submit();
}
function fnRefresh(){
window.location.reload();

}

function submitMe(Month) {
	document.forms.frmGenerateChart.method='post';
	document.forms.frmGenerateChart.action='<%=contextPath%>/GenerateChartServlet?SelectedMonth'+Month;
	document.forms.frmGenerateChart.submit();
}

   </script>
   
    <body >
   <form name="frmGenerateChart" method="post" action="<%=contextPath%>/jsp/ProjectSetup1.jsp" >
	<!-- Graphic file inclusion  -->
<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
	height="60">
	<TR>
		<TD width="13%" align="left">&nbsp;&nbsp;&nbsp;<IMG
			align="center" height=150 src="<%=contextPath%>/images/KnowIt.bmp"
			width=960 border=0></TD>
		<TD>&nbsp;</TD>
	</TR>
	<tr width="100%">
		<td bgcolor="#333399" width="100%" colspan=3><img
			src="<%=contextPath%>/images/spacer.gif" width="1" height="1"></td>
	</tr>
</TABLE>
<!--End of HEADer-->
<table width="100%" align="center" border="0">
	<tr>
		<td align="right">
		<h6><a class="linkoff">Printable&nbsp;Version</a>&nbsp;|&nbsp;<A
			href="<%=contextPath%>/jsp/Login.jsp">Logout</A>&nbsp;|&nbsp;<A
			href="Contactus.jsp">Contact&nbsp;Us</A>&nbsp;|&nbsp;<A href="*">Tips</A>&nbsp;|&nbsp;<A
			href="*">Help</A></h6>
		</td>

	</tr>
</table>

<script type="text/javascript"
	src="<%=contextPath%>/Scripts/milonic_src.js"></script> <script
	type="text/javascript" src="<%=contextPath%>/Scripts/mmenudom.js"></script>
<script type="text/javascript"
	src="<%=contextPath%>/Scripts/menu_data.js"></script> <br>
<br>
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
			<table>
			<tr align="left"><td>
			Select Month vice Report :</td>
			
			<td>
			<select name="montreport" onChange="submitMe(this.value)">
			<option selected value="0">Select</option>
	<%
	ArrayList monthList=new ArrayList();
	monthList=(ArrayList)request.getAttribute("monthList");
	String monthrep=null;
	if(monthList!=null){
	for (int j = 0; j < monthList.size(); j++) {
		monthrep=(String)monthList.get(j);
	%>
		<option value="<%=monthrep %>"><%=monthrep%></option>
		<%
		}
	}
		%>
		</select></td>
		</tr>
			<table>
	<center>
		<table width="100%" >
		<tr>
		<td>
		<font face="verdana" color="#4f81bd" size="4">
						Displaying   Month Report </font>
		</td>
		<td></td>
		</tr>
		<tr align="center">
		<td>
        <IMG align="center" SRC="<%=contextPath%>/images/projectpiechart.bmb" WIDTH="600" HEIGHT="400" BORDER="0" USEMAP="#projectchart">
		<td>
		</tr>
		<tr align="center">
		<td>
        <IMG align="center" SRC="<%=contextPath%>/images/employeepiechart.bmb" WIDTH="600" HEIGHT="400" BORDER="0" USEMAP="#employeechart">
		<td>
		</tr>
		<tr>
		</tr><tr>
		</tr>
		<tr align="center">
		<td>
		<input type="button" value="PrjectSetup Home" onclick="fnProjectSetupHome()"/>
		</td>
		</tr>
		</table>
		</center>
		</table>
		</table>
		</form>
		</body>
</html>

