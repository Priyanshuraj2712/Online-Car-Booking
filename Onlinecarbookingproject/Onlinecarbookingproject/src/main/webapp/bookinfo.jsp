<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Car</title>
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
        <h1>Book Car</h1>
    </header>

    <section>
        <div class="car-details">
        <%@ page import="java.util.HashMap" %>
        <%@ page import="java.util.Map" %>
        <%@ page import="java.util.Random" %>
		<%@ page import="java.text.SimpleDateFormat" %>
		<%@ page import="java.util.Date" %>
            <%
            String carName = request.getParameter("car");
            Map<String, String> carDetails = new HashMap<>();
            if ("Carens".equals(carName)) {
                carDetails.put("name", "Carens");
                carDetails.put("price", "16,40,000");
            } else if ("Seltos".equals(carName)) {
                carDetails.put("name", "Seltos");
                carDetails.put("price", "10,89,900");
            } else if ("Scorpio".equals(carName)) {
                carDetails.put("name", "Scorpio");
                carDetails.put("price", "27,10,000");
            } else if ("Thar".equals(carName)) {
                carDetails.put("name", "Thar");
                carDetails.put("price", "13,40,000");
            } else if ("Innova".equals(carName)) {
                carDetails.put("name", "Innova");
                carDetails.put("price", "23,50,000");
            } else if ("Venue".equals(carName)) {
                carDetails.put("name", "Venue");
                carDetails.put("price", "12,10,000");
            } else if ("Creta".equals(carName)) {
                carDetails.put("name", "Creta");
                carDetails.put("price", "12,90,000");
            } else if ("Verna".equals(carName)) {
                carDetails.put("name", "Verna");
                carDetails.put("price", "10,97,000");
            } else if ("Nexon".equals(carName)) {
                carDetails.put("name", "Nexon");
                carDetails.put("price", "9,10,000");
            } else if ("Brezza".equals(carName)) {
                carDetails.put("name", "Brezza");
                carDetails.put("price", "8,29,000");
            }
            String carPrice = carDetails.get("price");
            Random rand = new Random();
            int daysToAdd = rand.nextInt(30); // You can adjust the range as needed
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date currentDate = new Date();
            Date pickupDate = new Date(currentDate.getTime() + (daysToAdd * 24 * 60 * 60 * 1000));
            String formattedPickupDate = dateFormat.format(pickupDate);
            %>              
            <h2><%= carName %></h2>
            <form action="confirmation.jsp" method="post">
                <label for="username">Your Name:</label>
                <input type="text" id="username" name="username" required><br>
                <label for="pickupLocation">Pickup Location:</label>
                <input type="text" id="pickupLocation" name="pickupLocation" required><br>
                <input type="hidden" name="carName" value="<%= carName %>">
                <input type="hidden" name="carPrice" value="<%= carPrice %>">
                <input type="hidden" name="pickupDate" value="<%= formattedPickupDate %>">
                <input type="hidden" name="pickupTime" value="12:00">
                <input type="submit" value="Book Now">
            </form>
        </div>
    </section>

    <div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
