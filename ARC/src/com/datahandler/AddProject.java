package com.datahandler;
import com.bean.*;

import com.dbconnection.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AddProject {

		   public int insertProject(String projectcode,String month,String projectDescription,String type,String cmmLevel,String location) throws Exception
		   {
			   
			DatabaseUtil dbUtil = new DatabaseUtil();
			Connection connectionObj = null;
			PreparedStatement pstmt = null;
			AddProjectBean addpjectBean=new AddProjectBean();
			String status="Presents";
			int result=0;
			try
			{
				connectionObj=dbUtil.openConnection();
				pstmt=connectionObj.prepareStatement("insert into ARC_ProjectMaintenance values(?,?,?,?,?,?,?)");
				pstmt.setString(1,projectcode);
				pstmt.setString(2,month);
				pstmt.setString(3,projectDescription);
				pstmt.setString(4,type);
				pstmt.setString(5,cmmLevel);
				pstmt.setString(6,status);
				pstmt.setString(7,location);
				pstmt.executeUpdate();
				result=pstmt.getUpdateCount();
				
				addpjectBean.setProjectCode(projectcode);
				addpjectBean.setMonth(month);
				addpjectBean.setProjectDescription(projectDescription);
				addpjectBean.setType(type);
				addpjectBean.setCmmLevel(cmmLevel);
				addpjectBean.setLocation(location);
				connectionObj.commit();
				System.out.println(result);
				//connectionObj.commit();
				
			}catch (Exception e) {
			System.out.println("Exception Occured in AddProject"+e);
			}finally{
						pstmt.close();
			dbUtil.closeConnection();
		   }
			return result;
	  }
		   
	}



