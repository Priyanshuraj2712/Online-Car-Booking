<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('wallpaper.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-color: #f0f0f0;
        }
        header {
            background-color: #023E8A;
            color: #fff;
            text-align: center;
            padding: 1em;
        }
        section {
            margin: 20px auto;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .car {
            display: inline-block;
            margin: 10px;
            text-decoration: none;
            color: #333;
        }
        .car img {
            width: 200px;
            height: 150px;
            margin-bottom: 10px;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #009688;
            color: #fff;
            text-decoration: none;
        }
        .bottom-links {
            position: fixed;
            bottom: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #ddd;
        }
        .bottom-links a {
            color: #333;
        }
    </style>
</head>
<body>
    <header>
        <h1>Booking Confirmation</h1>
    </header>

    <section>
    <%
    	String carName = request.getParameter("carName");
    	String username = request.getParameter("username");
    	String pickupDate = request.getParameter("pickupDate");
    	String pickupTime = request.getParameter("pickupTime");
    	String pickupLocation = request.getParameter("pickupLocation");
    	String carPrice = request.getParameter("carPrice");

    // Create a formatted date
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String confirmationTime = dateFormat.format(new Date());


    	HttpSession s = request.getSession();
    	s.setAttribute("carName", carName);
    	s.setAttribute("username", username);
    	s.setAttribute("pickupDate", pickupDate);
    	s.setAttribute("pickupTime", pickupTime);
    	s.setAttribute("pickupLocation", pickupLocation);
    	s.setAttribute("carPrice", carPrice);
    	s.setAttribute("confirmationTime", confirmationTime);
%>
        <div class="car-details">
            <h2>Confirmation Details</h2>
            <p><strong>Car Name:</strong> <%= request.getParameter("carName") %></p>
            <p><strong>User Name:</strong> <%= request.getParameter("username") %></p>
            <p><strong>Pickup Date:</strong> <%= request.getParameter("pickupDate") %></p>
            <p><strong>Pickup Time:</strong> <%= request.getParameter("pickupTime") %></p>
            <p><strong>Pickup Location:</strong> <%= request.getParameter("pickupLocation") %></p>
            <p><strong>Car Price:</strong> Rs. <%= request.getParameter("carPrice") %></p>
        </div>
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
