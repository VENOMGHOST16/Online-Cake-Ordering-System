<%@include file="format2.jsp"%>
<%@page import="com.techv.programs.MyConnection"%>
<%@page import="java.sql.*" %> 
<!--  
	When the user wants to order a cake, the user will be redirected to this page 
-->
<%
	
	Connection cn=new MyConnection().doConnect();
	String s="select *from cakes";
	ResultSet rs=null;
	//MySql Connection from Myconnection.java's function doConnect
	PreparedStatement ps=cn.prepareStatement(s);
		
	rs=ps.executeQuery();
	
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style2.css">
    
</head>

<body>
    
    <div class="cake-shop">
	<% 
		if(rs.next())
		{
			do
			{
		
				//Iterating through the rs to display all the onformation about the cakes.
	%>
        <div class="cake-block">
            <img src="<%=rs.getString(4)%>" alt="Chocolate Cake">
            <h3><%=rs.getString(2)%></h3>
            <form action="orderCake.jsp">
                <button type="submit" value="<%=rs.getInt(1)%>" name="cakeid">Order Now</button>
            
            </form>
            <p><%=rs.getString(3)%></p>
        </div>
     <!--  
     	Each button has the value which is equal to the cake unique to id to distinguish which 
     	cake is ordered.
     	
     -->
     <% 
			}while(rs.next());
		}
     		
     %>
     </div>
    
</body>

</html>
