<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- beginning of head section -->
<head>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%
String contextPath = request.getContextPath();
%>
<!-- Style sheet inclusion  -->
<link rel="stylesheet" href="<%=contextPath%>css/standard.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=contextPath%>/css/walgreens.css">
<script type="text/javascript">
function submitMe(currPageNo) {
	var currRow=(currPageNo-1)*10;
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/jsp/ProjectSetup.jsp?startInd='+currRow+'&selPgNo='+currPageNo;
	document.forms.frmProjectSetup.submit();
	
}
function fnselectall()
{
if(checkall.checked == true)
{
check1.checked=true;
check2.checked=true;
check3.checked=true;
check4.checked=true;
check5.checked=true;
}
else
{
check1.checked=false;
check2.checked=false;
check3.checked=false;
check4.checked=false;
check5.checked=false;
}
}

</script>
</head>
<body topmargin="0" leftmargin="0">
<form name="frmProjectSetup" method="post"
	action="<%=contextPath%>/ProjectSetupServlet"><!-- Graphic file inclusion  -->
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
<!-- beginning of the form for CMM Level Adherence -->
<table width=100% border=0>
	<tr>
		<td align=left width=33%>
		<h1>Project Setup</h1>
		</td>
	</tr>
</table>



<!--start of search-->

<TABLE class=fieldBlue width="99%" align="center" border="0">
	<TR>
		<TD>
		<p>Project&nbsp;Code&nbsp;</p>
		</TD>
		<TD align=left><INPUT class=inputField id=txtProjectCode
			name="SetupProjectcode">
		<TD>
		<p>CMM&nbsp;Level</p>
		</TD>
		<TD align=left><INPUT class=inputField id=txtAccName
			name="ProjectSetupCmm"></TD>
		<TD>
		<p>Type&nbsp;</p>
		</TD>
		<TD align=left><select name="ProjectSetuptype">
			<option selected value="0">Select</option>
			<option  value="Standard">Standard</option>
			<option value="Non-Standard">Non-Standard</option>
			<option  value="Special">Special</option>
		</select></TD>
		<TD>
		<p>Month&nbsp;</p>
		</TD>
		<TD><select name="ProjectSetupMonth">
			<option value="0">Select</option>
			<option value="Jan">Jan</option>
			<option value="Feb">Feb</option>
			<option value="Mar">Mar</option>
			<option value="Apr">Apr</option>
			<option value="May">May</option>
			<option value="Jun">Jun</option>
			<option value="Jul">Jul</option>
			<option value="Aug">Aug</option>
			<option value="Sep">Sep</option>
			<option value="Oct">Oct</option>
			<option value="Nov">Nov</option>
			<option value="Dec">Dec</option>
		</select></TD>


		<TD><input type="Submit" name="btnView" value="Find" class=button
			style="LEFT: 0px; TOP: 1px"></TD>
	</TR>
</TABLE>
<%
	int i=0;
ArrayList allpjectList=null;
 allpjectList = new ArrayList();
	
	allpjectList=(ArrayList)request.getAttribute("allprojectList");
	System.out.print("ProjectCode=======");
	int numberofPages=0;
	
	if(allpjectList!=null)
	{
		int endIndex=0;
		int startIndex;
		 startIndex=Integer.parseInt(request.getParameter("startRow"));
		int numberOfRowsperPage=10;
		int pagesize=(allpjectList.size()/6);
		numberofPages=(pagesize/numberOfRowsperPage);
	
		if((startIndex+numberOfRowsperPage)>allpjectList.size())
		{			endIndex=allpjectList.size()%(startIndex+numberOfRowsperPage);
		}else
		{
					endIndex=startIndex+numberOfRowsperPage;
		}
		System.out.println("No of Pages = "+numberofPages);
		
	
	%>
	
	<table width="100%" class="class=fieldBlue">
	<th style="text-align: right">
	<td style="text-align: right">
	<b><%=pagesize %></b> details found. &nbsp;&nbsp;&nbsp;&nbsp;Displaying <b><%=startIndex+1 %></b> - <b><%=endIndex %></b>
	<%if(pagesize>numberOfRowsperPage){
		int pgNo = Integer.parseInt(request.getParameter("selPgNo"));%>
	&nbsp;&nbsp;&nbsp;&nbsp; Page No: <b><%=pgNo %></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Go To: &nbsp;&nbsp;
	<% int ttlNoOfPages=numberofPages+1;
	if(pgNo>01) {%> 
		&nbsp;&nbsp;<a href="javaScript:submitMe(<%=(pgNo-1)%>)">Prev</a>&nbsp;&nbsp;
	<%}%>
	<select name="pageNo" onChange="submitMe(this.value)">
	<%
	for(int j=0;j<=numberofPages;j++) {
		%>
		<option value="<%=j+1 %>"><%=j+1 %></option>
		<%
		}
	
	%>
	</select>
	<%if(pgNo<(numberofPages+1)) {%> 
		&nbsp;&nbsp;<a href="javaScript:submitMe(<%=(pgNo+1)%>)">Next</a>&nbsp;&nbsp;
	<%}
	}
	%>
	</td>
	
	
	</table>

<%
for(i=startIndex;i<endIndex;i++){

	
	
		if(allpjectList!=null)
	{
	System.out.print("ProjectCode======="+allpjectList.size() );
		
		
			
			String ProjectCode = (String)allpjectList.get(i);i++;
			String Month = (String)allpjectList.get(i);i++;
			String ProjectDescription = (String)allpjectList.get(i);i++;
			String Type = (String)allpjectList.get(i);i++;
			String CmmLevel = (String)allpjectList.get(i);i++;
			String Location = (String)allpjectList.get(i);
			System.out.print("ProjectCode=======" + ProjectCode);
	
	%>
	<table>
	<tr>
		<TD width="8%"><center><input type="checkbox" name="check<%=i%>"></center></td>
		<td><input type="text" name="txtprojcode<%=i %>" maxlength="25" 
			size="10" value="<%=ProjectCode %>"></td>
		<td><input type="text" name="txtprojdesc<%=i %>" maxlength="25"
			size="10"value="<%=ProjectDescription %>"></td>
		<td><input type="text" name="txtprojType<%=i %>" maxlength="25"
			size="10"value="<%=Type %>"></td>
		<td><input type="text" name="txtprojCMMLevel<%=i %>" maxlength="25"
			size="10"value="<%=CmmLevel %>"></td>
		<td><input type="text" name="txtprojLocation<%=i %>" maxlength="25"
			size="10"value="<%=Location %>"></td>
		<td><input type="text" name="txtprojMonth<%=i %>" maxlength="25"
			size="10"value="<%=Month %>"></td>
	</tr>
	<%
		}
	} 
	}
	%>
	
	
