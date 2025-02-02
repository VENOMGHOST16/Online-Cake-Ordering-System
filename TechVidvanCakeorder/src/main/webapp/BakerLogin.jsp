
<jsp:useBean id="loginb" class="com.techv.programs.LoginBaker" scope="session"></jsp:useBean>
<jsp:setProperty  name="loginb" property="*"/>

<%
	
	//check_login() returns 1 when it finds a field with given cnstraints
 	if(loginb.check_Login()==1) 
	{
 		//if there is succesfull login, the user will be redirected to admin page.
 		response.sendRedirect("BakeryShop.jsp");
	}
	else
	{
		//in case of wrong login try
		session.setAttribute("error", "Invalid username or password");
		response.sendRedirect("Error.jsp");
	}
%> 