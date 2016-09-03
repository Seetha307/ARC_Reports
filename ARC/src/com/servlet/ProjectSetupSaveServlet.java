package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ARCdao.ARCdao;

/**
 * Servlet implementation class for Servlet: ProjectSetupSaveServlet
 *
 */
 public class ProjectSetupSaveServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ProjectSetupSaveServlet() {
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
		String id = (String)request.getParameter("SelectedId");
		int result=0;
		String InsMsg=null;
		String errInsMsg=null;
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
			result=arcdao.InsertNewProjectSetupDao(projectCode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
			result=result+result;
			System.out.println("Rslt value"+result);
			System.out.println("Loop value"+i);
			}
			if(result>0){
				InsMsg= "Project Saved Successfully";
				request.setAttribute("Inssuccess", InsMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
			}
			else{
				errInsMsg = "Internal Error Occured while Saving the Project";
				request.setAttribute("Insfail", errInsMsg);
				getServletConfig().getServletContext().getRequestDispatcher(
				"/jsp/ProjectSetup1.jsp").forward(request, response);
			}
			
		}catch(Exception e)
		{
			System.out.println("Exception Occured"+e);
		}
		
	
	}   	  	    
}