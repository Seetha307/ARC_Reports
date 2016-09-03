package com.datahandler;




import java.io.*;   
import java.sql.Connection;
import java.util.*;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.poi.hssf.usermodel.*; 
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.util.Region;

import com.dbconnection.DatabaseUtil;

   public class ReadExcel1
   {	
	  	   public static void main(String[] args) throws Exception
	  	{
		 // String path="E\ARC\retl";
		  // int pjectpath=path.indexOf("\\");
			//System.out.println("Path"+pjectpath);
		   System.out.println("SSSS");
		   int s=readExcelData("E:\\ARC\\RETL.xls");
		   System.out.println("SSSS"+s);
		   s=xxxx();
	   }
	  	 public  static int  xxxx() throws Exception
	   	  	{
	  		DatabaseUtil dbUtil = new DatabaseUtil();
			Connection connectionObj = null;
			PreparedStatement pstmt = null;
			PreparedStatement pstmt2 = null;
			int result=0;
			//PreparedStatement pstmt1 = null;
			ResultSet rs=null;
			Date CurDate=new Date((new java.util.Date()).getTime());;
			System.out.println("date"+CurDate);
	  	 try
			{
				connectionObj=dbUtil.openConnection();
				pstmt2=connectionObj.prepareStatement("Select max(UploadedDate) from ARC_RevenueProjection  where IBU=?  ");
				rs=pstmt2.executeQuery();
				System.out.println("date");
				int revenueData=0;
				while(rs.next()){
					
					System.out.println("Max dadata"+rs.getDate(1));
					result=99;
				}
			}catch (Exception e) {
			System.out.println("Exception Occured in Read Excel"+e);
			}finally{
				
						pstmt2.close();
			dbUtil.closeConnection();
		   }
		return result;
	   	  	}
      		public  static int  readExcelData(String path) throws Exception
   	  	{
      		
      			
      	
      		System.out.println("Path in djava"+path);
   	  		InputStream input = new FileInputStream (path);
   	  		HSSFWorkbook excel= new HSSFWorkbook (input);
   	  		
   	  		String IBU=null;
   	  		double TargetQ1=0;
   	  		double TargetQ2=0;
   	  		double TargetQ3=0;
   	  		double TargetQ4=0;
   	  		
   	  		double CSEQ1=0;
	  		double CSEQ2=0;
	  		double CSEQ3=0;
	  		double CSEQ4=0;
	  		
	  		double DEQ1=0;
	  		double DEQ2=0;
	  		double DEQ3=0;
	  		double DEQ4=0;
	  		
	  		double ActualsQ1=0;
	  		double ActualsQ2=0;
	  		double ActualsQ3=0;
	  		double ActualsQ4=0;
   	  		
   	  		
   	  		HSSFSheet sheet = excel.getSheetAt (0);
   	  		System.out.println (sheet.getFirstRowNum());;
   	  		System.out.println (sheet.getLastRowNum());;
   	  		int c=0;
   	 	
   	  			Iterator rowItr = sheet.rowIterator ();
   	  			while (rowItr.hasNext())
   				{	c=c+1;
   					HSSFRow row = (HSSFRow) rowItr.next ();
   	  				Iterator cellItr = row.cellIterator ();
   	  			System.out.println("Row"+c);
   	  				while (cellItr.hasNext())
   	  				{   	  					
   	  					
   	  					HSSFCell cell = (HSSFCell) cellItr.next ();
   	  					
   	  					if(c==1){
   	  					if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
   	  						IBU=cell.getStringCellValue();
   	  	   	 			System.out.println ("IBU!!!!!!!!!!!!!!!"+cell.getStringCellValue());
   	  	   	 			
   	  	   	 		}	
   	  					}
   	  					
   	  					
   	  					if(c==2){
		   	  	   	 	if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
		   	   	 			System.out.println ("Quarter!!!!!!!!!!!!!!!"+cell.getStringCellValue());
		   	   	 		}
		   	  	   	 		}
   	  					
   	  					
   	  					if(c==3){
		   	  	   	 	if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
			  				System.out.println ("TYpe!!!!!!!!!!!!!!!"+cell.getStringCellValue());
		   	  	   	 		}
		   	  	   	 		if(cell.getCellType () == HSSFCell.CELL_TYPE_NUMERIC){
			   	  	   	 		if(cell.getCellNum()==2){
			   	  	   	 	TargetQ1=cell.getNumericCellValue();
			   	  	   	 			System.out.println ("Q1!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
			   	  	   	 		}
			   	  	   	 		if(cell.getCellNum()==3){
			   	  	   	 	TargetQ2=cell.getNumericCellValue();
			  	   	 			System.out.println ("Q2!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
			   	  	   	 		}if(cell.getCellNum()==4){
			   	  	   	 	TargetQ3=cell.getNumericCellValue();
		   	  	   	 			System.out.println ("Q3!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
			   	  	   	 		}if(cell.getCellNum()==5){
			   	  	   	 	TargetQ4=cell.getNumericCellValue();
		   	  	   	 			System.out.println ("Q4!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
			   	  	   	 		}
			   	  	   
			   	  	   	 		}
		   	  	   	 		}
   	  					
   	  					
   	  					
   	  					
		   	  	   	if(c==4){
		   	  	   if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
		  				System.out.println ("TYpe!!!!!!!!!!!!!!!"+cell.getStringCellValue());
	   	  	   	 		}
	   	  	   	 		if(cell.getCellType () == HSSFCell.CELL_TYPE_NUMERIC){
		   	  	   	 		if(cell.getCellNum()==2){
		   	  	   	 	CSEQ1=cell.getNumericCellValue();
		   	  	   	 			System.out.println ("Q1!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}
		   	  	   	 		if(cell.getCellNum()==3){
		   	  	   	 	CSEQ2=cell.getNumericCellValue();
		  	   	 			System.out.println ("Q2!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}if(cell.getCellNum()==4){
		   	  	   	 	CSEQ3=cell.getNumericCellValue();
	   	  	   	 			System.out.println ("Q3!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}if(cell.getCellNum()==5){
		   	  	   	 	CSEQ4=cell.getNumericCellValue();
	   	  	   	 			System.out.println ("Q4!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}
			   	  	   
			   	  	   	 		}
		   	  	   	}
		   	  	   	
		   	  	   	
		   	  	   	
		   	  	if(c==5){
		   	  	if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
	  				System.out.println ("TYpe!!!!!!!!!!!!!!!"+cell.getStringCellValue());
   	  	   	 		}
   	  	   	 		if(cell.getCellType () == HSSFCell.CELL_TYPE_NUMERIC){
	   	  	   	 		if(cell.getCellNum()==2){
	   	  	   	 	DEQ1=cell.getNumericCellValue();
	   	  	   	 			System.out.println ("Q1!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
	   	  	   	 		}
	   	  	   	 		if(cell.getCellNum()==3){
	   	  	   	 	DEQ2=cell.getNumericCellValue();
	  	   	 			System.out.println ("Q2!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
	   	  	   	 		}if(cell.getCellNum()==4){
	   	  	   	 	DEQ3=cell.getNumericCellValue();
   	  	   	 			System.out.println ("Q3!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
	   	  	   	 		}if(cell.getCellNum()==5){
	   	  	   	 	DEQ4=cell.getNumericCellValue();
   	  	   	 			System.out.println ("Q4!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
	   	  	   	 		}
		   	  	   
		   	  	   	 		}
		   	  	}
		   	  	
		   	  	
		   	  	
		   	 if(c==6){
	   	  	   	 		if(cell.getCellType () == HSSFCell.CELL_TYPE_STRING){
		  				System.out.println ("TYpe!!!!!!!!!!!!!!!"+cell.getStringCellValue());
	   	  	   	 		}
	   	  	   	 		if(cell.getCellType () == HSSFCell.CELL_TYPE_NUMERIC){
		   	  	   	 		if(cell.getCellNum()==2){
		   	  	   	 	ActualsQ1=cell.getNumericCellValue();
		   	  	   	 			System.out.println ("Q1!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}
		   	  	   	 		if(cell.getCellNum()==3){
		   	  	   	 	ActualsQ2=cell.getNumericCellValue();
		  	   	 			System.out.println ("Q2!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}if(cell.getCellNum()==4){
		   	  	   	 	ActualsQ3=cell.getNumericCellValue();
	   	  	   	 			System.out.println ("Q3!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}if(cell.getCellNum()==5){
		   	  	   	 	ActualsQ4=cell.getNumericCellValue();
	   	  	   	 			System.out.println ("Q4!!!!!!!!!!!!!!!"+cell.getNumericCellValue());
		   	  	   	 		}
	   	  	   	 		}
		   	  	   
		   	  	   	 }
		   	 
		   	 
		   	 
		   	 
   	  					}
      	  			input.close (); 
   	  	} 
   	  			
   	  			System.out.println("==============="+IBU+"==================");
   	  			System.out.println("-----------Q1-----Q2-----Q3----Q4");
   	  			System.out.println("Target-----"+TargetQ1+"------"+TargetQ2+"------"+TargetQ3+"------"+TargetQ4+"------");
   	  			System.out.println("CSE--------"+CSEQ1+"------"+CSEQ2+"------"+CSEQ3+"------"+CSEQ4+"------");
   	  			System.out.println("DE---------"+DEQ1+"------"+DEQ2+"------"+DEQ3+"------"+DEQ4+"------");
   	  			System.out.println("Actuals----"+ActualsQ1+"------"+ActualsQ2+"------"+ActualsQ3+"------"+ActualsQ4+"------");
   	  			
   	  		DatabaseUtil dbUtil = new DatabaseUtil();
			Connection connectionObj = null;
			PreparedStatement pstmt = null;
			PreparedStatement pstmt2 = null;
			//PreparedStatement pstmt1 = null;
			ResultSet rs=null;
			Date CurDate=new Date((new java.util.Date()).getTime());;
			System.out.println("date"+CurDate);
		  //Date date=new Date(java.util.Date()).getTime();
		  //Date s=new Date(java.util.Date); where UploadedDate='"+CurDate+"'
		 
			
			double Be=56;
			int result=0;
			String quarter="Q1";
			try
			{
				connectionObj=dbUtil.openConnection();
				pstmt2=connectionObj.prepareStatement("Select count(*) from ARC_RevenueProjection where IBU='"+IBU+"'");
				rs=pstmt2.executeQuery();
				int revenueData=0;
				while(rs.next()){
					revenueData=rs.getInt(1);
					
					System.out.println("data"+revenueData);
					result=99;
				}
				pstmt2.close();
				if(revenueData<=0)
				{
				pstmt=connectionObj.prepareStatement("insert into ARC_RevenueProjection values(?,?,?,?,?,?,?)");
						
				pstmt.setString(1, IBU);
				pstmt.setString(2, quarter);
				pstmt.setDouble(3, CSEQ1);
				pstmt.setDouble(4, DEQ1);
				pstmt.setDouble(5, ActualsQ1);
				pstmt.setDouble(6, Be);
				pstmt.setDate(7, CurDate);
				pstmt.executeUpdate();
				connectionObj.commit();
				quarter="Q2";
				pstmt.setString(1, IBU);
				pstmt.setString(2, quarter);
				pstmt.setDouble(3, CSEQ2);
				pstmt.setDouble(4, DEQ2);
				pstmt.setDouble(5, ActualsQ2);
				pstmt.setDouble(6, Be);
				pstmt.setDate(7, CurDate);
				pstmt.executeUpdate();
				connectionObj.commit();
				quarter="Q3";
				pstmt.setString(1, IBU);
				pstmt.setString(2, quarter);
				pstmt.setDouble(3, CSEQ3);
				pstmt.setDouble(4, DEQ3);
				pstmt.setDouble(5, ActualsQ3);
				pstmt.setDouble(6, Be);
				pstmt.setDate(7, CurDate);
				pstmt.executeUpdate();
				connectionObj.commit();
				quarter="Q4";
				pstmt.setString(1, IBU);
				pstmt.setString(2, quarter);
				pstmt.setDouble(3, CSEQ4);
				pstmt.setDouble(4, DEQ4);
				pstmt.setDouble(5, ActualsQ4);
				pstmt.setDouble(6, Be);
				pstmt.setDate(7, CurDate);
				pstmt.executeUpdate();
				connectionObj.commit();
				result=pstmt.getUpdateCount();
				pstmt.close();
				return result;
				}
				else{
					return result;
				}
			}catch (Exception e) {
			System.out.println("Exception Occured in Read Excel"+e);
			}finally{
				
						pstmt2.close();
			dbUtil.closeConnection();
		   }
			return result;
		
	  }
				
   	  	}
   	

