package com.techv.programs;
import java.sql.*;
public class Ordering {
	/*
	 * When the user selects a cake to order,this class is used to place the order
	 * and enter the credentials and details of the cake and of the user 
	 * */
	public boolean order(int cakeid,int userid)
	{
		String s="INSERT INTO orders (user_id, cake_id, order_date) VALUES (?, ?, CURRENT_TIMESTAMP)";
		try
		{
			Connection cn=new MyConnection().doConnect();
			PreparedStatement ps=cn.prepareStatement(s);
			ps.setInt(1, userid);
			ps.setInt(2, cakeid);
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
