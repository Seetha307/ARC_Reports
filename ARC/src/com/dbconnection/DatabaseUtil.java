package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseUtil {

		Connection con1=null;
		public Connection openConnection()throws SQLException,Exception
		{
			String database;
			
			try
			{
				database="E:\\ARC\\db1.mdb";
				String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";DriverID=22;READONLY=true"; 
				System.out.println("hi");
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				
				con1=DriverManager.getConnection(url,"","");
				
				System.out.println(con1.toString());
				
				
			}
			finally
			{
				System.out.println("Connection established");
			}
			return con1;
		}
		
		public void closeConnection()throws SQLException,Exception
		{
			System.out.println("Connection closed");
			con1.close();
			
		}

	}


