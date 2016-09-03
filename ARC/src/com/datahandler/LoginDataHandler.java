package com.datahandler;
import com.dbconnection.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;
import javax.naming.ldap.*;
import javax.naming.directory.*;
import javax.naming.*;
import javax.naming.directory.*;

public class LoginDataHandler {

	       private static final String ldap_provider_url = "ldap://192.168.200.57:389/";
		   private static final String ldap_id_field = "uid";
		   private static final String ldap_search_context = "DC=ad,DC=infosys,DC=com";
		
		   public int ldapAuthenticate(String netid, String password)
		   {
		       
		       DirContext ctx = null;
		       Hashtable env = null;
		       
		       if (!password.equals(""))
		       {
		           try
		       {			
		           // Set up environment for creating initial context
		           env = new Hashtable(11);
		           env.put(javax.naming.Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		           env.put(javax.naming.Context.PROVIDER_URL, ldap_provider_url);
		           env.put( javax.naming.Context.REFERRAL, "follow" );
		   
		           // Authenticate
		           env.put(javax.naming.Context.SECURITY_AUTHENTICATION, "simple");
		           env.put(javax.naming.Context.SECURITY_PRINCIPAL, "itlinfosys\\" + netid );
		           env.put(javax.naming.Context.SECURITY_CREDENTIALS, password);
		   
		       } catch ( Exception e)
		       { 	
		           e.printStackTrace();
		       }            
		   
		       try
		       {
		               // Create initial context
		               ctx = new InitialDirContext(env);
		   
		   
		           }
		           catch (NamingException e)
		           {
		               return 2;
		           }
		           finally
		           {
		               // Close the context when we're done
		               try
		               {
		                   if (ctx != null)
		                       ctx.close();
		               }
		               catch (NamingException e)
		               {
		               }
		           }
		       }
		       else
		       {
		           return 2;
		       }
		       return 1;
		   }
		  
		   public int userAuthenticate(String netid) throws Exception
		   {
			   
			DatabaseUtil dbUtil = new DatabaseUtil();
			Connection connectionObj = null;
			PreparedStatement pstmt = null;
			ResultSet  resultSet = null;
			String AuthorizedUser=null;
			int Flag=1;
			try
			{
				connectionObj=dbUtil.openConnection();
				pstmt=connectionObj.prepareStatement("Select User from Users");
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					AuthorizedUser=resultSet.getString("User");
					if(AuthorizedUser.equalsIgnoreCase(netid))
					{
						Flag=1;
						break;
					}
					else
					{
						Flag=2;
					}
				}
				if(Flag==1)
				{
					return 1;
				}
				else
				{
					return 2;
				}
			}catch (SQLException e) {
			System.out.println("Exception Occured in Login"+e);
			}finally{
			resultSet.close();
			pstmt.close();
			dbUtil.closeConnection();
		   }
		return 2;
	  }
		   
	}



