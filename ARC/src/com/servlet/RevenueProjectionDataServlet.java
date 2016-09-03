package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ARCdao.ARCdao;

/**
 * Servlet implementation class for Servlet: RevenueProjectionDataServlet
 *
 */
 public class RevenueProjectionDataServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public RevenueProjectionDataServlet() {
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
		
		ArrayList revRetlList=new ArrayList();
     	ArrayList revIHLList=new ArrayList();
     	
     	String ihlMsg=null;
     	String retlMsg=null;
	  	ARCdao arcdao=new ARCdao();
	  	try{
		revRetlList=arcdao.readRetlRevenueProjection();
       	revIHLList=arcdao.readIHLRevenueProjection();
		if(revRetlList!=null && revIHLList!=null){
			request.setAttribute("revRetlList", revRetlList);
			request.setAttribute("revIHLList", revIHLList);
			getServletConfig().getServletContext().getRequestDispatcher("/jsp/RevenueProjectiontable.jsp").forward(request, response);
			//session.setAttribute("allprojectList", allpjectList);
		}else if(revRetlList!=null && revIHLList==null){
			ihlMsg="No data found in the table";
			
			request.setAttribute("revRetlList", revIHLList);
			request.setAttribute("ihlMsg", ihlMsg);
			//request.setAttribute("employeepieChartList", employeepieList);
			getServletConfig().getServletContext().getRequestDispatcher("/jsp/RevenueProjection.jsp").forward(request, response);
		}else if(revRetlList==null && revIHLList!=null){
			retlMsg="No data found in the table";
			
			request.setAttribute("revRetlList", revRetlList);
			//request.setAttribute("projectpieChartList", projectpieList);
			request.setAttribute("retlMsg", retlMsg);
			getServletConfig().getServletContext().getRequestDispatcher("/jsp/RevenueProjection.jsp").forward(request, response);
		}else{
			retlMsg="No data found in the table";
			ihlMsg="No data found in the table";
			request.setAttribute("retlMsg", retlMsg);
			request.setAttribute("ihlMsg", ihlMsg);
			getServletConfig().getServletContext().getRequestDispatcher("/jsp/RevenueProjection.jsp").forward(request, response);
		}
	  	}catch(Exception e){
	  		System.out.println("Exception Occured in Revenue Projection "+e);
	  		
	  	}
	}   	  	    
}