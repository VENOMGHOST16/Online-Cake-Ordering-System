<%@include file="format1.jsp"%>
<%@page import="com.techv.programs.MyConnection"%>
<%@page import="java.sql.*" %> 
<!-- 
	The first page of the project where the user can view all the cakes available in the
	shop but will have to login before ordering.
	
 -->
<% 

//MySql Connection from Myconnection.java's function doConnect
	Connection cn=new MyConnection().doConnect();
	String s="select *from cakes";
	ResultSet rs=null;
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
		//The following loop will iterate through the details of each and every cake in resultset
	%>
        <div class="cake-block">
            <img src="<%=rs.getString(4)%>" alt="6Cake">
            <h3><%=rs.getString(2)%></h3>
            <form action="">
                <button type="submit" onclick="alerts()">Order Now</button>
            </form>
            <p><%=rs.getString(3)%></p>
        </div>
     
     <% 
			}while(rs.next());
		}
     		
     %>
     </div>
     <script src="script.js"></script>
     <!--  The script will give a simple alert to login before ordering cake-->
    
</body>

</html>
