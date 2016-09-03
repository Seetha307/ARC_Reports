package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.data.DefaultPieDataset;

/**
 * Servlet implementation class for Servlet: ChartReportServlet
 *
 */
 public class ChartReportServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ChartReportServlet() {
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
		double nonStandard=0;
		double level34=0;
		double level5=0;
		String contextPath = request.getContextPath();
		double mcity=0;
		double shols=0;
		double trivandrum=0;
		double onsite=0;
		System.out.println("comin");
		ArrayList projectpieList=new ArrayList();
		ArrayList employeepieList=new ArrayList();
		projectpieList=(ArrayList)request.getAttribute("projectpieChartList");
		employeepieList=(ArrayList)request.getAttribute("employeepieChartList");
		
		nonStandard=(Double)projectpieList.get(0);
		level34=(Double)projectpieList.get(1);
		level5=(Double)projectpieList.get(2);
		System.out.println("comin1");
		mcity=(Double)employeepieList.get(0);
		shols=(Double)employeepieList.get(1);
		trivandrum=(Double)employeepieList.get(2);
		onsite=(Double)employeepieList.get(3);
		
	    final DefaultPieDataset projectdata = new DefaultPieDataset();
	    projectdata.setValue("Non Standard", nonStandard);
	    projectdata.setValue("Level 3//4", level34);
	    projectdata.setValue("Level 5", level5);
	  
	    final DefaultPieDataset employeedata = new DefaultPieDataset();
	    employeedata.setValue("M-City", mcity);
	    employeedata.setValue("Shols", shols);
	    employeedata.setValue("Trivandrum", trivandrum);
	    employeedata.setValue("Onsite", onsite);
	    System.out.println("comin2");
	    JFreeChart projectchart = ChartFactory.createPieChart("CMM Level Adherence - % of Projects in L3/L4,L5 ", projectdata, true, true, false);
	    JFreeChart employeechart = ChartFactory.createPieChart("CMM Level Adherence - Employee Coverage in L3/L4,L5 ", employeedata, true, true, false);

	    
	    try {
	        final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
	       final File projectfile = new File(request.getSession().getServletContext().getRealPath("/images/projectpiechart.bmb"));
	       final File employeefile = new File(request.getSession().getServletContext().getRealPath("/images/employeepiechart.bmb"));
	     // final File file1 = new File("E:\\ARC\\piechart1.bmb");
	      
	      ChartUtilities.saveChartAsPNG(projectfile, projectchart, 600, 400, info);
	      ChartUtilities.saveChartAsPNG(employeefile, employeechart, 600, 400, info);
	      System.out.println("forwarde");
	      getServletConfig().getServletContext().getRequestDispatcher("/jsp/chart.jsp").forward(request, response);
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}   	  	    
}