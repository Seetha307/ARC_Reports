
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
 public class ProjectSetupDeleteServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ProjectSetupDeleteServlet() {
		super();
	}

	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		String id = (String)request.getParameter("SelectedId");
		String DeleteMsg=null;
		String errDeleteMsg=null;
		int result=0;
		try{
			String pjectid[]=id.split("-");
			for(int i=1;i<pjectid.length;i++){
						
			String pjectcodename="txtprojcode"+pjectid[i];
			String projectDescriptionname="txtprojdesc"+pjectid[i];
			String projectTypename="txtprojType"+pjectid[i];
			String CMMLevelname="txtprojCMMLevel"+pjectid[i];
			String projectLocationname="txtprojLocation"+pjectid[i];
			String projectMonthname="txtprojMonth"+pjectid[i];
			
			
			
			
			String projectCode = (String)request.getParameter(pjectcodename);
			String projectDescription = (String)request.getParameter(projectDescriptionname);
			String projectType = (String)request.getParameter(projectTypename);
			String CMMLevel = (String)request.getParameter(CMMLevelname);
			String projectLocation = (String)request.getParameter(projectLocationname);
			String projectMonth = (String)request.getParameter(projectMonthname);
		
			System.out.println("\nProjectCode____________________"+projectCode);
			
			ARCdao arcdao=new ARCdao();
			result=arcdao.DeleteProjectSetupDao(projectCode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
			
			result=result+result;
			System.out.println("Rslt value"+result);
			}if(result>0){
				DeleteMsg= "Project Deleted Successfully";
				request.setAttribute("Deletesuccess", DeleteMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
			}
			else{
				DeleteMsg = "Internal Error Occured while Saving the Project";
				request.setAttribute("Deletefail", DeleteMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
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
		String id = (String)request.getParameter("SelectedId");
		String DeleteMsg=null;
		String errDeleteMsg=null;
		int result=0;
		System.out.println("\nIn");
		try{
			String pjectid[]=id.split("-");
			for(int i=1;i<pjectid.length;i++){
						
			String pjectcodename="txtprojcode"+pjectid[i];
			String projectDescriptionname="txtprojdesc"+pjectid[i];
			String projectTypename="txtprojType"+pjectid[i];
			String CMMLevelname="txtprojCMMLevel"+pjectid[i];
			String projectLocationname="txtprojLocation"+pjectid[i];
			String projectMonthname="txtprojMonth"+pjectid[i];
			
			
			
			
			String projectCode = (String)request.getParameter(pjectcodename);
			String projectDescription = (String)request.getParameter(projectDescriptionname);
			String projectType = (String)request.getParameter(projectTypename);
			String CMMLevel = (String)request.getParameter(CMMLevelname);
			String projectLocation = (String)request.getParameter(projectLocationname);
			String projectMonth = (String)request.getParameter(projectMonthname);
			
			System.out.println("\nIn1");
			System.out.println("\nProjectCode____________________"+projectCode);
			
			ARCdao arcdao=new ARCdao();
			result=arcdao.DeleteProjectSetupDao(projectCode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
			System.out.println("Rslt value"+result);
			}
			if(result>0){
				DeleteMsg= "Project Added Successfully";
				request.setAttribute("Deletesuccess", DeleteMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
			}
			else{
				DeleteMsg = "Internal Error Occured while Saving the Project";
				request.setAttribute("Deletefail", DeleteMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
			}
			
		}catch(Exception e)
		{
			System.out.println("Exception Occured in Delete Servlet "+e);
		}
		
	}
}