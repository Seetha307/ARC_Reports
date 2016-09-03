package com.datahandler;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.data.DefaultPieDataset;

import com.ARCdao.ARCdao;
import com.dbconnection.DatabaseUtil;

public class Chart {
	
	 
	
	public  ArrayList projectCoveragepiechart(String CurMonth) throws Exception{
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm1 = null;
	Statement stm2 = null;
	Statement stm3= null;
	Statement stm4 = null;
	
	ResultSet totalPjectresultset=null;
	ResultSet standardpjectresultset=null;
	ResultSet level34resultset=null;
	ResultSet level5resultset=null;

	ArrayList pieList=null;
	PreparedStatement pstmt1 = null;
	PreparedStatement pstmt2 = null;
	PreparedStatement pstmt3 = null;
	PreparedStatement pstmt4 = null;
	double totalproject=0;
	double standardproject=0;
	double nonstandardproject=0;
	double level5=0;
	double level34=0;
	double totalprojectperc=0;
	double standardprojectperc=0;
	double nonstandardprojectperc=0;
	double level5perc=0;
	double level34perc=0;
	
	
	try
	{	
		connectionObj=dbUtil.openConnection();
		pieList=new ArrayList();
		pstmt1=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and  status='Presents'");
		totalPjectresultset=pstmt1.executeQuery();
		while(totalPjectresultset.next()){
			totalproject=totalPjectresultset.getInt(1);
		}
		pstmt1.close();
		
		//pstmt1.close();totalPjectresultset.close();
		pstmt2=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and Type='Standard' and  status='Presents'");
		
		standardpjectresultset=pstmt2.executeQuery();
		while(standardpjectresultset.next()){
			standardproject=standardpjectresultset.getInt(1);
		}
		//pstmt1.close();totalPjectresultset.close();
		pstmt3=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and CMMLevel='5' and  status='Presents'");
		level5resultset=pstmt3.executeQuery();
		while(level5resultset.next()){
			level5=level5resultset.getInt(1);
		}
		//pstmt1.close();totalPjectresultset.close();
		pstmt4=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and CMMLevel in('3','4') and  status='Presents'");
		level34resultset=pstmt4.executeQuery();
		while(level34resultset.next()){
			level34=level34resultset.getInt(1);
		}
		
		
		System.out.println("Total Project    ::"+totalproject);
		System.out.println("Standard Project ::"+standardproject);
		System.out.println("Level 3,4        ::"+level34);
		System.out.println("Level 5          ::"+level5);
		
		nonstandardproject=totalproject-standardproject;
		nonstandardprojectperc=(nonstandardproject/totalproject)*100;
		standardprojectperc=(standardproject/totalproject)*100;
		level34perc=(level34/totalproject)*100;
		level5perc=(level5/totalproject)*100;
		
		System.out.println("Total Project    ::"+totalproject);
		System.out.println("Standard Project ::"+standardprojectperc);
		System.out.println("NonStand Project ::"+nonstandardprojectperc);
		System.out.println("Level 3,4        ::"+level34perc);
		System.out.println("Level 5          ::"+level5perc);
		
		
		pieList.add(nonstandardprojectperc);
		pieList.add(level34perc);
		pieList.add(level5perc);
		
		return pieList;
		
	}catch(Exception e)
	{
		System.out.println("Exception Occured in Chart  :: "+e);
	}finally{
		//pstmt1.close();
		//pstmt2.close();
		//pstmt3.close();
		//pstmt4.close();
	//dbUtil.closeConnection();
   }
	return pieList;
}
	public  ArrayList employeeCoveragepiechart(String CurMonth) throws Exception{
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm1 = null;
		Statement stm2 = null;
		Statement stm3= null;
		Statement stm4 = null;
		
		ResultSet totalPjectresultset=null;
		ResultSet mcityresultset=null;
		ResultSet sholsresultset=null;
		ResultSet trivandrumresultset=null;
		ResultSet onsiteresultset=null;

		ArrayList pieList=null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		PreparedStatement pstmt4 = null;
		PreparedStatement pstmt5 = null;
		double totalproject=0;
		double mcity=0;
		double shols=0;
		double trivandrum=0;
		double onsite=0;
		double totalprojectperc=0;
		double mcityperc=0;
		double sholsperc=0;
		double trivandrumperc=0;
		double onsiteperc=0;
		
		
		try
		{	
			connectionObj=dbUtil.openConnection();
			pieList=new ArrayList();
			pstmt1=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and  status='Presents'");
			totalPjectresultset=pstmt1.executeQuery();
			while(totalPjectresultset.next()){
				totalproject=totalPjectresultset.getInt(1);
			}
			pstmt1.close();
			
			//pstmt1.close();totalPjectresultset.close();
			pstmt2=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and Location='M-City' and CMMLevel in('3','4') and  status='Presents'");
			
			mcityresultset=pstmt2.executeQuery();
			while(mcityresultset.next()){
				mcity=mcityresultset.getInt(1);
			}
			//pstmt1.close();totalPjectresultset.close();
			pstmt3=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and Location='Trivandrum' and CMMLevel in('3','4') and  status='Presents'");
			trivandrumresultset=pstmt3.executeQuery();
			while(trivandrumresultset.next()){
				trivandrum=trivandrumresultset.getInt(1);
			}
			//pstmt1.close();totalPjectresultset.close();
			pstmt4=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and Location='Shols' and CMMLevel in('3','4') and  status='Presents'");
			sholsresultset=pstmt4.executeQuery();
			while(sholsresultset.next()){
				shols=sholsresultset.getInt(1);
			}
			pstmt5=connectionObj.prepareStatement("Select count(*) from ARC_ProjectMaintenance where month='"+CurMonth+"' and Location='Onsite' and CMMLevel in('3','4') and  status='Presents'");
			onsiteresultset=pstmt5.executeQuery();
			while(onsiteresultset.next()){
				onsite=onsiteresultset.getInt(1);
			}
			
			System.out.println("Total Project    ::"+totalproject);
			System.out.println("mcity ::"+ mcity);
			System.out.println("shols        ::"+shols);
			System.out.println("trivandrum         ::"+trivandrum);
			System.out.println("onsite         ::"+onsite);
			
			
			mcityperc=(mcity/totalproject)*100;
			sholsperc=(shols/totalproject)*100;
			trivandrumperc=(trivandrum/totalproject)*100;
			onsiteperc=(onsite/totalproject)*100;
			
			System.out.println("Total Project    ::"+totalproject);
			System.out.println("mcityperc ::"+mcityperc);
			System.out.println("sholsperc ::"+sholsperc);
			System.out.println("trivandrumperc       ::"+trivandrumperc);
			System.out.println("onsiteperc         ::"+onsiteperc);
			
			
			pieList.add(mcityperc);
			pieList.add(sholsperc);
			pieList.add(trivandrumperc);
			pieList.add(onsiteperc);
			
			return pieList;
			
		}catch(Exception e)
		{
			System.out.println("Exception Occured in Chart  :: "+e);
		}finally{
			//pstmt1.close();
			//pstmt2.close();
			//pstmt3.close();
			//pstmt4.close();
		//dbUtil.closeConnection();
	   }
		return pieList;
	}
	
	public ArrayList monthvicechart() throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet montresultSet=null;
		ArrayList monthList=null;
		int result=0;
		try
		{
			monthList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			montresultSet=stm.executeQuery("Select distinct(Month) from ARC_ProjectMaintenance where status='Presents'");
			
			while(montresultSet.next())
			{
				monthList.add(montresultSet.getString("Month"));
				System.out.println("In Project Setup");
			}return monthList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return monthList;
}
	
	
}