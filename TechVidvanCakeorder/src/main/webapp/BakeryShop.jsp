<%@include file="format3.jsp"%>
<%@page import="com.techv.programs.MyConnection"%>
<%@page import="java.sql.*" %> 
<!--  
	BakeryShop to view all the cakes in the shop and newly added cakes also.
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
		
	%>
        <div class="cake-block">
            <img src="<%=rs.getString(4)%>" alt="Chocolate Cake">
            <h3><%=rs.getString(2)%></h3>
            <form action="#">
                <button type="submit" value="" name="cakeid">Order Now</button>
            
            </form>
            <p><%=rs.getString(3)%></p> 
        </div>
     
     <% 
			}while(rs.next());
		}
     		
     %>
     </div>
    
</body>

</html>
