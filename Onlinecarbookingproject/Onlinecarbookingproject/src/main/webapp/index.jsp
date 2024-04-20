<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Car Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('index.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-color: #f0f0f0;
        }
      	header {
    		background-color: rgba(0, 123, 255, 0.7);
    		color: #fff;
    		padding: 20px;
    		text-align: center;
		}

        h1,h2{
        	color: #333;
        }
        nav {
    		margin-top: 20px;
		}	

		nav a {
    		margin-right: 20px;
    		text-decoration: none;
    		color: #007BFF;
    		font-weight: bold;
    		transition: color 0.3s; 
		}

		nav a:hover {
    		color: #0056b3;
			transform: scale(1.1);
		}

       section {
        	background-color: rgba(255, 255, 255, 0.5);
        	padding: 20px;
       	 	border-radius: 10px;
       	 	overflow: hidden;
       	 	max-width: 90%; 
        	margin: auto;
    	}

    	section p {
        	transition: transform 0.3s ease-in-out, color 0.3s ease-in-out;
    	}

    	section p:hover {
        	color: #0056b3; 
        	transform: scale(1.1); 
    	}
    </style>
</head>
<body>
    <header>
        <h1>Welcome to car booking</h1>
    </header>
    <nav>
        <a href="carinfo.jsp">Car's Information</a>
        <a href="information.jsp">Booking History</a>
        <a href="contactUs.jsp">Contact Us</a>
    </nav>
    <section>
        <h2>About Us</h2>
        <p>
        Welcome to our state-of-the-art online car booking platform, meticulously crafted to provide a seamless and efficient experience for users seeking to buy new cars.
<br>
<br>
               Key Features:<br>
            - Secure user registration and login functionality.<br>
            - Comprehensive catalog of available cars.<br>
            - Real-time availability and pricing information.<br>
            - Detailed history of past car bookings for users.<br>
             Our mission is to revolutionize the way individuals experience car booking by providing a cutting-edge and user-centric platform that seamlessly integrates efficiency, transparency, and convenience.<br><br>
             Sincerely,<br>
             The Car Booking Team<br>
        </p>
    </section>
    <% %>
</body>
</html>
