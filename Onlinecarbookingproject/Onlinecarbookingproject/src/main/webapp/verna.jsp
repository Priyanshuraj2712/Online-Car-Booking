<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Verna Details</title>
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
        <h1>Verna Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> vernaDetails = new HashMap<>();
                vernaDetails.put("name", "Verna");
                vernaDetails.put("image", "verna.jpeg");
                vernaDetails.put("description", "Sedan");
                vernaDetails.put("info","The new Verna looks big and it certainly looks like it belongs to a higher class with a premium look. The swoopy styling and the way the roof flows in, is like a four-door coupe while obviously the front-end design has gotten everyone talking. The new Verna certainly looks bold and radical while it looks futuristic in the flesh with the connecting DRLs and the same theme with the tail-lamps.​");
                vernaDetails.put("price", "10,97,000");
                // Display Brezza details
            %>
            <img src="<%= vernaDetails.get("image") %>" alt="<%= vernaDetails.get("name") %>">
            <h2><%= vernaDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= vernaDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= vernaDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= vernaDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Verna">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
