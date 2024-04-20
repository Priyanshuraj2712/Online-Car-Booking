<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Scorpio Details</title>
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
        <h1>Scorpio Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> scorpioDetails = new HashMap<>();
                scorpioDetails.put("name", "Scorpio");
                scorpioDetails.put("image", "Scorpio.webp");
                scorpioDetails.put("description", "SUV");
                scorpioDetails.put("info","Scorpio is a popular SUV in India known for its robust build and powerful performance. It features a distinctive and bold design, reflecting its off-road capabilities. The Scorpio typically offers spacious interiors, advanced safety features, and a range of technology options. Known for its versatility, it is often chosen for both city commutes and adventurous off-road journeys.");
                scorpioDetails.put("price", "27,10,000");
            %>
            <img src="<%= scorpioDetails.get("image") %>" alt="<%= scorpioDetails.get("name") %>">
            <h2><%= scorpioDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= scorpioDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= scorpioDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= scorpioDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Scorpio">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
