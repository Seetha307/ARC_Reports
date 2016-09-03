	package com.servlet;
	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;
	import com.ARCdao.ARCdao;

import java.util.ArrayList;
import java.util.Calendar;

	/**
	 * Servlet implementation class for Servlet: Home
	 *
	 */
	 public class ProjectSetupServlet  extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	    /* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#HttpServlet()
		 */
		public ProjectSetupServlet () {
			super();
		}

		/* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			HttpSession session=request.getSession(true);
			ArrayList allpjectList=null;
			try{
				ARCdao arcdao=new ARCdao();
				String Projectcode=request.getParameter("SetupProjectcode");
				String CmmLevel=request.getParameter("ProjectSetupCmm");
				String type=request.getParameter("ProjectSetuptype");
				String month=request.getParameter("ProjectSetupMonth");
				System.out.println("ProjectCode"+Projectcode+"CMMlevel:"+CmmLevel+"type:"+type+"month:"+month);
				System.out.println("Cmm"+CmmLevel);
				if((Projectcode==null||Projectcode==""||Projectcode.equalsIgnoreCase("0")||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.equalsIgnoreCase("0")||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::None ");
					allpjectList=arcdao.SearchAllProject();
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Projectcode ");
					allpjectList=arcdao.SearchByProjectCode(Projectcode);//Only Project Code
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::CmmLevel " +Projectcode+"cccccc\n");
					allpjectList=arcdao.SearchByCMMLevel(CmmLevel);//only Cmm
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::type ");
					allpjectList=arcdao.SearchByType(type);//onlyType
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only Month ");
					allpjectList=arcdao.SearchByMonth(month);//only Month
				}
				
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Project Code && CMM ");
					allpjectList=arcdao.SearchByProjecCodeCMMLevel(Projectcode, CmmLevel);// Project Code && CMM
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Only Project Code &&type ");
					allpjectList=arcdao.SearchByProjecCodeType(Projectcode, type);//Only Project Code &&type
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::Only Project Code && Month ");
					allpjectList=arcdao.SearchByProjecCodeMonth(Projectcode, month);//Only Project Code && Month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::only CMM & Type ");
					allpjectList=arcdao.SearchByCMMLevelType(CmmLevel, type);//only CMM & Type
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only CMM & Month ");
					allpjectList=arcdao.SearchByCMMLevelMonth(CmmLevel, month);//only CMM & Month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only type & Month ");
					allpjectList=arcdao.SearchBytypeMonth(type, month);//only type & Month
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Project code code & CMM & Type ");
					allpjectList=arcdao.SearchByProjectCMMType(Projectcode, CmmLevel, type);//Project code code & CMM & Type
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::Project code & CMM & month ");
					allpjectList=arcdao.SearchByProjectCMMmonth(Projectcode, CmmLevel, month);//Project code & CMM & month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::CMM & Type & month ");
					allpjectList=arcdao.SearchByCMMTypeMonth(CmmLevel, type, month);//CMM & Type & month
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::project code & CMM & Type & month ");
					allpjectList=arcdao.SearchByprojectcodeCMMTypeMonth(Projectcode, CmmLevel, type, month);//project code & CMM & Type & month
				}
				if(allpjectList!=null){
					request.setAttribute("allprojectList", allpjectList);
					//session.setAttribute("allprojectList", allpjectList);
				}
				int start=Integer.parseInt(request.getParameter("startPage"));
				System.out.println("Start in Servlet"+start);
				int end=Integer.parseInt(request.getParameter("endPage"));
				System.out.println("end in Servlet"+end);
					getServletConfig().getServletContext().getRequestDispatcher("/jsp/ProjectSetup1.jsp?startPage="+start+"&endPage="+end).forward(request,response);
						
				}
			catch(Exception e){
				System.out.println("Eception Occured in Add project Servlet Get  ::"+e);
			}		
			
		}	
		

		/* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			HttpSession session=request.getSession(true);
			ArrayList allpjectList=null;
			try{
				ARCdao arcdao=new ARCdao();
				String Projectcode=request.getParameter("SetupProjectcode");
				String CmmLevel=request.getParameter("ProjectSetupCmm");
				String type=request.getParameter("ProjectSetuptype");
				String month=request.getParameter("ProjectSetupMonth");
				System.out.println("ProjectCode"+Projectcode+"CMMlevel:"+CmmLevel+"type:"+type+"month:"+month);
				System.out.println("Cmm"+CmmLevel);
				if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::None ");
					allpjectList=arcdao.SearchAllProject();
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Projectcode ");
					allpjectList=arcdao.SearchByProjectCode(Projectcode);//Only Project Code
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::CmmLevel "+Projectcode+"cccccc\n");
					allpjectList=arcdao.SearchByCMMLevel(CmmLevel);//only Cmm
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::type ");
					allpjectList=arcdao.SearchByType(type);//onlyType
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only Month ");
					allpjectList=arcdao.SearchByMonth(month);//only Month
				}
				
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type==null||type.equalsIgnoreCase("0")||type.length()==0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Project Code && CMM ");
					allpjectList=arcdao.SearchByProjecCodeCMMLevel(Projectcode, CmmLevel);// Project Code && CMM
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Only Project Code &&type ");
					allpjectList=arcdao.SearchByProjecCodeType(Projectcode, type);//Only Project Code &&type
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::Only Project Code && Month ");
					allpjectList=arcdao.SearchByProjecCodeMonth(Projectcode, month);//Only Project Code && Month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::only CMM & Type ");
					allpjectList=arcdao.SearchByCMMLevelType(CmmLevel, type);//only CMM & Type
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only CMM & Month ");
					allpjectList=arcdao.SearchByCMMLevelMonth(CmmLevel, month);//only CMM & Month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel==null||CmmLevel==""||CmmLevel.length()==0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::only type & Month ");
					allpjectList=arcdao.SearchBytypeMonth(type, month);//only type & Month
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(month.equalsIgnoreCase("0")||month.length()==0)){
					System.out.print("Search Criteria:::Project code code & CMM & Type ");
					allpjectList=arcdao.SearchByProjectCMMType(Projectcode, CmmLevel, type);//Project code code & CMM & Type
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(type.equalsIgnoreCase("0")||type.length()==0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::Project code & CMM & month ");
					allpjectList=arcdao.SearchByProjectCMMmonth(Projectcode, CmmLevel, month);//Project code & CMM & month
				}
				else if((Projectcode==null||Projectcode==""||Projectcode.length()==0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::CMM & Type & month ");
					allpjectList=arcdao.SearchByCMMTypeMonth(CmmLevel, type, month);//CMM & Type & month
				}
				else if((Projectcode!=null||Projectcode!=""||Projectcode.length()!=0)&&(CmmLevel!=null||CmmLevel!=""||CmmLevel.length()!=0)&&
						(!type.equalsIgnoreCase("0")||type.length()!=0)&&(!month.equalsIgnoreCase("0")||month.length()!=0)){
					System.out.print("Search Criteria:::project code & CMM & Type & month ");
					allpjectList=arcdao.SearchByprojectcodeCMMTypeMonth(Projectcode, CmmLevel, type, month);//project code & CMM & Type & month
				}
				if(allpjectList!=null){
					request.setAttribute("allprojectList", allpjectList);
					//session.setAttribute("allprojectList", allpjectList);
				}
				System.out.println("hhhh");
				int start=0;
				int end=0;
				
				if((request.getParameter("startPage")!=null)||( request.getParameter("endPage")!=null))
				{
				String start1=request.getParameter("startPage");
				System.out.println("Start in Servlets"+start1);
				String end1=request.getParameter("endPage");
				start=Integer.parseInt(start1);
				end=Integer.parseInt(end1);
				System.out.println("end in Servlets"+end1);
				}
				
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/ProjectSetup1.jsp?startPage="+start+"&endPage="+end).forward(request,response);
		
				}
			catch(Exception e){
				System.out.println("Eception Occured in Add project Servlet post :::"+e);
			}		
			
		}
	}