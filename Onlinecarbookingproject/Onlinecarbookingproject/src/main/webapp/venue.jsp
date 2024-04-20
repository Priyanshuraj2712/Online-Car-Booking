<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Venue Details</title>
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
        <h1>Venue Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> nexonDetails = new HashMap<>();
                nexonDetails.put("name", "Venue");
                nexonDetails.put("image", "venue.webp");
                nexonDetails.put("description", "Compact");
                nexonDetails.put("info","The Venue is a compact SUV that stands out for its stylish design, feature-rich interior, and impressive performance. With a sleek and modern exterior, it offers a comfortable and tech-savvy cabin, equipped with advanced infotainment options. The Venue's efficient engine choices and maneuverability make it an excellent choice for urban driving, while its affordability adds to its overall appeal in the competitive SUV market.");
                nexonDetails.put("price", "12,10,000");
                // Display Brezza details
            %>
            <img src="<%= nexonDetails.get("image") %>" alt="<%= nexonDetails.get("name") %>">
            <h2><%= nexonDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= nexonDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= nexonDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= nexonDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Venue">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
