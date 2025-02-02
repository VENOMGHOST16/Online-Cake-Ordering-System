<%@ include file="format1.jsp"%>
<!--  
	For registering a new user,this webpage will be used by asking name,mobile number,email and password.
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Cake Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style1.css">
</head>

<body>

    <div class="register-container">
        <h2>Register</h2>
        <form action="doReg.jsp" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required>
            <input type="tel" name="mobno" placeholder="Mobile Number" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="repassword" placeholder="Re-enter Password" required>
            <button type="submit">Register</button>
        </form>
    </div>

    
</body>

</html>
