package com.datahandler;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.AddProjectBean;
import com.dbconnection.DatabaseUtil;

public class ProjectSetup {

	public ArrayList searchAllProject() throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select * from ARC_ProjectMaintenance where status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyProjectcode(String projectcode) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where projectcode='"+projectcode+"' and status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
		public ArrayList searchbyCmmLevel(String cmmLevel) throws Exception
		{
	   
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm = null;
	ResultSet addpjectresultSet=null;
	ArrayList allSearchList=null;
	int result=0;
	try
	{
		allSearchList=new ArrayList();
		connectionObj=dbUtil.openConnection();
		stm=connectionObj.createStatement();
		addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where cmmLevel='"+cmmLevel+"'and status='Presents'");
		
		while(addpjectresultSet.next())
		{
			allSearchList.add(addpjectresultSet.getString("ProjectCode"));
			allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
			allSearchList.add(addpjectresultSet.getString("Type"));
			allSearchList.add(addpjectresultSet.getString("CMMLevel"));
			allSearchList.add(addpjectresultSet.getString("Location"));
			allSearchList.add(addpjectresultSet.getString("Month"));
					System.out.println("In Project Setup");
		}return allSearchList;
			}catch (Exception e) {
	System.out.println("Exception Occured in AddProject"+e);
	}finally{
		stm.close();
	dbUtil.closeConnection();
   }
	return allSearchList;
}
	public ArrayList searchbytype(String type) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where type='"+type+"' and status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbymonth(String month) throws Exception
{
	   
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm = null;
	ResultSet addpjectresultSet=null;
	ArrayList allSearchList=null;
	int result=0;
	try
	{
		allSearchList=new ArrayList();
		connectionObj=dbUtil.openConnection();
		stm=connectionObj.createStatement();
		addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where month='"+month+"' and  status='Presents'");
		
		while(addpjectresultSet.next())
		{
			allSearchList.add(addpjectresultSet.getString("ProjectCode"));
			allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
			allSearchList.add(addpjectresultSet.getString("Type"));
			allSearchList.add(addpjectresultSet.getString("CMMLevel"));
			allSearchList.add(addpjectresultSet.getString("Location"));
			allSearchList.add(addpjectresultSet.getString("Month"));
					System.out.println("In Project Setup");
		}return allSearchList;
			}catch (Exception e) {
	System.out.println("Exception Occured in AddProject"+e);
	}finally{
		stm.close();
	dbUtil.closeConnection();
   }
	return allSearchList;
}
	public ArrayList searchbyProjectcodeCmmLevel(String projectcode,String cmmLevel) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where projectcode='"+projectcode+"' and CMMLevel='"+cmmLevel+"'and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyProjectcodetype(String projectcode,String type) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where projectcode='"+projectcode+"' and CMMLevel='"+type+"' and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyprojectcodemonth(String projectcode,String month) throws Exception
	{
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where projectcode='"+projectcode+"month='"+month+"' and status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
	}
	public ArrayList searchbyCmmLeveltype(String cmmLevel,String type) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where Type='"+type+"' and CMMLevel='"+cmmLevel+"' and status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}public ArrayList searchbyCmmLevelmonth(String cmmLevel,String month) throws Exception
{
	   
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm = null;
	ResultSet addpjectresultSet=null;
	ArrayList allSearchList=null;
	int result=0;
	try
	{
		allSearchList=new ArrayList();
		connectionObj=dbUtil.openConnection();
		stm=connectionObj.createStatement();
		addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where month='"+month+"' and CMMLevel='"+cmmLevel+"' and  status='Presents'");
		
		while(addpjectresultSet.next())
		{
			allSearchList.add(addpjectresultSet.getString("ProjectCode"));
			allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
			allSearchList.add(addpjectresultSet.getString("Type"));
			allSearchList.add(addpjectresultSet.getString("CMMLevel"));
			allSearchList.add(addpjectresultSet.getString("Location"));
			allSearchList.add(addpjectresultSet.getString("Month"));
					System.out.println("In Project Setup");
		}return allSearchList;
			}catch (Exception e) {
	System.out.println("Exception Occured in AddProject"+e);
	}finally{
		stm.close();
	dbUtil.closeConnection();
   }
	return allSearchList;
}
public ArrayList searchbytypemonth(String type,String month) throws Exception
{
	   
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm = null;
	ResultSet addpjectresultSet=null;
	ArrayList allSearchList=null;
	int result=0;
	try
	{
		allSearchList=new ArrayList();
		connectionObj=dbUtil.openConnection();
		stm=connectionObj.createStatement();
		addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where Type='"+type+"' and month='"+month+"' and  status='Presents'");
		
		while(addpjectresultSet.next())
		{
			allSearchList.add(addpjectresultSet.getString("ProjectCode"));
			allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
			allSearchList.add(addpjectresultSet.getString("Type"));
			allSearchList.add(addpjectresultSet.getString("CMMLevel"));
			allSearchList.add(addpjectresultSet.getString("Location"));
			allSearchList.add(addpjectresultSet.getString("Month"));
					System.out.println("In Project Setup");
		}return allSearchList;
			}catch (Exception e) {
	System.out.println("Exception Occured in AddProject"+e);
	}finally{
		stm.close();
	dbUtil.closeConnection();
}
	return allSearchList;
}
	public ArrayList searchbyprojectcodetypeCmmLevel(String projectcode,String cmmLevel,String type) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where Type='"+type+"' and CMMLevel='"+cmmLevel+"'and projectcode='"+projectcode+"'and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyprojectcodeCmmLevelmonth(String projectcode,String cmmLevel,String month) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where month='"+month+"' and CMMLevel='"+cmmLevel+"'and projectcode='"+projectcode+"' and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyCmmLeveltypemonth(String cmmLevel,String type,String month) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where Type='"+type+"' and CMMLevel='"+cmmLevel+"'and month='"+month+"' and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public ArrayList searchbyprojectcodeCmmLeveltypemonth(String projectcode,String cmmLevel,String type,String month) throws Exception
	   {
		   
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		Statement stm = null;
		ResultSet addpjectresultSet=null;
		ArrayList allSearchList=null;
		int result=0;
		try
		{
			allSearchList=new ArrayList();
			connectionObj=dbUtil.openConnection();
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where projectcode='"+projectcode+"Type='"+type+"' and CMMLevel='"+cmmLevel+"'and month='"+month+"' and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
						allSearchList.add(addpjectresultSet.getString("ProjectCode"));
						allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
						allSearchList.add(addpjectresultSet.getString("Type"));
						allSearchList.add(addpjectresultSet.getString("CMMLevel"));
						allSearchList.add(addpjectresultSet.getString("Location"));
						allSearchList.add(addpjectresultSet.getString("Month"));
						System.out.println("In Project Setup");
			}return allSearchList;
				}catch (Exception e) {
		System.out.println("Exception Occured in AddProject"+e);
		}finally{
			stm.close();
		dbUtil.closeConnection();
	   }
		return allSearchList;
}
	public int updateProjectSetup(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
	   {
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		PreparedStatement pstmt = null;
		ResultSet updatepjectresultSet=null;
		ArrayList allSearchList=null;
		System.out.println("Project code in Update JAva"+projectcode);
		int result=0;
		System.out.println("\n Month"+projectMonth+"\nCode"+projectType);
		try{
			connectionObj=dbUtil.openConnection();
			String sql="update ARC_ProjectMaintenance set Month='"+projectMonth+"',ProjectDescription='"+projectDescription+"',Type='"+projectType+"',Location='"+projectLocation+"',CMMLevel='"+CMMLevel+"' where ProjectCode='"+projectcode+"'";
			System.out.println("\n Query:::"+sql);
			pstmt=connectionObj.prepareStatement("update ARC_ProjectMaintenance set ProjectDescription='"+projectDescription+"',Type='"+projectType+"',Location='"+projectLocation+"',CMMLevel='"+CMMLevel+"' where ProjectCode='"+projectcode+"' and status='Presents' and  Month='"+projectMonth+"'");
			
			
			//pstmt.setString(1,CMMLevel );
			
			
			result=pstmt.executeUpdate();
			 connectionObj.commit();
			System.out.println("Result-----"+result);
			
			}
		catch (SQLException e) {
			System.out.println("Exception Occured in Update Project  "+e);
			}finally{
				pstmt.close();
			dbUtil.closeConnection();
		   }
			return result;
	
	   }
	public int DeleteProjectSetup(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
	   {
		DatabaseUtil dbUtil = new DatabaseUtil();
		Connection connectionObj = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		ResultSet DeletepjectresultSet=null;
		ArrayList allSearchList=null;
		int count=0;
		System.out.println("Project code in Project code JAva"+projectcode);
		int result=0;
		System.out.println("\n Month"+projectMonth+"\nCode"+projectType);
		try{
			connectionObj=dbUtil.openConnection();
			pstmt1=connectionObj.prepareStatement("select count(*) from ARC_ProjectMaintenance where Projectcode='"+projectcode+"' and Month='"+projectMonth+"' and status='Deleted'");
			DeletepjectresultSet=pstmt1.executeQuery();
			while(DeletepjectresultSet.next()){
				count=DeletepjectresultSet.getInt(1);
				 System.out.println("Comes in while LOOp"+count);	
			}
			if(count>0){
				result=1;
				System.out.println("Comes in if LOOp"+count);
				return result;
					
			}
			else{
			pstmt=connectionObj.prepareStatement("update ARC_ProjectMaintenance set status='Deleted' where Projectcode='"+projectcode+"' and Month='"+projectMonth+"'");
						
			//pstmt.setString(1,CMMLevel );
			
			
			result=pstmt.executeUpdate();
			 connectionObj.commit();
			 pstmt.close();
			}
		}
		catch (Exception e) {
			System.out.println("Exception Occured in Delete Project"+e);
			}finally{
				pstmt1.close();
			dbUtil.closeConnection();
		   }
			return result;
	
	   }

public int InsertNewProjectSetup(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
{
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	ResultSet PresentpjectresultSet=null;
	ArrayList allSearchList=null;
	AddProjectBean addpjectBean=new AddProjectBean();
	String status="Presents";
	System.out.println("Project code in Save Project"+projectcode);
	int result=0;
	int count=0;
	System.out.println("\n Month"+projectMonth+"\nCode"+projectType);
	try{
		connectionObj=dbUtil.openConnection();
		
		pstmt1=connectionObj.prepareStatement("select count(*) from ARC_ProjectMaintenance where Projectcode='"+projectcode+"' and Month='"+projectMonth+"' and status='Deleted'");
		PresentpjectresultSet=pstmt1.executeQuery();
		while(PresentpjectresultSet.next()){
			count=PresentpjectresultSet.getInt(1);
			 System.out.println("Comes in while LOOp"+count);	
		}
		if(count>0){
		
			pstmt=connectionObj.prepareStatement("update ARC_ProjectMaintenance set status='Presents' where Projectcode='"+projectcode+"' and Month='"+projectMonth+"'");
			result=pstmt.executeUpdate();
			 connectionObj.commit();
			 pstmt.close();
			System.out.println("Comes in if LOOp"+result);
			return result;
				
		}
		else{
		pstmt=connectionObj.prepareStatement("insert into ARC_ProjectMaintenance values(?,?,?,?,?,?,?)");
		pstmt.setString(1,projectcode);
		pstmt.setString(2,projectMonth);
		pstmt.setString(3,projectDescription);
		pstmt.setString(4,projectType);
		pstmt.setString(5,CMMLevel);
		pstmt.setString(6,status);
		pstmt.setString(7,projectLocation);
		pstmt.executeUpdate();
		result=pstmt.getUpdateCount();
		
		addpjectBean.setProjectCode(projectcode);
		addpjectBean.setMonth(projectMonth);
		addpjectBean.setProjectDescription(projectDescription);
		addpjectBean.setType(projectType);
		addpjectBean.setCmmLevel(CMMLevel);
		addpjectBean.setLocation(projectLocation);
		
		 System.out.println("Insert new  pject"+result);
		}
	}
	catch (Exception e) {
		System.out.println("Exception Occured in Inser New Project"+e);
		}finally{
			pstmt.close();
		dbUtil.closeConnection();
	   }
		return result;

}
public ArrayList FetchPreviousData(String month,int inmonth) throws Exception
{
	   
	DatabaseUtil dbUtil = new DatabaseUtil();
	Connection connectionObj = null;
	Statement stm = null;
	ResultSet addpjectresultSet=null;
	ArrayList allSearchList=null;
	PreparedStatement pstmt1 = null;
	ResultSet PresentpjectresultSet=null;
	int result=0;
	int count=0;
	try
	{
		allSearchList=new ArrayList();
		connectionObj=dbUtil.openConnection();
		
		pstmt1=connectionObj.prepareStatement("select count(*) from ARC_ProjectMaintenance where month='"+month+"' and  status='Presents'");
		PresentpjectresultSet=pstmt1.executeQuery();
		while(PresentpjectresultSet.next()){
			count=PresentpjectresultSet.getInt(1);
			 System.out.println("Comes in while LOOp"+count);	
		}
		if(count>0){
		
		stm=connectionObj.createStatement();
		addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where month='"+month+"' and  status='Presents'");
		
		while(addpjectresultSet.next())
		{
			allSearchList.add(addpjectresultSet.getString("ProjectCode"));
			allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
			allSearchList.add(addpjectresultSet.getString("Type"));
			allSearchList.add(addpjectresultSet.getString("CMMLevel"));
			allSearchList.add(addpjectresultSet.getString("Location"));
			allSearchList.add(addpjectresultSet.getString("Month"));
					System.out.println("In Project Setup");
		}
		stm.close();addpjectresultSet.close();
		return allSearchList;
		}
		else{
			System.out.println("Comes in Else");
			
			String prevMonth=null;
			inmonth=inmonth-1;
			
			System.out.println(inmonth);
			for(int i=inmonth;i>0;i--)
			{
				System.out.println("Comes in beFor");
				
			//	System.out.println("Comes in afFor");
				
				String tomonth[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
				
				prevMonth=tomonth[i];
				pstmt1=connectionObj.prepareStatement("select count(*) from ARC_ProjectMaintenance where month='"+prevMonth+"' and  status='Presents'");
				PresentpjectresultSet=pstmt1.executeQuery();
					while(PresentpjectresultSet.next()){
						count=PresentpjectresultSet.getInt(1);
						 System.out.println("Comes in  Else while LOOp"+count);	
						 
					}
				if(count>0){
					
					System.out.println("Comes in Break");
					break;
				}
				//addpjectresultSet.close();
				//stm.close();
				//pstmt1.close();
				//PresentpjectresultSet.close();
			}
			
			
			
			stm=connectionObj.createStatement();
			addpjectresultSet=stm.executeQuery("Select ProjectCode,ProjectDescription,Type,CMMLevel,Location,Month from ARC_ProjectMaintenance where month='"+prevMonth+"' and  status='Presents'");
			
			while(addpjectresultSet.next())
			{
				allSearchList.add(addpjectresultSet.getString("ProjectCode"));
				allSearchList.add(addpjectresultSet.getString("ProjectDescription"));
				allSearchList.add(addpjectresultSet.getString("Type"));
				allSearchList.add(addpjectresultSet.getString("CMMLevel"));
				allSearchList.add(addpjectresultSet.getString("Location"));
				allSearchList.add(addpjectresultSet.getString("Month"));
				System.out.println("In Project Setup");
			}return allSearchList;
		}
			}catch (Exception e) {
	System.out.println("Exception Occured in Fetch Project"+e);
	}finally{
		stm.close();
	dbUtil.closeConnection();
   }
	return allSearchList;
}
}