</table>


<table width="100%" align="center" border="1" class="simpletable">
	<tr>
		<th ><input type="checkbox" name="checkall"
			onclick="fnselectall()"></th>
		<th>
		<p>Project Code</p>
		</th>
		<th>
		<p>Project Description</p>
		</th>
		<th>
		<p>Type</p>
		</th>
		<th>
		<p>CMM Level</p>
		</th>
		<th>
		<p>Location</p>
		</th>
		<th><select name="select">
			<option selected>Month</option>
			<option>Jan</option>
			<option>Feb</option>
			<option>Mar</option>
			<option>Apr</option>
			<option>May</option>
			<option>Jun</option>
			<option>Jul</option>
			<option>Aug</option>
			<option>Sep</option>
			<option>Oct</option>
			<option>Nov</option>
			<option>Dec</option>
		</select></th>
	</tr>
	
	<%
	
		if(allpjectList!=null)
	{
	System.out.print("ProjectCode======="+allpjectList.size() );
		
		for (i = 0; i < allpjectList.size(); i++) {
			
			String ProjectCode = (String)allpjectList.get(i);i++;
			String Month = (String)allpjectList.get(i);i++;
			String ProjectDescription = (String)allpjectList.get(i);i++;
			String Type = (String)allpjectList.get(i);i++;
			String CmmLevel = (String)allpjectList.get(i);i++;
			String Location = (String)allpjectList.get(i);
			System.out.print("ProjectCode=======" + ProjectCode);
	
	%>
	<tr>
		<TD width="8%"><center><input type="checkbox" name="check<%=i%>"></center></td>
		<td><input type="text" name="txtprojcode<%=i %>" maxlength="25" 
			size="10" value="<%=ProjectCode %>"></td>
		<td><input type="text" name="txtprojdesc<%=i %>" maxlength="25"
			size="10"value="<%=ProjectDescription %>"></td>
		<td><input type="text" name="txtprojType<%=i %>" maxlength="25"
			size="10"value="<%=Type %>"></td>
		<td><input type="text" name="txtprojCMMLevel<%=i %>" maxlength="25"
			size="10"value="<%=CmmLevel %>"></td>
		<td><input type="text" name="txtprojLocation<%=i %>" maxlength="25"
			size="10"value="<%=Location %>"></td>
		<td><input type="text" name="txtprojMonth<%=i %>" maxlength="25"
			size="10"value="<%=Month %>"></td>
	</tr>
	<%
		}
	} 
	%>
	
	
</table>


<table align=center>
	<tr>

		<td align="center"><input type=button value="Add"
			onClick=location.replace("<%=contextPath%>/jsp/AddProject.jsp")></td>

		<td align="center"><input type=button value="Save"
			onClick="ProjectSetUp.jsp" /></td>

		<td align="center"><input type=button value="Delete"
			onClick="ProjectSetUp.jsp" /></td>

		<td align="center"><input type=button value="Fetch Previous Data"
			onClick="ProjectSetUp.jsp" /></td>

	</tr>
</table>
</form>
</body>
</html>
