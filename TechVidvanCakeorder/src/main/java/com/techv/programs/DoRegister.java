package com.techv.programs;
import java.sql.*;
public class DoRegister {
	
	/*
	 * When there is a new user registration,then this class is used to enter the credentials of new user
	 * into the database.
	 * */
	String fullname;
	String mobno;
	String email;
	String password;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean register()
	{
		try
		{
			Connection cn=new MyConnection().doConnect();
			String s="INSERT INTO users (full_name, mobile_no, email, password)"
					+ " VALUES (?,?,?,?)";
			
			//Inserting the user credentials into the database.
			PreparedStatement ps=cn.prepareStatement(s);
			ps.setString(1, fullname);
			ps.setString(2, mobno);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
		
	}
}
