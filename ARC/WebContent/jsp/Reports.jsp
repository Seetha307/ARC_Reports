



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
<link rel = "stylesheet" type="text/css" href="/ARC/css/walgreens.css">

<script type="text/javascript">

function fnFetchPreviousData()
{	
	idvalue=document.frmProjectSetup.ProjMonth.value;
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='/ARC/FetchPreviousDataServlet?SelectedMonth='+idvalue;
	document.forms.frmProjectSetup.submit();
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
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupUpdateServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
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
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupDeleteServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}




function submitMe(currPageNo) {
	
	
	PjectCode=
	
	CMM=
	Type=0
	PjectMonth=0
	alert(PjectMonth);
	alert(CMM);
	alert(Type);alert(PjectCode);
	document.frmProjectSetup.SetupProjectcode.value=PjectCode;
	document.frmProjectSetup.ProjectSetupCmm.value=CMM;
	document.frmProjectSetup.ProjectSetuptype.value=Type;
	document.frmProjectSetup.ProjectSetupMonth.value=PjectMonth;
	
	prevPageNo=currPageNo-1;
	curstartPage=(prevPageNo*10*6);
	curEndPage=currPageNo*10*6;
	
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupServlet?startPage='+curstartPage+'&endPage='+curEndPage;
	document.forms.frmProjectSetup.submit();
	
}
f