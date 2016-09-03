<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!-- Style sheet inclusion  -->
<link rel="stylesheet" href="standard.css" type="text/css">

</head>
<body topmargin="0" leftmargin="0">
<form name = "frmHome">

<!-- Graphic file inclusion  -->
<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
height="60">
<TR>
<TD width="13%" align="left">&nbsp;&nbsp;&nbsp;<IMG align="center" height=150 src="KnowIt.bmp" width=1000 border=0></TD>
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
<h6><a class = "linkoff">Printable&nbsp;Version</a>&nbsp;|&nbsp;<A  href="Contactus.jsp">Contact&nbsp;Us</A>&nbsp;|&nbsp;<A href="*">Tips</A>&nbsp;|&nbsp;<A href="*">Help</A></h6></td>

</tr>
</table>
<table width="100%" border="0"  cellspacing="0" cellpadding="0">
<tr>
<TD class="taboff"><h3><a href = "Home.jsp">Home</h3></TD>
<TD class="taboff"><h3><a href = "Opportunityhome.jsp">&nbsp;Business &nbsp;Update&nbsp;</a></h3></TD>
<TD class="taboff"><h3><a href = "RevenueProjection.jsp">Revenue&nbsp;Projection&nbsp;</a></h3></TD>
<TD class="taboff"><h3><a href="PMPASERatio.jsp">PM:PA:SE&nbsp;Ratio</a></h3></TD>
<TD class="taboff"><h3><a href="CMMLevelAdherencehome.jsp">CMM Level Adherence</a></h3></TD>
<TD class="taboff"><h3><a href="onsiteOffshoreHome.jsp">Onsite:Offshore</a></h3></TD>
<TD class="tabon"><h3><a href="revenueProductivityHome.jsp">Revenue&nbsp;Productivity</a></h3></TD>
<TD class="taboff"><h3><a href="operatiingmargin.jsp">Operating Margin</a></h3></TD>
<TD class="taboff"><h3><a href="Unbilledeffort.jsp">Unbilled Effort</a></h3></TD>
<TD class="tabBdr"><IMG height=1 src="../images/spacer.gif" width=1></TD>
</tr>
</table>




</form>
     <!-- End of form frmHome -->
     <!-- frmRevenueProductivity form Begins  -->
     <form name="frmRevenueProductivity" action="revProdChart.jsp">
         <br><br><br><br><br>
         <table class=fieldBlue border="0" align="center" cellspacing="8">
              <tr>
                 <td>Type the path to upload</td>
                 <td><input type="text" name="txtRevProdPath" value="" size="50"></td>
                 <td><input type="button" name="browse" value="Browse"></td>
              </tr>
              <tr></tr>
              <tr>
                 <td><input type="button" name="upload" value="Upload"></td>
                 <td><input type="submit" name="generateChart" value="Generate&nbsp;Chart"></td>
                 <td><input type="reset" name="cancel" value="Cancel"></td>
              </tr>
         </table>
     </form>
     <!-- End of form frmRevenueProductivity -->
     <br><br>
     <table border="0" align="center">
          <tr>
             <td></td>
             <td align="center">Revenue&nbsp;Productivity Chart</td>
          </tr>
          <tr>
             <td></td>
             <!-- Revenue Productivity chart is displayed -->
             <td><IMG  height=500 src="revProd.GIF" width=750></td>
          </tr>
          <tr>
             <td></td>
             <!--  Link to generate chart as power point presentation  -->
             <td align="center"><A href="generatePpt.jsp">Generate ppt</A></td>
          </tr>
     </table>
</body>
</html>
<!-- End of revProdChart.jsp -->