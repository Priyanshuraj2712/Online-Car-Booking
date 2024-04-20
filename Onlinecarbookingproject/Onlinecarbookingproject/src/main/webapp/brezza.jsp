<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Brezza Details</title>
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
        <h1>Brezza Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> brezzaDetails = new HashMap<>();
                brezzaDetails.put("name", "Brezza");
                brezzaDetails.put("image", "brezza.webp");
                brezzaDetails.put("description", "Powertrain");
                brezzaDetails.put("info", "The All New Hot and Techy Brezza isn’t for those who don’t like attention, it’s for the ones who thrive on it. Its masculine upright stance with Geometric Fenders are impossible to ignore. Featuring Dual LED Headlamps with LED DRLs and LED Tail Lamps, you better brace yourself for an energetic design that only a showstopper can pull off. Make a statement with Dual Tone Colours, a hard-to-miss Shark Finn Antenna and Bold Geometric Alloy Wheels that command the roads. 1.5L Advanced K Series Dual Jet Dual-VVT Engine 6 Speed Automatic Transmission Progressive Smart Hybrid Technology.");
                brezzaDetails.put("price", "8,29,000");

                // Display Brezza details
            %>
            <img src="<%= brezzaDetails.get("image") %>" alt="<%= brezzaDetails.get("name") %>">
            <h2><%= brezzaDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= brezzaDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= brezzaDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= brezzaDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Brezza">Book Now</a>
        </div>
       
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
