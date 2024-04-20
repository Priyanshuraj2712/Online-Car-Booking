<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Thar Details</title>
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
        <h1>Thar Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> tharDetails = new HashMap<>();
                tharDetails.put("name", "Tha");
                tharDetails.put("image", "thar.jpg");
                tharDetails.put("description", "Off Roader");
                tharDetails.put("info","The Thar was designed to be a rugged, reliable, and affordable off-road vehicle that could handle the rough terrain found in many parts of India. Its design is based on the iconic Jeep CJ series, which Mahindra had been producing under license since the 1940s.​");
                tharDetails.put("price", "13,40,000");
                // Display Brezza details
            %>
            <img src="<%= tharDetails.get("image") %>" alt="<%= tharDetails.get("name") %>">
            <h2><%= tharDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= tharDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= tharDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= tharDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Thar">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
