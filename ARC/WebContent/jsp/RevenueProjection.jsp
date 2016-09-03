
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Date" %>
       <%@page import="com.ARCdao.*" %>
       
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!-- Style sheet inclusion  -->
<% String contextPath = request.getContextPath();
 %>
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">

</head>

<script>
function fnGenerateSubmit()
{	
	


	document.forms.frmRevenueProjection.method='post';
	document.forms.frmRevenueProjection.action='<%=contextPath%>/RevenueProjectionDataServlet';
	document.forms.frmRevenueProjection.submit();
}
</script>

<body topmargin="0" leftmargin="0">
<form name = "frmRevenueProjection" method="post" >
	


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

<script>

function fnValidatePath()
{
path=document.frmRevenueProjection.browse.value;
IBU=document.frmRevenueProjection.IBU.value;

if((path=="Browse")||(path=="null")||(path=="")){

document.getElementById("EnterPath").style.display ="inline";
//document.write("<div id='alreadyUploaded'>");
//document.write("<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>");
//document.write("<tr class='highlight1'><td height='15' align='center'>");
//document.write("<p><font color='#ff0000'> <b>Plz Choose File!!!!</b> </font></p>");
//document.write("</p></td></tr><table>");
//document.write("</div ");
//document.forms.frmRevenueProjection.method='post';
//document.forms.frmRevenueProjection.action='<%=contextPath %>/RevenueProjection.jsp';
//document.forms.frmRevenueProjection.submit();

}
else if(IBU=="Select"){
document.getElementById("EnterPath").style.display ="none";
document.getElementById("SelectIBU").style.display ="inline";
}
else{
document.forms.frmRevenueProjection.method='post';
document.forms.frmRevenueProjection.action='<%=contextPath %>/UploadRevenueProjectionServlet';
document.forms.frmRevenueProjection.submit();
}
}
</script>




<br>
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
<!--File Upload-->



<%
	
	
	
	String alreadyUploaded=(String)request.getAttribute("alreadyuploadedMsg"); 
	String uploaded=(String)request.getAttribute("uploadedMsg");
	String errMsg=(String)request.getAttribute("errMsg");
	String invalidMsg=(String)request.getAttribute("invalidMsg");

System.out.println("Cmin"+alreadyUploaded+"   "+uploaded+"   "+errMsg);
	if(alreadyUploaded!=null)
	{System.out.println("alreadyUploaded");
	
%>

	<div id="alreadyUploaded">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
							<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project already Uploaded</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
	<%}
	
	if(uploaded!=null)
	{System.out.println("UpdateSucess");
%>

	<div id="UploadedMsg" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Data Uploaded successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
	<%}
	if(errMsg!=null)
	{System.out.println("UpdateSucess");
%>

	<div id="ErrMsg" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
							<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Internal Error Occured while Uploading Data!!!</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
	<%}
	if(invalidMsg!=null)
	{System.out.println("Invalid File");
%>

	<div id="invalidMsg" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
							<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Plz Upload Vaild File!!!</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
	<%}%>
<div id="EnterPath" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
							<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Plz Choose File!!!!</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
<div id="SelectIBU" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
							<img  src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Plz Select IBU!!!!</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
<%

ARCdao arcdao=new ARCdao();
Date date=arcdao.getLasDateModified();
System.out.println("Last Modified:"+date);
if(date!=null)
{
%>
<div id="dateLastUpdated">
		
			<TABLE width='95%' cellspacing='0' cellpadding='4' border='0'>
			
					<tr>
						<td align="right">
							<p>
								<font face="verdana" size="1"color="black">Last Update&nbsp;:&nbsp;<%=date %> </font>
							</p>
						</td>
					</tr>

				
			</TABLE>
</div>		
<%
}
%>	

      
         <table class=fieldBlue border="0" align="center">
              <tr align = "center">
                 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Enter the Path
                
                 <input type="file" name="browse" value="Browse">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <select name="IBU">
			<option value="Select">-Select IBU-</option>
			<option value="RETL">Retail</option>
			<option value="IHL">IHLD</option>
			</select>
			
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="button" name="upload" value="Upload" onclick="fnValidatePath();"><td><a href="<%=contextPath%>/Template/RevenueProjectionTemplate.xls"><p>Download Template</p></a></td>
			
			
              </tr>
              <tr></tr>
              <tr>
			<td align=center>
				<input type="button" name="btnReport" value="Generate Report" onclick="fnGenerateSubmit()">
                  <input type="button" name="btnCancel" value="Cancel">
			</td>
               <tr align = "center">
                
		
                 
               </tr>

         </table>
      
      <!-- End of frmRevenueProjection form -->
</body>
</html>
<!-- End of RevenueProjection.jsp -->




