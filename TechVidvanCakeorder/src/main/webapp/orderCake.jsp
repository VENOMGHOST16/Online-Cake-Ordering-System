
<jsp:useBean id="order" class="com.techv.programs.Ordering" scope="session"></jsp:useBean>
<jsp:setProperty  name="order" property="*"/>
 
<%
	int userid=(int)session.getAttribute("id");
	int cakeid=Integer.parseInt(request.getParameter("cakeid"));
	
	//The order() function of Ordering class takes two parameters and returns true if the order is placed successfully. 
 	if(order.order(cakeid, userid)) 
	{
 		//If there was a success in placing the cake order then the user will be redirected to his/her profile
 		response.sendRedirect("profile.jsp");
	}
	else
	{
		//in case error
		session.setAttribute("error", "An error occured");
		response.sendRedirect("Error.jsp");
	}
%>