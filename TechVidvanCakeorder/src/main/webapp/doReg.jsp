<jsp:useBean id="Regid" class="com.techv.programs.DoRegister" scope="session"></jsp:useBean>
<jsp:setProperty  name="Regid" property="*"/>
 <%
 	//register() function returns true after succesful registration
 	
 	if(Regid.register())
 	{
 		response.sendRedirect("login.jsp"); //After successful registration user will be redirected to login page
 	}
 		
 	else
 	{
 		//in case of failure in registration
 		session.setAttribute("error","Try different username or try again later");
 		response.sendRedirect("Error.jsp");
 	}
 %>
