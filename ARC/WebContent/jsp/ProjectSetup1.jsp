<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.lang.String"%>
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
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">

<script type="text/javascript">

function fnFindSubmit()
{	
	document.frmProjectSetup.pageNo.value=1;


	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/FetchPreviousDataServlet?SelectedMonth='+idvalue;
	document.forms.frmProjectSetup.submit();
}

function fnChecked(value)
{
if(document.getElementById("c"+value).checked==true)
{
document.getElementById("errorSaveRow").style.display="none";
}
}

function fnGenChart(){
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/GenerateChartServlet';
	document.forms.frmProjectSetup.submit();
}
function fnFetchPreviousData()
{	
	idvalue=document.frmProjectSetup.ProjMonth.value;
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/FetchPreviousDataServlet?SelectedMonth='+idvalue;
	document.forms.frmProjectSetup.submit();
}
function fnDefault(){
	PjectCode="<%=request.getParameter("SetupProjectcode")%>";
	CMM="<%=request.getParameter("ProjectSetupCmm")%>";	
	Type1="<%=request.getParameter("ProjectSetuptype")%>";
	PjectMonth="<%=request.getParameter("ProjectSetupMonth")%>";
	alert(PjectMonth);
	alert(CMM);
	alert(PjectCode);
	alert(Type1);
	
	if(Type1=="0"||Type1=="")
	{
	Type1="0";alert(Type1);
	}
	if(CMM=="0"||CMM=="")
	{
	CMM="0";alert(CMM);
	}
	if(PjectMonth=="0" ||PjectMonth=="")
	{
	PjectMonth="0";alert(PjectMonth);
	}
	if(PjectCode=="" ||PjectCode=="")
	{
	PjectCode="0";alert(PjectCode);
	}
	
	
	
	
	document.frmProjectSetup.SetupProjectcode.value=PjectCode;
	document.frmProjectSetup.ProjectSetupCmm.value=CMM;
	document.frmProjectSetup.ProjectSetuptype.value=Type1;
	document.frmProjectSetup.ProjectSetupMonth.value=PjectMonth;
}

