package com.ARCdao;
import com.datahandler.*;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

public class ARCdao {

	public int LdapLogin(String UserName,String Password) throws IOException
	{
	
	LoginDataHandler logDatahandler = new LoginDataHandler();
	int result=logDatahandler.ldapAuthenticate(UserName,Password);
	return result;
	}
	public int UserAccess(String UserName) throws Exception
	{
		LoginDataHandler logDatahandler = new LoginDataHandler();
		int result=logDatahandler.userAuthenticate(UserName);
		return result;
	}
	public int AddNewProject(String projectcode,String month,String projectDescription,String type,String cmmLevel,String location) throws Exception
	{
		AddProject addproject = new AddProject();
		int result=addproject.insertProject(projectcode, month, projectDescription, type, cmmLevel, location);
			return result;
	}
	public ArrayList SearchAllProject() throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchAllProject();
		return allpjectList;
	}
	
	public ArrayList SearchByProjectCode(String projectcode) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyProjectcode(projectcode);
		return allpjectList;
	}
	public ArrayList SearchByCMMLevel(String cmmLevel) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyCmmLevel(cmmLevel);
		return allpjectList;
	}
	public ArrayList SearchByType(String type) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbytype(type);
		return allpjectList;
	}
	public ArrayList SearchByMonth(String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbymonth(month);
		return allpjectList;
	}
	public ArrayList SearchByProjecCodeCMMLevel(String projectcode,String cmmLevel) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyProjectcodeCmmLevel(projectcode, cmmLevel);
		return allpjectList;
	}
	public ArrayList SearchByProjecCodeType(String projectcode,String type) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyProjectcodetype(projectcode, type);
		return allpjectList;
	}
	public ArrayList SearchByProjecCodeMonth(String projectcode,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyprojectcodemonth(projectcode, month);
		return allpjectList;
	}
	public ArrayList SearchByCMMLevelType(String cmmLevel,String type) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyCmmLeveltype(cmmLevel, type);
		return allpjectList;
	}
	public ArrayList SearchByCMMLevelMonth(String cmmLevel,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyCmmLevelmonth(cmmLevel, month);
		return allpjectList;
	}
	public ArrayList SearchBytypeMonth(String type,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbytypemonth(type, month);
		return allpjectList;
	}
	public ArrayList SearchByProjectCMMType(String projectcode,String cmmLevel,String type) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyprojectcodetypeCmmLevel(projectcode, cmmLevel, type);
		return allpjectList;
	}
	public ArrayList SearchByProjectCMMmonth(String projectcode,String cmmLevel,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyprojectcodeCmmLevelmonth(projectcode, cmmLevel, month);
		return allpjectList;
	}
	public ArrayList SearchByCMMTypeMonth(String cmmLevel,String type,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyCmmLeveltypemonth(cmmLevel, type, month);
		return allpjectList;
	}
	public ArrayList SearchByprojectcodeCMMTypeMonth(String projectcode,String cmmLevel,String type,String month) throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		 allpjectList=projectSetup.searchbyprojectcodeCmmLeveltypemonth(projectcode, cmmLevel, type, month);
		return allpjectList;
	}
	public int UpdateProjectSetupDao(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		int res=projectSetup.updateProjectSetup(projectcode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
		return res;
	}
	public int DeleteProjectSetupDao(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		int res=projectSetup.DeleteProjectSetup(projectcode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
		return res;
	}
	public int UploadRevenueProjectionDao(String path)throws Exception
	{
		System.out.println("Path in dao"+path);
		RevenueProjection rExcel = new RevenueProjection();
		int res=rExcel.readExcelData(path);
		return res;
	}
	
	public int InsertNewProjectSetupDao(String projectcode,String projectDescription,String projectType,String CMMLevel,String projectLocation,String projectMonth)throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		int res=projectSetup.InsertNewProjectSetup(projectcode,projectDescription,projectType,CMMLevel,projectLocation,projectMonth);
		return res;
	}
	public ArrayList FectchPreviousData(String Month,int inmonth)throws Exception
	{
		ProjectSetup projectSetup = new ProjectSetup();
		ArrayList allpjectList=null;
		allpjectList=projectSetup.FetchPreviousData(Month,inmonth);
		return allpjectList;
	}
	
	public ArrayList projectCoveragepieChart(String CurMonth)throws Exception
	{
		Chart chart = new Chart();
		ArrayList pieList=null;
		pieList=chart.projectCoveragepiechart(CurMonth);
		return pieList;
	}
	public ArrayList employeeCoveragepieChart(String CurMonth)throws Exception
	{
		Chart chart = new Chart();
		ArrayList pieList=null;
		pieList=chart.employeeCoveragepiechart(CurMonth);
		return pieList;
	}
	public ArrayList monthviceChart()throws Exception
	{
		Chart chart = new Chart();
		ArrayList pieList=null;
		pieList=chart.monthvicechart();
		return pieList;
	}
	public ArrayList readRetlRevenueProjection()throws Exception
	{
		ReadExcel rxcel=new ReadExcel();
		ArrayList revenueList=null;
		revenueList=rxcel.readRetlRevnueData();
		return revenueList;
	}
	public ArrayList readIHLRevenueProjection()throws Exception
	{
		ReadExcel rxcel=new ReadExcel();
		ArrayList revenueList=null;
		revenueList=rxcel.readIHLRevnueData();
		return revenueList;
	}
	public  static Date  getLasDateModified() throws Exception
	{
		RevenueProjection rdate = new RevenueProjection();
		Date date=rdate.getLasDateModified();
		System.out.println("DAO DAte"+date);
		return date;
	}
}
