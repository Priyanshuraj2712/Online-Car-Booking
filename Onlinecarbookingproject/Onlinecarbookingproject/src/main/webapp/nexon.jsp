<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Nexon Details</title>
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
        .bottom-links {
            position: fixed;
            bottom: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: rgba(102, 163, 177, 0);
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #009688;
            color: #fff;
            text-decoration: none;
        }
        .bottom-links a {
            color: #333;
        }
    </style>
</head>
<body>
    <header>
        <h1>Nexon Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> nexonDetails = new HashMap<>();
                nexonDetails.put("name", "Nexon");
                nexonDetails.put("image", "Nexon.jpg");
                nexonDetails.put("description", "Subcompact Crossover SUV");
                nexonDetails.put("info","The Tata Nexon received a 5-star rating for adult occupant protection, reflecting the strength of its safety features. Seatbelts, airbags, and structural integrity all contribute to the car's high safety rating.​");
                nexonDetails.put("price", "9,10,000");
                // Display Brezza details
            %>
            <img src="<%= nexonDetails.get("image") %>" alt="<%= nexonDetails.get("name") %>">
            <h2><%= nexonDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= nexonDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= nexonDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= nexonDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Nexon">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
