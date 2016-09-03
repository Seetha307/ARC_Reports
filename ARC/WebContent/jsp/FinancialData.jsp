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
<h6><a class = "linkoff">Printable&nbsp;Version</a>&nbsp;|&nbsp;<A  href="Contactus.jsp">Contact&nbsp;Us</A>&nbsp;|&nbsp;<A href="*">Tips</A>&nbsp;|&nbsp;<A href="*">Help</A></h6></td>

</tr>
</table>

<script type="text/javascript" src="../Scripts/milonic_src.js"></script> 

<script type="text/javascript" src="../Scripts/mmenudom.js"></script> 
<script type="text/javascript" src="../Scripts/menu_data.js"></script>





</form>
<table width=100% border=0>
  <tr>
<br>
<br>
   <td align=left width=33%><h1>Financial Data</h1></td>
   </tr>
  </table>
     <!-- End of form frmHome -->
     <!-- frmRevenueProductivity form Begins  -->
     <form name="frmRevenueProductivity" action="revProdChart.jsp">
         
         <table class=fieldBlue border="0" align="center" cellspacing="8">
              <tr align = "center">
                 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Enter the Path
                
                 <input type="file" name="browse" value="Browse">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
                  <select>
			<option>-Select IBU-</option>
			<option>Retail</option>
			<option>IHLD</option>
			</select>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			  <input type="button" name="upload" value="Upload"></p></td>
			

              </tr>
              <tr></tr>
              
               <tr align="center" >
                

			<td>

                  <input type="submit" name="Revenue" value="View Revenue Productivity">
                  <input type="button" name="Om" value="View Operating Margin"></td>
               </tr>

         </table>
     </form>
     <!-- End of form frmRevenueProductivity -->
</body>
</html>
<!-- End of revenueProductivity.jsp -->