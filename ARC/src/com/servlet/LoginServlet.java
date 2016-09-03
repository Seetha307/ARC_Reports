package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ARCdao.ARCdao;

import java.security.Principal;



public class LoginServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String errorMsg = "Internal Error Occured .Please contact System Administrator";
		try {
			
			System.out.println("Entering the servelet");
					
			HttpSession session = request.getSession(true);
			String userName = null;
			String passWord = null;
			String errorMessage=null;
			String errorAuthMessage=null;
			ARCdao arcdao = null;
			int Ldap=0;
			int userValidation=0;
			
			// get values from request
			userName = request.getParameter("user");
			passWord = request.getParameter("password");
			//System.out.println("printing----" + userName + passWord);
			arcdao = new ARCdao();

			Ldap = arcdao.LdapLogin(userName, passWord);
			userValidation=arcdao.UserAccess(userName);
			// If password is correct,redirect to home page
			if (Ldap == 1 && userValidation==1) {
				
				session.setAttribute("user", userName);
				getServletConfig().getServletContext().getRequestDispatcher(
						"/Home").forward(request, response);
			} else if(Ldap == 1 && userValidation==2) {
				errorAuthMessage = "You are not authorized to view this tool.!!!";	
				passWord="";
				userName="";
				request.setAttribute("errorAuthMessage", errorAuthMessage);
				request.getSession().setAttribute("user", userName);
				request.setAttribute("password", passWord);
				// redirect to login page
				getServletConfig().getServletContext().getRequestDispatcher(
						"/jsp/Login.jsp").forward(request, response);
			}else {
				errorMessage = "UserName or Password is incorrect. Please Try Again";
				// set errormessage in request
				passWord="";
				request.setAttribute("errorMsg", errorMessage);
				request.getSession().setAttribute("user", userName);
				request.setAttribute("password", passWord);
				// redirect to login page
				getServletConfig().getServletContext().getRequestDispatcher(
						"/jsp/Login.jsp").forward(request, response);
			}
		} catch (Exception e) {
		
			//ErrorBean errorBean =  new ErrorBean();
			//errorBean.setErrorMsg(errorMsg);
			// set errormessage in request
		//	request.setAttribute("errorBean",errorBean);
			// redirect to login page
			getServletConfig().getServletContext().getRequestDispatcher(
					"/jsp/Login.jsp").forward(request, response);
			
			
		}

	}
}
