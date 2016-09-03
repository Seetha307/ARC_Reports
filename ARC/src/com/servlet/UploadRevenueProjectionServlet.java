
package com.servlet;


import java.io.IOException;
import java.lang.reflect.Array;

import com.ARCdao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.util.Calendar;

/**
 * Servlet implementation class for Servlet: Home
 *
 */
 public class UploadRevenueProjectionServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public UploadRevenueProjectionServlet() {
		super();
	}

	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		String path = (String)request.getParameter("browse");
		String actualPath="";
		System.out.println("PAAAAAAAtha"+path);
		String p[]=path.split("\\\\");
		int fileformat=path.indexOf(".xls");
		System.out.println("File-Format :"+fileformat);
		if(fileformat>0){
			System.out.println("File-Format :"+fileformat);
		}
		
		for (int i=0;i<p.length;i++)
		{
			System.out.println("p[i]"+p[i]);
		
		if((i+1)==p.length){
			actualPath=actualPath+p[i];
		}
		else{
		actualPath=actualPath+p[i]+"\\\\";
		}
		}				
		System.out.println("paaaaaa"+actualPath);
		try{
			
			ARCdao arcdao=new ARCdao();
			int result=arcdao.UploadRevenueProjectionDao(actualPath);
			if(result==99){System.out.println("99");
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			else if(result>0&&result<99){System.out.println("8");
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			else{System.out.println("0");
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			
		}catch(Exception e)
	{
		System.out.println("Exception Occured"+e);
	}
	}

	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(true);
		String path = (String)request.getParameter("browse");
		String alreadyuploaded=null;
		String errorMsg=null;
		String uploaded=null;
		String invalid=null;
		System.out.println("paaaaaa"+path);
		try{
			int fileformat=path.indexOf(".xls");
			System.out.println("File-Format :"+fileformat);
			if(fileformat<0){
				invalid="Invalid File";
				request.setAttribute("invalidMsg", invalid);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			ARCdao arcdao=new ARCdao();
			int result=arcdao.UploadRevenueProjectionDao(path);
			if(result==99){System.out.println("Data already Uploaded");
			alreadyuploaded="Data already Uploaded";
			request.setAttribute("alreadyuploadedMsg", alreadyuploaded);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			else if(result>0&&result<99){
				uploaded="Data Uploaded";
				request.setAttribute("uploadedMsg", uploaded);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			else if(result==101){
				invalid="Invalid File";
				request.setAttribute("invalidMsg", invalid);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			else{System.out.println("0");
			errorMsg="Internal Error Occured ehile Uploading Projec";
			request.setAttribute("errMsg", errorMsg);
			getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/RevenueProjection.jsp").forward(request, response);
			}
			
		}catch(Exception e)
	{
		System.out.println("Exception Occured"+e);
	}
	}

}