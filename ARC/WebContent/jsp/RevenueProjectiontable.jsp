
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.datahandler.*" %>
       <%@page import="com.ARCdao.*" %>
        <%@page import="com.bean.*" %>
            <%@page import="java.sql.Date" %>
       <%@page import="com.ARCdao.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.util.ArrayList"%>
<HTML>
<head>
<title>WALGREENS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!-- Style sheet inclusion  -->
<% String contextPath = request.getContextPath();
 %>
<link rel = "stylesheet" type="text/css" href="<%=contextPath%>/css/walgreens.css">

</head>

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
	<%}
	%>	
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

ARCdao arcdaotable=new ARCdao();
Date date=arcdaotable.getLasDateModified();
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
				<input type="button" name="btnReport" value="Generate Report" >
                  <input type="button" name="btnCancel" value="Cancel">
			</td>
               <tr align = "center">
                
		
                 
               </tr>

         </table>
         
         <%
         	RevenueProjectionBean rbean= new RevenueProjectionBean();
        	 RevenueProjectionBean rbean1= new RevenueProjectionBean();
         	ArrayList revRetlList=new ArrayList();
         	ArrayList revIHLList=new ArrayList();
           	ARCdao arcdao=new ARCdao();
           
           	String IBU=null;
        	String Quarter=null;
   	  		double TargetQ1=0;
   	  		double TargetQ2=0;
   	  		double TargetQ3=0;
   	  		double TargetQ4=0;
   	  		
   	  		double RCSEQ1=0;
	  		double RCSEQ2=0;
	  		double RCSEQ3=0;
	  		double RCSEQ4=0;
	  		
	  		double RDEQ1=0;
	  		double RDEQ2=0;
	  		double RDEQ3=0;
	  		double RDEQ4=0;
	  		
	  		double RActualsQ1=0;
	  		double RActualsQ2=0;
	  		double RActualsQ3=0;
	  		double RActualsQ4=0;
	  		
	  		double RVBQ1=0;
	  		double RVBQ2=0;
	  		double RVBQ3=0;
	  		double RVBQ4=0;
	  		
	  		double ICSEQ1=0;
	  		double ICSEQ2=0;
	  		double ICSEQ3=0;
	  		double ICSEQ4=0;
	  		
	  		double IDEQ1=0;
	  		double IDEQ2=0;
	  		double IDEQ3=0;
	  		double IDEQ4=0;
	  		
	  		double IActualsQ1=0;
	  		double IActualsQ2=0;
	  		double IActualsQ3=0;
	  		double IActualsQ4=0;
	  		
	  		double IVBQ1=0;
	  		double IVBQ2=0;
	  		double IVBQ3=0;
	  		double IVBQ4=0;
	  		
	  		double TCSEQ1=0;
	  		double TCSEQ2=0;
	  		double TCSEQ3=0;
	  		double TCSEQ4=0;
	  		
	  		double TDEQ1=0;
	  		double TDEQ2=0;
	  		double TDEQ3=0;
	  		double TDEQ4=0;
	  		
	  		double TActualsQ1=0;
	  		double TActualsQ2=0;
	  		double TActualsQ3=0;
	  		double TActualsQ4=0;
	  		
	  		double TVBQ1=0;
	  		double TVBQ2=0;
	  		double TVBQ3=0;
	  		double TVBQ4=0;
	  		
	  		
           	revRetlList=(ArrayList)request.getAttribute("revRetlList");
           	revIHLList=(ArrayList)request.getAttribute("revIHLList");
    		  System.out.println("revRetlList"+revRetlList.size());
    		  
    		  for(int i=0;i<revRetlList.size();i++)
   		   {
    			  RCSEQ1=(Double)revRetlList.get(i);i++;
    			  RDEQ1=(Double)revRetlList.get(i);i++;
    			  RActualsQ1=(Double)revRetlList.get(i); i++;	
    			  RVBQ1=(Double)revRetlList.get(i); i++;	
    			  
    			  RCSEQ2=(Double)revRetlList.get(i);i++;
    			  RDEQ2=(Double)revRetlList.get(i);i++;
    			  RActualsQ2=(Double)revRetlList.get(i); i++;
    			  RVBQ2=(Double)revRetlList.get(i); i++;	
    			 
    			  RCSEQ3=(Double)revRetlList.get(i);i++;
    			  RDEQ3=(Double)revRetlList.get(i);i++;
    			  RActualsQ3=(Double)revRetlList.get(i);i++;
    			  RVBQ3=(Double)revRetlList.get(i); i++;	
    			  
    			  RCSEQ4=(Double)revRetlList.get(i);i++;
    			  RDEQ4=(Double)revRetlList.get(i);i++;
    			  RActualsQ4=(Double)revRetlList.get(i); i++;
    			  RVBQ4=(Double)revRetlList.get(i); 
    			  
   		   }
    		   
    		   
	         
         %>
         <br><br>
         <table width="100%" cellpadding="0" cellspacing="0" class=fieldNone>
         <tr>
         	<td> 
	         	  <table  border="1" align="center"  class=fieldBlue1>
	         		<tr>
		         	   <td  align="center" colspan="5">  RETL </td>
		            
		           </tr>
		           <tr>
		            <td>   </td>
		         	<td>  Q1 </td>
		            <td>  Q2 </td>
		            <td>  Q3 </td>
		            <td>  Q4 </td>
		           
		           </tr>
		           <tr>
		         	<td>  Target </td>
		            <td colspan="2"> &nbsp;  </td>
		            <td colspan="2">  &nbsp; </td>
		           </tr>
		           <tr>
		         	<td>  CSG BE </td>
		            <td>  <%=RCSEQ1 %> </td>
		            <td>  <%=RCSEQ2 %></td>
		            <td>  <%=RCSEQ3 %> </td>
		            <td>  <%=RCSEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Delivery BE </td>
		            <td>  <%=RDEQ1 %> </td>
		            <td>  <%=RDEQ2 %> </td>
		            <td>  <%=RDEQ3 %> </td>
		            <td>  <%=RDEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Actuals </td>
		            <td>  <%=RActualsQ1 %> </td>
		            <td>  <%=RActualsQ2 %> </td>
		            <td>  <%=RActualsQ3 %> </td>
		            <td>  <%=RActualsQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  VB as %BE </td>
		            <td>  <%=RVBQ1 %> %</td>
		            <td>  <%=RVBQ2 %> %</td>
		            <td>  <%=RVBQ3 %> %</td>
		            <td>  <%=RVBQ4 %> %</td>
		           </tr>
	          	   </table> 
          	</td>
          	<%  for(int i=0;i<revIHLList.size();i++)
   		   {
          		 ICSEQ1=(Double)revIHLList.get(i);i++;
   			  IDEQ1=(Double)revIHLList.get(i);i++;
   			  IActualsQ1=(Double)revIHLList.get(i); i++;	
   			  IVBQ1=(Double)revIHLList.get(i); i++;	
   			  
   			  ICSEQ2=(Double)revIHLList.get(i);i++;
   			  IDEQ2=(Double)revIHLList.get(i);i++;
   			  IActualsQ2=(Double)revIHLList.get(i); i++;
   			  IVBQ2=(Double)revIHLList.get(i); i++;	
   			 
   			  ICSEQ3=(Double)revIHLList.get(i);i++;
   			  IDEQ3=(Double)revIHLList.get(i);i++;
   			  IActualsQ3=(Double)revIHLList.get(i);i++;
   			  IVBQ3=(Double)revIHLList.get(i); i++;	
   			  
   			  ICSEQ4=(Double)revIHLList.get(i);i++;
   			  IDEQ4=(Double)revIHLList.get(i);i++;
   			  IActualsQ4=(Double)revIHLList.get(i); i++;
   			  IVBQ4=(Double)revIHLList.get(i); 
    			  
   		   }
          	
          	TCSEQ1=RCSEQ1+ICSEQ1;TCSEQ2=RCSEQ2+ICSEQ2;TCSEQ3=RCSEQ3+ICSEQ3;TCSEQ4=RCSEQ4+ICSEQ4;
          	TDEQ1=RDEQ1+IDEQ1;TDEQ2=RDEQ2+IDEQ2;TDEQ3=RDEQ3+IDEQ3;TDEQ4=RDEQ4+IDEQ4;
          	TActualsQ1=RActualsQ1+IActualsQ1;TActualsQ2=RActualsQ2+IActualsQ2;TActualsQ3=RActualsQ3+IActualsQ3;TActualsQ4=RActualsQ4+IActualsQ4;
          	TVBQ1=(RVBQ1+IVBQ1)/2;TVBQ2=(RVBQ2+IVBQ2)/2;TVBQ3=(RVBQ3+IVBQ3)/2;TVBQ4=(RVBQ4+IVBQ4)/2;
   		   %>
           <td> 
	         	  <table  border="1" align="center" class=fieldBlue1>
	         		<tr>
		         	
		            <td  align="center" colspan="5">  IHL </td>
		            
		           </tr>
		           <tr>
		            <td>   </td>
		         	<td>  Q1 </td>
		            <td>  Q2 </td>
		            <td>  Q3 </td>
		            <td>  Q4 </td>
		           
		           </tr>
		           <tr>
		         	<td>  Target </td>
		            <td colspan="2">  &nbsp; </td>
		            <td colspan="2">  &nbsp; </td>
		           </tr>
		           <tr>
		         	<td>  CSG BE </td>
		            <td>  <%=ICSEQ1 %> </td>
		            <td>  <%=ICSEQ2 %></td>
		            <td>  <%=ICSEQ3 %> </td>
		            <td>  <%=ICSEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Delivery BE </td>
		            <td>  <%=IDEQ1 %> </td>
		            <td>  <%=IDEQ2 %> </td>
		            <td>  <%=IDEQ3 %> </td>
		            <td>  <%=IDEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Actuals </td>
		            <td>  <%=IActualsQ1 %> </td>
		            <td>  <%=IActualsQ2 %> </td>
		            <td>  <%=IActualsQ3 %> </td>
		            <td>  <%=IActualsQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  VB as %BE </td>
		            <td>  <%=IVBQ1 %> %</td>
		            <td>  <%=IVBQ2 %> %</td>
		            <td>  <%=IVBQ3 %> %</td>
		            <td>  <%=IVBQ4 %> %</td>
		           </tr>
	          	   </table> 
          	</td>
    
           <td> 
           		  <table  border="1" align="center" class=fieldBlue1>
	         		<tr>
		         	
		            <td align="center" colspan="5">  Total </td>
		           
		           </tr>
		           <tr>
		            <td>   </td>
		         	<td>  Q1 </td>
		            <td>  Q2 </td>
		            <td>  Q3 </td>
		            <td>  Q4 </td>
		           
		           </tr>
		           <tr>
		         	<td>  Target </td>
		            <td colspan="2"> &nbsp;  </td>
		            <td colspan="2">  &nbsp; </td>
		           </tr>
		          <tr>
		         	<td>  CSG BE </td>
		            <td>  <%=TCSEQ1 %> </td>
		            <td>  <%=TCSEQ2 %></td>
		            <td>  <%=TCSEQ3 %> </td>
		            <td>  <%=TCSEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Delivery BE </td>
		            <td>  <%=TDEQ1 %> </td>
		            <td>  <%=TDEQ2 %> </td>
		            <td>  <%=TDEQ3 %> </td>
		            <td>  <%=TDEQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  Actuals </td>
		            <td>  <%=TActualsQ1 %> </td>
		            <td>  <%=TActualsQ2 %> </td>
		            <td>  <%=TActualsQ3 %> </td>
		            <td>  <%=TActualsQ4 %> </td>
		           </tr>
		           <tr>
		         	<td>  VB as %BE </td>
		            <td>  <%=TVBQ1 %> %</td>
		            <td>  <%=TVBQ2 %> %</td>
		            <td>  <%=TVBQ3 %> %</td>
		            <td>  <%=TVBQ4 %> %</td>
		           </tr>
	          	   </table> 
          	</td>
           </tr>
           </table>
         
      </form>
      <!-- End of frmRevenueProjection form -->
</body>
</html>
<!-- End of RevenueProjection.jsp -->




