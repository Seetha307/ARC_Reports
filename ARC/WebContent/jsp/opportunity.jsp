<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>WALGREENS</title>
<SCRIPT language="JavaScript">


	var cnt=0;
function fnCallRows()
{

	
	cnt++;

if(cnt<=7)
{
	a="a"+cnt;
	
	b="b"+cnt;
	
	c="c"+cnt;
	
	d="d"+cnt;
	
	e="e"+cnt;
	
	f="f"+cnt;
		
	
	document.getElementById(a).innerHTML="<input type = 'checkbox' name = 'check1'>";
	
	document.getElementById(b).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='30' >";
	
	document.getElementById(c).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='5' >";
	
	document.getElementById(d).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='5' >";
	
	document.getElementById(e).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='6' >";

	document.getElementById(f).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='9' >";
}

	
}

function nav()
   {
   var w = document.myform.cmbPageIndex.selectedIndex;

   var url_add = document.myform.cmbPageIndex.options[w].value;
   window.location.href = url_add;
   }


</script>

<!-- Style sheet inclusion  -->
<link rel="stylesheet" href="standard.css" type="text/css">

</head>
<body topmargin="0" leftmargin="0">
<form name = "frmopportunity">

<!-- Graphic file inclusion  -->
<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
height="60">
<TR>
<TD width="13%" align="left">&nbsp;&nbsp;&nbsp;<IMG align="center" height=150 src="KnowIt.bmp" width=960 border=0></TD>
<TD>&nbsp;</TD>
</TR>
<tr width = "100%">
<td bgcolor="#333399" width = "100%" colspan = 3><img src="../images/spacer.gif" width="1" height="1"></td>
</tr>
</TABLE>
<!--End of HEADer-->
<table width = "100%" align = "center" border = "0">
<tr>
<td align = "right">
<h6><a class = "linkoff">Printable&nbsp;Version</a>&nbsp;|&nbsp;<A  href="contact.jsp">Contact&nbsp;Us</A>&nbsp;|&nbsp;<A href="Tips.jsp">Tips</A>&nbsp;|&nbsp;<A href="Help.jsp">Help</A></h6></td>

</tr>
</table>

<script type="text/javascript" src="../Scripts/milonic_src.js"></script> 
<script type="text/javascript" src="../Scripts/mmenudom.js"></script> 
<script type="text/javascript" src="../Scripts/menu_data.js"></script>

<br>
<table width=100% border=0>
<br>

<tr></tr>


  
<tr>
	
   <td align=left width=33%><h1>Current Opportunities in CIMBA</h1></td>
   </tr>
  </table>




<TABLE class=fieldBlue border = "0" width="99%" align = "center">
<TR>
<TD align="center"><p>Opportunity&nbsp;Description&nbsp;</p></TD>
<TD><INPUT class=inputField id=txtConsumerPack name=txtopportunity></TD>
<TD><p>Probability</p></TD>
<TD><INPUT class=inputField id=txtConsumerPack name=txtprob></TD>

<td width = 10%>
<input type=button name = btnFind value=Find class=button >
</TD>
</TR>
</TABLE>

<FORM NAME="myform">
<TABLE width="100%" border="0" cellspacing="0" align="center"
 CLASS=NORMAL>
 <TR>
  <TD valign="bottom" align="right"><a href="java script:history.go(-1);">&lt;&lt;Previous</A>&nbsp;<span>
  Page 
<SELECT size="1" name="cmbPageIndex" onChange="javascript:nav();">
   <OPTION value="Home.jsp" >1</OPTION>
   <OPTION value="Home.jsp">2</OPTION>
   <OPTION value="3">3</OPTION>
  </SELECT> of 3&nbsp;</span><a href="java script:history.go(1);">Next &gt;&gt;</A></T></TD>
 </TR>
</TABLE>
</form>

<table width="100%" border="0" cellspacing="2" cellpadding = "0"class = "simpletable">
<TR>
<Th align="center" width = "16%" class = "fieldblue">

<font color = black style = "font-size :.8em">
<strong></strong></font>
</Th>



<Th align = "center"  width = "" class = c class = "fieldblue">
<p align = "center">Opportunity<br>
Description
</p>
</Th>

<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center" >Probability
</p>
</Th>
<Th align = "center" class = c  width = "" class = "fieldblue">
<p align="center">Amount<br>
(in 000 USD)</p>
</Th>
<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center">Start<br>
Date</p>
</Th>
<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center">Proposed<br>
Location</p>
</Th>

</TR>
<TR>
<TD align = "center">
<input type = "checkbox" name = "check1">
</TD>
<TD width = "8%">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="30" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 6 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 9 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>



</TR>

<TR class="AltRow">
<TD align = "center">
<input type = "checkbox" name = "check1">
</TD>
<TD >
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="30" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 6 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 9 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>
</TR>

<TR>
<TD align = "center">
<input type = "checkbox" name = "check1">
</TD>
<TD >
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="30" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 6 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 9 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>
</TR>

<TR class="Altrow">
<TD align = "center">
<input type = "checkbox" name = "check1">
</TD>
<TD >
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="30" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Ordpur1" size="5" >
</TD>

<TD align="center">
<input  type = "text" class = "r" name = cost1 size = 6 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type = "text" class = "r" name = cost1 size = 9 maxlength = 6  style="FONT-SIZE: 6.5pt">
</TD>
</TR>

			<tr>
				<td align = "center" width = "8%" id="a1">&nbsp;&nbsp</td>
				<td align = "center" id="b1"></td>
				<td align = "center" id="c1"></td>
				<td align = "center" id="d1"></td>
				<td align = "center" id="e1"></td>
				<td align = "center" id="f1"></td>
			</tr>
			<tr class="Altrow">
				<td align = "center" id="a2"></td>
				<td align = "center" id="b2"></td>
				<td align = "center" id="c2"></td>
				<td align = "center" id="d2"></td>
				<td align = "center" id="e2"></td>
				<td align = "center" id="f2"></td>
			</tr>
			<tr>
				<td align = "center" id="a3"></td>
				<td align = "center" id="b3"></td>
				<td align = "center" id="c3"></td>
				<td align = "center" id="d3"></td>
				<td align = "center" id="e3"></td>
				<td align = "center" id="f3"></td>
			</tr>
			
			<tr class="Altrow">
				<td align = "center" id="a4"></td>
				<td align = "center" id="b4"></td>
				<td align = "center" id="c4"></td>
				<td align = "center" id="d4"></td>
				<td align = "center" id="e4"></td>
				<td align = "center" id="f4"></td>
			</tr>
			<tr >
				<td align = "center" id="a5"></td>
				<td align = "center" id="b5"></td>
				<td align = "center" id="c5"></td>
				<td align = "center" id="d5"></td>
				<td align = "center" id="e5"></td>
				<td align = "center" id="f5"></td>
			</tr>
			<tr class="Altrow">
				<td align = "center" id="a6"></td>
				<td align = "center" id="b6"></td>
				<td align = "center" id="c6"></td>
				<td align = "center" id="d6"></td>
				<td align = "center" id="e6"></td>
				<td align = "center" id="f6"></td>
			</tr>

</table>




<br>
<br>


<table width="100%" border="0"  cellspacing="0" cellpadding="0" align="right">
<tr width = "100%">
<td align = "center">
<input type = "button" class="button" name = "btnSubmit" type="button" value="Add" width=300 onclick =  "fnCallRows()">&nbsp;
<input type = "button" class="button" name = "btnReset" type="button" value="Save">&nbsp;
<input type = "button" class = "buttons" value = "Delete" width=392 height=350 >
</td>

</tr>
</table>

</form>
</html>