<%@include file="format3.jsp"%>
<%@page import="com.techv.programs.MyConnection"%>
<%@page import="java.sql.*" %> 
<!--  
	The following jsp page will show the total orders given by all the users and 
	will be used in the baker admin page.
-->
<% 
	Connection cn=new MyConnection().doConnect();
	String s="SELECT orders.order_id,orders.order_date,cakes.cake_name, cakes.image_link, users.email, users.full_name"+" FROM  orders JOIN  cakes ON orders.cake_id = cakes.cake_id JOIN  users ON orders.user_id = users.account_id";
	PreparedStatement ps=cn.prepareStatement(s);
	ResultSet rs=ps.executeQuery();	
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORDERS</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="profile.css">
</head>

<body>


	<% 
		if(rs.next())
		{
	%> 
        <h2>All Orders</h2>
        <table class="order-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Cake Name</th>
                    <th>Date Ordered</th>
                    <th>Order ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <% 
            	do{
            		
            	
            %>
            <tbody>
                <tr>
                    <td><img src="<%=rs.getString(4)%>" alt="[Cake Name]" class="order-cake-image"></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(5)%></td>
                </tr>
                
            </tbody>
            <% 
            	}while(rs.next());
		}
            		
            %>
        </table>
        
          
        	
    </div>

</body>

</html>
