<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
    		font-family: 'Arial', sans-serif;
    		background-image: url('image.jpg');
    		background-size: cover;
    		background-repeat: no-repeat;
    		background-attachment: fixed;
    		background-color: #f4f4f4;
    		margin: 0;
    		padding: 0;
		}
        header {
            background-color: #023E8A;
            color: #fff;
            text-align: center;
            padding: 1em;
        }
        section {
            width: 300px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1{
            background-color: #023E8A;
            color: #756663;
        }
        h2{
        	color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
        p.error-message {
            color: red;
        }
    </style>
</head>
<body>
    <header>
        <h1>Online Car Booking</h1>
    </header>
    <section>
        <h2>Login</h2>
        <% if (request.getParameter("error") != null) { %>
            <p class="error-message">Invalid username or password. Please try again.</p>
        <% } %>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Login">
        </form>
        <p>Don't have an account? <a href="signup.jsp">Signup here</a></p>
    </section>
</body>
</html>