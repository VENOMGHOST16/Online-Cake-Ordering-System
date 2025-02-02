<%@ include file="format1.jsp"%>
<!DOCTYPE html>
<html lang="en">
<!--  

	The login page for baker 
-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baker Login</title>
    <link rel="stylesheet" href="style1.css">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">

</head>

<body>

    <div class="content">
        <div class="left-div">
            <p>Welcome to our cake ordering platform. Here, you can find a variety of delicious cakes tailored to your needs. We offer custom designs, flavors, and sizes. Join us to make your events sweeter.</p>
        </div>
        <div class="right-div">
            <h2>Login</h2>
            <form action="BakerLogin.jsp">
                <div>
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div>
                    <button type="submit">Login</button>
                </div>
            </form>
        </div>
    </div>

</body>

</html>
