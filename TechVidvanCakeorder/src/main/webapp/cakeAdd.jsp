<!--  
	The following jsp program uses the CakeAdd java class to add a new cake into the database
-->
<jsp:useBean id="cadd" class="com.techv.programs.CakeAdd" scope="session"></jsp:useBean>
<jsp:setProperty  name="cadd" property="*"/>

<%
	String s1=request.getParameter("cakeDesc");
	String s2=request.getParameter("cakeName");
	String s3=request.getParameter("cakeImage");

	//Retrieving the cake infoemation from the BakeryAdd page 
 	
	
	if(cadd.addcake(s1,s2,s3))  
	{
 		response.sendRedirect("BakeryShop.jsp");
	}
	else
	{
		//in case of error
		session.setAttribute("error", "Someting occured,try later");
		response.sendRedirect("Error.jsp");
	}
%>