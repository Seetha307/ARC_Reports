package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ARCdao.ARCdao;

/**
 * Servlet implementation class for Servlet: GenerateChartServlet
 *
 */
 public class GenerateChartServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public GenerateChartServlet() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		ArrayList projectpieList=new ArrayList();
		ArrayList employeepieList=new ArrayList();
		ArrayList monthList=new ArrayList();
		//projectpieList=null;
		//employeepieList=null;
		String projectCoverage=null;
		String employeeCoverage=null;
		String CurMonth=null;
		String contextPath = request.getContextPath();
		
		String SelectedMonth=(String)request.getParameter("montreport");
		String montreport=(String)request.getParameter("montreport");
		//String PrevMonth=null;
		String tomonth[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
		int month=0;
		
		//System.out.println(CurDate1.toString());
		if(CurMonth==null||CurMonth.equalsIgnoreCase("0")){
			Date CurDate=new Date(new java.util.Date().getTime());
			month=CurDate.getMonth();
			
			CurMonth=tomonth[month-1];
		}
		System.out.print("\nCurrent Month :"+CurMonth);
		System.out.print("\nSelectedMonth Month :"+SelectedMonth +"\\\\"+montreport);
		try{
			ARCdao arcdao=new ARCdao();
			if(SelectedMonth!=null){
			if(SelectedMonth.equalsIgnoreCase("0")){
				System.out.print("Normal");
			projectpieList=arcdao.projectCoveragepieChart(CurMonth);
			employeepieList=arcdao.employeeCoveragepieChart(CurMonth);
			}else{
				System.out.print("Selected");
			projectpieList=arcdao.projectCoveragepieChart(SelectedMonth);
			employeepieList=arcdao.employeeCoveragepieChart(SelectedMonth);
			}
			}else{
				System.out.print("initial");
				projectpieList=arcdao.projectCoveragepieChart(CurMonth);
				employeepieList=arcdao.employeeCoveragepieChart(CurMonth);
			}
			monthList=arcdao.monthviceChart();
			if(projectpieList!=null && employeepieList!=null){
				
				request.setAttribute("CurMonth", CurMonth);
				request.setAttribute("monthList", monthList);
				request.setAttribute("projectpieChartList", projectpieList);
				request.setAttribute("employeepieChartList", employeepieList);
				System.out.print("Goes");
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/GenerateCmmChart.jsp").forward(request, response);
				//session.setAttribute("allprojectList", allpjectList);
			}else if(projectpieList!=null && employeepieList==null){
				employeeCoverage="No data found in the table";
				request.setAttribute("employeeCoverage", employeeCoverage);
				request.setAttribute("projectpieChartList", projectpieList);
				//request.setAttribute("employeepieChartList", employeepieList);
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/GenerateCmmChart.jsp").forward(request, response);
			}else if(projectpieList==null && employeepieList!=null){
				projectCoverage="No data found in the table";
				request.setAttribute("projectCoverage", projectCoverage);
				//request.setAttribute("projectpieChartList", projectpieList);
				request.setAttribute("employeepieChartList", employeepieList);
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/GenerateCmmChart.jsp").forward(request, response);
			}else{
				employeeCoverage="No data found in the table";
				projectCoverage="No data found in the table";
				request.setAttribute("projectCoverage", projectCoverage);
				request.setAttribute("employeeCoverage", employeeCoverage);
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/ProjectSetup1.jsp").forward(request, response);
			}
					
		}
		catch(Exception e){
			System.out.println("Eception Occured in GenerateChartServlet project Servlet post :::"+e);
		}
		
	}   	  	    
}