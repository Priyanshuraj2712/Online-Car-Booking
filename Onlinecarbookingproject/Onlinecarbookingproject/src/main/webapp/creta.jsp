<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Creta Details</title>
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
        <h1>Creta Details</h1>
    </header>

    <section>
        <div class="car-details">
            <%
                String carName = request.getParameter("car");
                Map<String, String> cretaDetails = new HashMap<>();
                cretaDetails.put("name", "Creta");
                cretaDetails.put("image", "creata.webp");
                cretaDetails.put("description", "Ultimate Connectivity");
                cretaDetails.put("info", "As the engine of Hyundai CRETA Adventure Edition roars to life, your heart will start pounding with anticipation. Get readyfor the crisp morning air to fill your lungs as you buckle up in the ultimate SUV, ready to embark on an unforgettable adventurous ride.CRETA is equipped with home-to-car with Alexa and Google voice assistant, advanced Bluelink app and more. Now with an app on your smart watch and smartphone you have the power to control your car from the comfort of your home or office using Alexa and Google Voice Assistant or Bluelink app.");
                cretaDetails.put("price", "12,90,000");

                // Display Creta details
            %>
           <img src="<%= cretaDetails.get("image") %>" alt="<%= cretaDetails.get("name") %>">
            <h2><%= cretaDetails.get("name") %></h2>
            <p><strong>Description:</strong> <%= cretaDetails.get("description") %></p>
            <p><strong>Information:</strong> <%= cretaDetails.get("info") %></p>
            <p><strong>Price:</strong> Rs. <%= cretaDetails.get("price") %></p>
            <a href="bookinfo.jsp?car=Creta">Book Now</a>
        </div>
        
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>