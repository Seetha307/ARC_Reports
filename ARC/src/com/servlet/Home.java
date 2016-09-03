package com.servlet;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.util.Calendar;

/**
 * Servlet implementation class for Servlet: Home
 *
 */
 public class Home extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Home() {
		super();
	}

	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		String userName = (String)session.getAttribute("user");
		
		getServletConfig().getServletContext().getRequestDispatcher(
		"/jsp/Home.jsp").forward(request, response);
	}

	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(true);
		String userName = (String)session.getAttribute("user");
		

		getServletConfig().getServletContext().getRequestDispatcher(
		"/jsp/Home.jsp").forward(request, response);
	}
}