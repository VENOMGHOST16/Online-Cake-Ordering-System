<%@include file="format3.jsp"%>
<!--  
	The following web page is used by the admin to add a cake to the shop where the baker can add 
	a new cake by providing name,image address,and cake description.
	
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baker Portal | Cake Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="format1.css">
    
</head>

<body>
    <div class="baker-container">
        <h2>Add a New Cake</h2>
        <form action="cakeAdd.jsp">
            <label for="cakeImage">Cake Image URL:</label>
            <input type="text" name="cakeImage" id="cakeImage" name="cakeImage" placeholder="Enter image link" required>

            <label for="cakeName">Cake Name:</label>
            <input type="text" name="cakeName" id="cakeName" name="cakeName" placeholder="Enter cake name" required>

            <label for="cakeDesc">Cake Description:</label>
            <textarea id="cakeDesc" name="cakeDesc" rows="4" placeholder="Describe the cake" required></textarea>

            <button type="submit">Add Cake</button>
        </form>
    </div>

</body>

</html>
