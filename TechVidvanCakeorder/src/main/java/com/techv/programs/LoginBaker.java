package com.techv.programs;

import java.sql.*;
public class LoginBaker{
	
	//The class is used to check the login credentials of the amdin baker.
	String username;
	String password;
	Connection cn=null;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int check_Login()
	{
		int count=0;
		try
		{
			cn=new MyConnection().doConnect();
			String s="select count(*) as total_rows from baker where username=? and password=?";
			
			PreparedStatement ps=cn.prepareStatement(s);
			ps.setString(1,username);
			ps.setString(2, password);
			ResultSet resultSet=ps.executeQuery();
			
			//resultSet will receive the number of fields that match the condition
			//for an ideal case and successful login the count should always be 1
			 if (resultSet.next()) {
	                count = resultSet.getInt("total_rows");
	                //As we have given the name total_rows to the count(*) we shall receive the value stored in this field
	            }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return count;
		//returning the no of fields that match the given criteria
	}
}
