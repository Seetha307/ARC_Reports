package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ARCdao.ARCdao;
/**
 * Servlet implementation class for Servlet: FetchPreviousDataServlet
 *
 */
 public class FetchPreviousDataServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public FetchPreviousDataServlet() {
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
		
		String CurMonth=request.getParameter("SelectedMonth");
		System.out.println("SelectedMonth"+CurMonth);
		Date CurDate1=new Date(new java.util.Date().getTime());
		ArrayList allpjectList=null;
		
		String tomonth[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
		int month=0;
		//System.out.println(CurDate1.toString());
		if(CurMonth==null||CurMonth.equalsIgnoreCase("0")){
			Date CurDate=new Date(new java.util.Date().getTime());
			month=CurDate.getMonth();
			
			CurMonth=tomonth[month];
		}
		System.out.print("Current Month"+CurMonth);
		
		try{
		ARCdao arcdao=new ARCdao();
		allpjectList=arcdao.FectchPreviousData(CurMonth,month);
		if(allpjectList!=null){
			request.setAttribute("allprojectList", allpjectList);
			//session.setAttribute("allprojectList", allpjectList);
		}
		getServletConfig().getServletContext().getRequestDispatcher(
		"/jsp/ProjectSetup1.jsp").forward(request, response);
		}
		catch(Exception e){
			System.out.println("Exception occured in Fetch previous data servlet " +e);
		}
		}
	}   	  	    
