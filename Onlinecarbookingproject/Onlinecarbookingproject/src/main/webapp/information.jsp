<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <h1>Booking History</h1>
    </header>

    <section>
    	<form id = "booking-history" action = "informationservlet" method = "post">
        <h2>Booking History</h2>
        <table border="1" style="width: 50%; margin: auto;">
            <tr>
                <td><strong>Car Name:</strong></td>
                <td><%= session.getAttribute("carName") %></td>
            </tr>
            <tr>
                <td><strong>User Name:</strong></td>
                <td><%= session.getAttribute("username") %></td>
            </tr>
            <tr>
                <td><strong>Pickup Date:</strong></td>
                <td><%= session.getAttribute("pickupDate") %></td>
            </tr>
            <tr>
                <td><strong>Pickup Time:</strong></td>
                <td><%= session.getAttribute("pickupTime") %></td>
            </tr>
            <tr>
                <td><strong>Pickup Location:</strong></td>
                <td><%= session.getAttribute("pickupLocation") %></td>
            </tr>
            <tr>
                <td><strong>Car Price:</strong></td>
                <td>Rs. <%= session.getAttribute("carPrice") %></td>
            </tr>
            <tr>
                <td><strong>Confirmation Time:</strong></td>
                <td><%= session.getAttribute("confirmationTime") %></td>
            </tr>
        </table>
        </form>
    </div>
</section>


    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
