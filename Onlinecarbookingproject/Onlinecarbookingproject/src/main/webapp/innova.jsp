<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Innova Details</title>
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
        .car-details {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .car-details img {
            width: 100%;
            border-radius: 5px;
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
            background-color: rgba(102, 163, 177, 0);
        }
        .bottom-links a {
            color: #333;
        }
    </style>
</head>
<body>
    <header>
        <h1>Innova Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> innovaDetails = new HashMap<>();
                innovaDetails.put("name", "Innova");
                innovaDetails.put("image", "innova.jpg");
                innovaDetails.put("description", "Versatile");
                innovaDetails.put("info","Be it for private or fleet usage, the Innova Crysta is the go-to choice for Indians when it comes to big MPVs. Besides Toyota's legendary reliability, it has spacious interior, diesel efficiency, and long-distance usability as major positives. However, there's no denying that it's an old product and isn't particularly of great value anymore.");
                innovaDetails.put("price", "23,50,000");
                // Display Brezza details
            %>
            <img src="<%= innovaDetails.get("image") %>" alt="<%= innovaDetails.get("name") %>">
            <h2><%= innovaDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= innovaDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= innovaDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= innovaDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Innova">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
