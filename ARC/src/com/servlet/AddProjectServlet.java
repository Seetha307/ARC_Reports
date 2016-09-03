	package com.servlet;
	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;
	import com.ARCdao.ARCdao;

import java.util.Calendar;

	/**
	 * Servlet implementation class for Servlet: Home
	 *
	 */
	 public class AddProjectServlet  extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	    /* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#HttpServlet()
		 */
		public AddProjectServlet () {
			super();
		}

		/* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			HttpSession session=request.getSession(true);
			String addMsg=null;
			String addMsg1=null;
			String userName = (String)session.getAttribute("user");
			String projectcode=request.getParameter("txtprojcode");
			String month=request.getParameter("Month");
			String projectDescription=request.getParameter("txtprojcodeDescription");
			String type=request.getParameter("type");
			String cmmLevel=request.getParameter("cmm");
			String location=request.getParameter("Locations");
			try{
				
				
				ARCdao arcdao=new ARCdao();
				int result=arcdao.AddNewProject(projectcode, month, projectDescription, type, cmmLevel, location);
				if(result==1){
					addMsg = "Project Added Successfully";
					request.setAttribute("success", addMsg);
					getServletConfig().getServletContext().getRequestDispatcher(
					"/jsp/AddProject.jsp").forward(request, response);
				}
				else{
					addMsg1 = "Internal Error Occured";
					request.setAttribute("success", addMsg1);
					getServletConfig().getServletContext().getRequestDispatcher(
					"/jsp/AddProject.jsp").forward(request, response);
				}
				
				}
			catch(Exception e){
				System.out.println("Eception Occured in Add project Servlet"+e);
			}			
		}

		/* (non-Java-doc)
		 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			HttpSession session=request.getSession(true);
			String addMsg=null;
			String addMsg1=null;
			String userName = (String)session.getAttribute("user");
			String projectcode=request.getParameter("txtprojcode");
			String month=request.getParameter("Month");
			String projectDescription=request.getParameter("txtprojcodeDescription");
			String type=request.getParameter("type");
			String cmmLevel=request.getParameter("cmm");
			String location=request.getParameter("Locations");
			try{
				
			
			ARCdao arcdao=new ARCdao();
			int result=arcdao.AddNewProject(projectcode, month, projectDescription, type, cmmLevel, location);
			if(result==1){
				addMsg= "Project Added Successfully";
				request.setAttribute("success", addMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/AddProject.jsp").forward(request, response);
			}
			else{
				addMsg1 = "Internal Error Occured while adding Project";
				request.setAttribute("fail", addMsg1);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/AddProject.jsp").forward(request, response);
			}
			
			}
			catch(Exception e){
				System.out.println("Eception Occured in Add project Servlet"+e);
			}
		}
	}