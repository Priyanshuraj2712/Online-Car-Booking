<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Car Information</title>
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
            background-color: rgba(102, 163, 177, 0);
        }
        .bottom-links a {
            color: #333;
        }
    </style>
</head>
<body>
    <header>
        <h1>Online Car Booking</h1>
    </header>

    <section>
        <h2>Car Information</h2>
        <%@ page import="java.util.ArrayList" %>
        <%@ page import="java.util.HashMap" %>
        <%@ page import="java.util.Map" %>

        <%
            ArrayList<Map<String, String>> cars = new ArrayList<>();

            Map<String, String> car1 = new HashMap<>();
            car1.put("name", "Brezza");
            car1.put("image", "brezza.webp");
            car1.put("description", "Powertrain");
            cars.add(car1);

            Map<String, String> car2 = new HashMap<>();
            car2.put("name", "Creta");
            car2.put("image", "creata.webp");
            car2.put("description", "Ultimate Connectivity");
            cars.add(car2);

            Map<String, String> car3 = new HashMap<>();
            car3.put("name", "Seltos");
            car3.put("image", "seltos.jpg");
            car3.put("description", "Class Power");
            cars.add(car3);
            
            Map<String, String> car4 = new HashMap<>();
            car4.put("name", "Nexon");
            car4.put("image", "Nexon.jpg");
            car4.put("description", "Subcompact crossover SUV ");
            cars.add(car4);
            
            Map<String, String> car5 = new HashMap<>();
            car5.put("name", "Thar");
            car5.put("image", "thar.jpg");
            car5.put("description", "Off Roader");
            cars.add(car5);
            
            Map<String, String> car6 = new HashMap<>();
            car6.put("name", "Innova");
            car6.put("image", "innova.jpg");
            car6.put("description", "Versatile");
            cars.add(car6);
            
            Map<String, String> car7 = new HashMap<>();
            car7.put("name", "Carens");
            car7.put("image", "carens.jpg");
            car7.put("description", "Spacious");
            cars.add(car7);
            
            Map<String, String> car8 = new HashMap<>();
            car8.put("name", "Verna");
            car8.put("image", "verna.jpeg");
            car8.put("description", "Sedan");
            cars.add(car8);
            
            Map<String, String> car9 = new HashMap<>();
            car9.put("name", "Venue");
            car9.put("image", "venue.webp");
            car9.put("description", "Compact");
            cars.add(car9);
            
            Map<String, String> car10 = new HashMap<>();
            car10.put("name", "Scorpio");
            car10.put("image", "Scorpio.webp");
            car10.put("description", "SUV");
            cars.add(car10);
            for (Map<String, String> car : cars) {
        %>
             <div class="car">
            	<a href="<%= car.get("name").toLowerCase() %>.jsp">
                <img src="<%= car.get("image") %>" alt="<%= car.get("name") %>">
                <p><strong><%= car.get("name") %></strong></p>
                <p><%= car.get("description") %></p>
            	</a>
        </div>
        <%
            }
        %>
    </section>
<div class="bottom-links">
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>