function fnSubmitSave1(start,end)
{

var idvalue="";
flag=0;

for(i=start+5;i<end;i=i+6)
{

if(document.getElementById("c"+i).checked==true)
{

flag=1;
document.getElementById("pjectMonth"+i).disabled=false;
document.getElementById("pjectcode"+i).disabled=false;
idvalue=idvalue+"-"+i;


}
else{

flag1=2;
}

}


if(flag!=1)
{
document.getElementById("errorDeleteRow").style.display="none";
document.getElementById("errorSaveRow").style.display="inline";
}
else{
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/ProjectSetupUpdateServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}

function fnSubmitSave2(start,end)
{

var idvalue="";
flag=0;

for(i=start+5;i<end;i=i+6)
{

if(document.getElementById("c"+i).checked==true)
{

flag=1;
idvalue=idvalue+"-"+i;
document.getElementById("pjectMonth"+i).disabled=false;
document.getElementById("pjectcode"+i).disabled=false;

}
else{

flag1=2;
}

}


if(flag!=1)
{
document.getElementById("errorDeleteRow").style.display="none";
document.getElementById("errorSaveRow").style.display="inline";
}
else{
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/ProjectSetupSaveServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}
function submitMonth(Motnhvalue,start,end)
{
var idvalue="";
flag=0;
start1=start;
end1=end;
		for(i=start1+5;i<end1;i=i+6)
		{
		
		if(document.getElementById("c"+i).checked==true)
		{
		
		flag=1;
		idvalue=idvalue+"-"+i;
		
		
		}
		else{
		
		flag1=2;
		}
		
		}
		
		
		if(flag!=1)
		{
		document.getElementById("errorDeleteRow").style.display="none";
		document.getElementById("errorSaveRow").style.display="inline";
		}
		else{document.getElementById("errorSaveRow").style.display="none";
		for(j=start+5;j<end;j=j+6)
		{	
			if(document.getElementById("c"+j).checked==true)
			{
			
			document.getElementById("pjectMonth"+j).value=Motnhvalue;
			}
			
		}
}
}
function fnSubmitDelete(start,end)
{

var idvalue="";
flag=0;

for(i=start+5;i<end;i=i+6)
{

if(document.getElementById("c"+i).checked==true)
{

flag=1;
idvalue=idvalue+"-"+i;
document.getElementById("pjectMonth"+i).disabled=false;
document.getElementById("pjectcode"+i).disabled=false;

}
else{

flag1=2;
}

}


if(flag!=1)
{
document.getElementById("errorDeleteRow").style.display="inline";
document.getElementById("errorSaveRow").style.display="none";
}
else{
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/ProjectSetupDeleteServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}




function submitMe(currPageNo) {
	
	
	PjectCode="<%=request.getParameter("SetupProjectcode")%>";
	
	CMM="<%=request.getParameter("ProjectSetupCmm")%>";	
	Type1="<%=request.getParameter("ProjectSetuptype")%>";
	
	PjectMonth="<%=request.getParameter("ProjectSetupMonth")%>";
	
	if(Type1=="0"||Type1=="")
	{
	Type1="0";
	}
	if(CMM=="0"||CMM=="")
	{
	CMM="";
	}
	if(PjectMonth=="0" ||PjectMonth=="")
	{
	PjectMonth="0";
	}
	if(PjectCode=="0" ||PjectCode=="")
	{
	PjectCode="";
	}
	
	document.frmProjectSetup.SetupProjectcode.value=PjectCode;
	document.frmProjectSetup.ProjectSetupCmm.value=CMM;
	document.frmProjectSetup.ProjectSetuptype.value=Type1;
	document.frmProjectSetup.ProjectSetupMonth.value=PjectMonth;
	
	prevPageNo=currPageNo-1;
	curstartPage=(prevPageNo*10*6);
	curEndPage=currPageNo*10*6;
	
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='<%=contextPath%>/ProjectSetupServlet?startPage='+curstartPage+'&endPage='+curEndPage;
	document.forms.frmProjectSetup.submit();
	
}
function selectedPageNo(){
	
	<% ArrayList allpjectList7 = null;
	allpjectList7 = new ArrayList();

	allpjectList7 = (ArrayList) request.getAttribute("allprojectList");
	if(allpjectList7!=null){%>
	var selectedPageNum="<%=request.getParameter("pageNo")%>";
	if(selectedPageNum=="null" ||selectedPageNum=="")
	{
	selectedPageNum=1;
	}
	
	document.frmProjectSetup.pageNo.value=selectedPageNum;
	<% }
	if(allpjectList7==null){%><%
	}%>
}

function fnselectall(start,end)
{
	
	for(i=start+5;i<end;i=i+6)
	{
	if(document.getElementById("chckall").checked==true)
	{
	document.getElementById("c"+i).checked=true;
	}else
	{	document.getElementById("c"+i).checked=false;
	}
	}
}

</script>
</head >
<body topmargin="0" leftmargin="0" onload="selectedPageNo()" >
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
<!-- beginning of the form for CMM Level Adherence -->


<%
	String updateMsg=(String)request.getAttribute("Updatesuccess"); 
	String DeleteMsg=(String)request.getAttribute("Deletesuccess");

System.out.println("Cmin");
	if(updateMsg!=null)
	{System.out.println("UpdateSucess");
%>

	<div id="SavedMsg" display="none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project Saved Successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>		
			
<script>

document.getElementById("SavedMsg").style.display="inline";
document.getElementById("errorUpdateMsg").style.display ="none";
document.getElementById("errorDeleteRow").style.display ="none";
document.getElementById("errorSaveRow").style.display ="none";
</script>


<% } 
	if(DeleteMsg!=null)
	{System.out.println("DeleteSucess");
%>

<div  id="DeleteMsg" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project Deleted Successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>			
			
<script>

document.getElementById("DeleteMsg").style.display="inline";
document.getElementById("errorUpdateMsg").style.display ="none";
document.getElementById("errorDeleteRow").style.display ="none";
document.getElementById("errorSaveRow").style.display ="none";
</script>


<% } 
	
	String errorUpdateMsg1=(String)request.getAttribute("Updatefail"); 
	String errorDeleteMsg1=(String)request.getAttribute("Deletefail"); 
	if(errorUpdateMsg1!=null)
	{
%>

<script>
document.getElementById("errorUpdateMsg").style.display ="inline";
document.getElementById("SavedMsg").style.display ="none";
document.getElementById("errorDeleteRow").style.display ="none";
document.getElementById("errorSaveRow").style.display ="none";
</script>
<%} 
	if(errorDeleteMsg1!=null)
	{
%>

<script>
document.getElementById("errorDeleteMsg").style.display ="inline";
document.getElementById("SavedMsg").style.display ="none";
document.getElementById("errorDeleteRow").style.display ="none";
document.getElementById("errorSaveRow").style.display ="none";
</script>
<%}
	String Inssuccess=(String)request.getAttribute("Inssuccess"); 
	String Insfail=(String)request.getAttribute("Insfail");
	if(Inssuccess!=null)
	{System.out.println("InsertSucess");
%>

<div  id="InssuccessMsg" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project Saved Successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>	
<%}
	if(Insfail!=null)
	{System.out.println("InsertFail");
%>

<div  id="Insfail" >
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Internal Error Occured While Saving the Project</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>	
<%}
%>


			<div id="errorUpdateMsg"style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Internal Error Occured While Saving the Project</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
			<div id="errorDeleteMsg"style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Internal Error Occured While Saving the Project</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
<div id="errorSaveRow" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Select row to save </b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
			<div id="SavedMsg" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight2">
							
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Project Saved Successfully</b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
</div>


			<div id="errorDeleteRow" style="display: none">
			
				<TABLE width='100%' cellspacing='0' cellpadding='4' border='0'>
				
						<tr class="highlight1">
							<td width='1%'>
								<img src="<%=contextPath%>/images/alert.gif" align='middle'>
							</td>
							<td height='15' align="center">
								<p>
									<font color="#ff0000"> <b>Select row to delete </b> </font>
								</p>
							</td>
						</tr>

					
				</TABLE>
			</div>
<!--start of search-->
<br>
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


		<TD><input type="Submit" name="btnView" value="Find" class=button onclick="fnFindSubmit()"
			style="LEFT: 0px; TOP: 1px"></TD>
	</TR>
</TABLE><br>
<%
	int i = 0;
	ArrayList allpjectList = null;
	allpjectList = new ArrayList();

	allpjectList = (ArrayList) request.getAttribute("allprojectList");
	System.out.print("ProjectCode=======");
	int numberofPages = 0;

	if (allpjectList != null) {

		int currentstartPageSize = 0;
		int currentEndPageSize = 60;

		int endIndex = 0;
		int startIndex = 0;
		String color;
		int icount=0;
		int numberOfRowsperPage = 10;
		int pagesize = (allpjectList.size() / 6);
		numberofPages = (pagesize / numberOfRowsperPage);

		if ((startIndex + numberOfRowsperPage) > allpjectList.size()) {
			endIndex = allpjectList.size()
			% (startIndex + numberOfRowsperPage);
		} else {
			endIndex = startIndex + numberOfRowsperPage;
		}
		System.out.println("No of Pages = " + numberofPages);

		System.out.print("Start" + request.getParameter("startPage"));
		System.out.print("end" + request.getParameter("endPage"));
		if ((request.getParameter("startPage") != null)
		&& !(request.getParameter("startPage")
				.equalsIgnoreCase("0"))
		&& (request.getParameter("endPage") != null)
		&& !(request.getParameter("endPage")
				.equalsIgnoreCase("0")))

		{
			int start = Integer.parseInt(request
			.getParameter("startPage"));
			int end = Integer.parseInt(request.getParameter("endPage"));
			currentstartPageSize = start;
			currentEndPageSize = end;
			if (currentEndPageSize > allpjectList.size()) {
		currentEndPageSize = allpjectList.size();
			}

			System.out.print("\nFinal Start" + currentstartPageSize
			+ "\nFinalEnd" + currentEndPageSize);
		}

		if (currentstartPageSize == 0) {
			startIndex = currentstartPageSize + 1;
		}
		if (allpjectList.size() == 0) {
			startIndex = allpjectList.size();
		}
		if (currentstartPageSize > 0) {
			startIndex = (currentstartPageSize / 6) + 1;
		}
		if (currentEndPageSize > allpjectList.size()) {
			currentEndPageSize = allpjectList.size();
		}
%>
	
	<table width="100%" class="class=fieldBlue">
	<th style="text-align: right">
	<td style="text-align: right">
	<b><%=pagesize%></b> details found. &nbsp;&nbsp;&nbsp;&nbsp;Displaying <b><%=startIndex%></b> - <b><%=(currentEndPageSize / 6)%></b>
	<% if(pagesize!=0){%>
	<select name="pageNo" onChange="submitMe(this.value)">
	<%
	for (int j = 0; j <= numberofPages; j++) {
	%>
		<option value="<%=j+1 %>"><%=j + 1%></option>
		<%
		}
	}
		%>
	</select>
	
	</td>
	
	
	</table>


<table width="100%" align="center" border="1" class="simpletable">
	<tr style="background:#ccd4fb">
		<th>&nbsp;&nbsp;<input type="checkbox" id="chckall" name="checkall"
			onclick="fnselectall(<%=currentstartPageSize%>,<%=currentEndPageSize%>)"></th>
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
		<th><select name="ProjMonth" onChange="submitMonth(this.value,<%=currentstartPageSize%>,<%=currentEndPageSize%>);">
			
			<option selected value="0">Month</option>
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
		</select></th>
	</tr>
	
		
		
	<%
								System.out.print("ProjectCode=======" + allpjectList.size());

								for (i = currentstartPageSize; i < currentEndPageSize; i++) {

									String ProjectCode = (String) allpjectList.get(i);
									i++;
									String ProjectDescription = (String) allpjectList.get(i);
									i++;
									String Type = (String) allpjectList.get(i);
									i++;
									String CmmLevel = (String) allpjectList.get(i);
									i++;
									String Location = (String) allpjectList.get(i);
									i++;
									String Month = (String) allpjectList.get(i);
									
									System.out.print("\nProjectCode=======" + ProjectCode+"\nMonth"+Month);
									System.out.print("Value of I" + i);
									session.setAttribute("Start",currentstartPageSize);
									session.setAttribute("End",currentEndPageSize);
									icount=icount+1;
									if(icount%2==0)
									{
										color="background:#E6E6FF";
									}
									else{
										color="background:none";
									}
						%>
	<tr style="<%=color %>">
		<TD width="8%"><center><input type="checkbox"  id="c<%=i %>" name="check<%=i%>" value="<%=i%>" onclick="fnChecked(this.value)"></center></td>
		<td><input type="text" id="pjectcode<%=i %>" name="txtprojcode<%=i %>" maxlength="25" 
			 size="10" value="<%=ProjectCode %>" disabled></td>
		<td><input type="text" name="txtprojdesc<%=i %>" maxlength="25"
			size="10"value="<%=ProjectDescription %>"></td>
		<td><input type="text" name="txtprojType<%=i %>" maxlength="25"
			size="10"value="<%=Type %>"></td>
		<td><input type="text" name="txtprojCMMLevel<%=i %>" maxlength="25"
			size="10"value="<%=CmmLevel %>"></td>
		<td><input type="text" name="txtprojLocation<%=i %>" maxlength="25"
			size="10"value="<%=Location %>"></td>
		<td><input type="text" id="pjectMonth<%=i %>" name="txtprojMonth<%=i %>" maxlength="25"
			 size="10"value="<%=Month %>" disabled></td>
	</tr>
	
	<%
		}
		%>
	
</table>


<table align=center>
	<tr>

		<td align="center"><input type=button value="Add"
			onClick=location.replace("<%=contextPath%>/jsp/AddProject.jsp")></td>

		<td align="center"><input  name="Save" type=button value="Modify"
			onClick="fnSubmitSave1(<%=currentstartPageSize%>,<%=currentEndPageSize%>)" /></td>
			
		<td align="center"><input  name="Save" type=button value="Save"
			onClick="fnSubmitSave2(<%=currentstartPageSize%>,<%=currentEndPageSize%>)" /></td>
		<td align="center"><input name="Delete" type=button value="Delete"
			onClick="fnSubmitDelete(<%=currentstartPageSize%>,<%=currentEndPageSize%>)" /></td>

		<td align="center"><input type=button value="Fetch Previous Data"
			onClick="fnFetchPreviousData()" /></td>
		<td align="center"><input type=button value="Generate Chart"
		onClick="fnGenChart()"  /></td>

	</tr>
</table>
<%
} else {
%>
<table width="100%" align="center" border="1" class="simpletable">
	<tr style="background:#ccd4fb">
		<th ><input type="checkbox" id="chckall" name="checkall"></th>
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
		<th><select name="ProjMonth" >
			
			<option selected value="0">Month</option>
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
		</select></th>
	</tr>
	</table>
		<table align=center>
	<tr>

		<td align="center"><input type=button value="Add"
			onClick=location.replace("<%=contextPath%>/jsp/AddProject.jsp")></td>
		
		<td align="center"><input type=button value="Modify" /></td>
		
		<td align="center"><input type=button value="Save" /></td>

		<td align="center"><input type=button value="Delete" /></td>

		<td align="center"><input type=button value="Fetch Previous Data"
		onClick="fnFetchPreviousData()"  /></td>
		
		<td align="center"><input type=button value="Generate Chart"
		onClick="fnGenChart()"/></td>
		
	</tr>
</table>
<%
}
%>
</form>
</body>
</html>
