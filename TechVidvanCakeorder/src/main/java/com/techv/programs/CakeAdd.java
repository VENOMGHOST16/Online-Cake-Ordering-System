package com.techv.programs;
import java.sql.*;
public class CakeAdd {

	/*
	 * This class is used to add a new cake into the shop by the baker,
	 * the function has three input parameters cake name,cake description,and image link. 
	 * */
	public boolean addcake(String s1,String s2,String s3)
	{
		try
		{
			Connection cn=new MyConnection().doConnect();
			String s="INSERT INTO cakes (cake_name, cake_description, image_link)\r\n"
					+ "VALUES(?,?,?)";
			PreparedStatement ps=cn.prepareStatement(s);
			ps.setString(1, s2);
			ps.setString(2, s1);
			ps.setString(3,s3);
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
