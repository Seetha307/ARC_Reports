<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>WALGREENS</title>
<script language="javascript">


	var cnt=0;
function fnCallRows()
{


	cnt++;

	a="a"+cnt;

	b="b"+cnt;

	c="c"+cnt;

	d="d"+cnt;

	e="e"+cnt;

	f="f"+cnt;

	g="g"+cnt;

	document.getElementById(a).innerHTML="<input type = 'checkbox' name = 'check1'>";

	document.getElementById(b).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='10' >";

	document.getElementById(c).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='50' >";

	document.getElementById(d).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='5' >";

	document.getElementById(e).innerHTML="<p>100%</p>";

	document.getElementById(f).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='9' >";

	document.getElementById(g).innerHTML="<input align = 'left' type='text' class = 'r' style='FONT-SIZE: 6.5pt' name='Ordpur1' size='15' >";



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
<br>
<TABLE class=fieldBlue border = "0" width="99%" align = "center">
<TR>
<br>
<p><h1>Extension Opportunities (Materialized) in existing projects</h1></p>



<TABLE class=fieldBlue border = "0" width="99%" align = "center">
<TR>
<TD align="center"><p>Project&nbsp;Code&nbsp;</p></TD>
<TD><INPUT class=inputField id=txtConsumerPack name=txtopportunity></TD>
<TD><p>Project&nbsp; Description</p></TD>
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
<table width="100%" border="0" cellspacing="2" cellpadding = "0" class = "simpletable">
<TR align="center">
<Th align="center" width = "" class = "fieldblue">
<font color = black style = "font-size :.8em">
&nbsp;&nbsp;&nbsp;<input type = "checkbox" name = "check">
<strong></strong></font>
</Th>


<Th align = "center"  width = "" class = c class = "fieldblue">
<p align="center">Project&nbsp;Code&nbsp;</p>
</Th>

<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center">Project&nbsp;Description&nbsp;
</p>
</Th>
<Th align = "center" class = c  width = "" class = "fieldblue">
<p align="center">Amount<br>
(in 000 USD)</p>
</Th>
<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center">Probability</p>
</Th>
<Th align = "center" class = c width = "" class = "fieldblue">
<p align="center">Start <br> Date</p>
</Th>


<Th align="center">
<select align="center" name="select">
<option selected>Proposed Location</option>
<option>Shols</option>
<option>MCity</option>
<option >Onsite</option>

</select>

</Th>


</TR>
<TR>
<TD align = "center">
<input type = "checkbox" name = "check1">
</TD>
<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjCode1" size="10" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjDesc1" size="50" >
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Amt1" size="5" >
</TD>

<TD align="center">
<p>100%</p>
</TD>

<TD align="center">
<input type = "text" class = "r" name = Date1 size = 9   style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Loc1" size="15" >
</TD>


</TR>

<TR class="AltRow">
<TD align = "center">
<input type = "checkbox" name = "check2">
</TD>
<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjCode2" size="10" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjDesc2" size="50" >
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Amt2" size="5" >
</TD>

<TD align="center">
<p>100%</p>
</TD>

<TD align="center">
<input type = "text" class = "r" name = Date2 size = 9   style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Loc2" size="15" >
</TD>
</TR>

<TR>
<TD align = "center">
<input type = "checkbox" name = "check3">
</TD>
<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjCode3" size="10" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjDesc3" size="50" >
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Amt3" size="5" >
</TD>

<TD align="center">
<p>100%</p>
</TD>

<TD align="center">
<input type = "text" class = "r" name = Date3 size = 9   style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Loc3" size="15" >
</TD>
</TR>

<TR class="Altrow">
<TD align = "center">
<input type = "checkbox" name = "check4">
</TD>
<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjCode4" size="10" >
</TD>

<TD align = "center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="ProjDesc4" size="50" >
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Amt4" size="5" >
</TD>

<TD align="center">
<p>100%</p>
</TD>

<TD align="center">
<input type = "text" class = "r" name = Date4 size = 9   style="FONT-SIZE: 6.5pt">
</TD>

<TD align="center">
<input type="text" class = "r" style="FONT-SIZE: 6.5pt" name="Loc4" size="15" >
</TD>
</TR>

			<tr>
				<td align = "center" width = "8%" id="a1">&nbsp;&nbsp</td>
				<td align = "center" id="b1"></td>
				<td align = "center" id="c1"></td>
				<td align = "center" id="d1"></td>
				<td align = "center" id="e1"></td>
				<td align = "center" id="f1"></td>
				<td align = "center" id="g1"></td>
			</tr>
			<tr class="Altrow">
				<td align = "center" id="a2"></td>
				<td align = "center" id="b2"></td>
				<td align = "center" id="c2"></td>
				<td align = "center" id="d2"></td>
				<td align = "center" id="e2"></td>
				<td align = "center" id="f2"></td>
				<td align = "center" id="g2"></td>
			</tr>
			<tr>
				<td align = "center" id="a3"></td>
				<td align = "center" id="b3"></td>
				<td align = "center" id="c3"></td>
				<td align = "center" id="d3"></td>
				<td align = "center" id="e3"></td>
				<td align = "center" id="f3"></td>
				<td align = "center" id="g3"></td>
			</tr>

			<tr class="Altrow">
				<td align = "center" id="a4"></td>
				<td align = "center" id="b4"></td>
				<td align = "center" id="c4"></td>
				<td align = "center" id="d4"></td>
				<td align = "center" id="e4"></td>
				<td align = "center" id="f4"></td>
				<td align = "center" id="g4"></td>
			</tr>
			<tr >
				<td align = "center" id="a5"></td>
				<td align = "center" id="b5"></td>
				<td align = "center" id="c5"></td>
				<td align = "center" id="d5"></td>
				<td align = "center" id="e5"></td>
				<td align = "center" id="f5"></td>
				<td align = "center" id="g5"></td>
			</tr>
			<tr class="Altrow">
				<td align = "center" id="a6"></td>
				<td align = "center" id="b6"></td>
				<td align = "center" id="c6"></td>
				<td align = "center" id="d6"></td>
				<td align = "center" id="e6"></td>
				<td align = "center" id="f6"></td>
				<td align = "center" id="g6"></td>
			</tr>

</table>
</td>
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