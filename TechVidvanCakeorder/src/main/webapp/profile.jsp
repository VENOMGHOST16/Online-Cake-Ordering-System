<%@include file="format2.jsp"%>
<%@page import="com.techv.programs.MyConnection"%>
<%@page import="java.sql.*" %> 
<!--  
	The following profile page will show the orders ordered by the current user in the session

-->
<% 
	Connection cn=new MyConnection().doConnect();
	String email=(String)session.getAttribute("email");
	String s="select *from users where email=?";
	
	PreparedStatement ps=cn.prepareStatement(s);
	ps.setString(1,email);
	ResultSet rs=ps.executeQuery();
	rs.next();
	//rs contains the details of the current user
	
	s="SELECT orders.order_id,orders.order_date,cakes.cake_id,cakes.cake_name, cakes.image_link	FROM  orders JOIN  cakes ON orders.cake_id = cakes.cake_id WHERE orders.user_id = ?;  -- Replace '?' with the particular user's ID.";
	ResultSet rs2;
	session.setAttribute("id", rs.getInt(1));
	ps=cn.prepareStatement(s);
	ps.setInt(1,rs.getInt(1));
	rs2=ps.executeQuery();
	
	//rs2 contains the orders given byv the curent user in the session.
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile | Cake Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="profile.css">
</head>

<body>

    <div class="profile-container">
        <h2>User Details</h2>
        <div class="user-details"> 
            <p><strong>Name:</strong><%=rs.getString(2)%></p>
            <p><strong>Email:</strong><%=rs.getString(4)%></p>
            <p><strong>Mobile Number:</strong> <%=rs.getString(3)%></p>
        </div>

	<% 
		if(rs2.next())
		{
	%>
        <h2>Your Orders</h2>
        <table class="order-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Cake Name</th>
                    <th>Date Ordered</th>
                    <th>Order ID</th>
                </tr>
            </thead>
            <% 
            	do{
            		//Iterating through the full result set to showb all the orders given by the users.
            		
            	
            %>
            <tbody>
                <tr>
                    <td><img src="<%=rs2.getString(5)%>" alt="[Cake Name]" class="order-cake-image"></td>
                    <td><%=rs2.getString(4)%></td>
                    <td><%=rs2.getString(2)%></td>
                    <td><%=rs2.getString(1)%></td>
                </tr>
                
            </tbody>
            <% 
            	}while(rs2.next());
		}
            		
            %>
        </table>
        
          
        	
    </div>

</body>

</html>
