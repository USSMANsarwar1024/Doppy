<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Greeting Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f7f7;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 500px;
            margin-top: 100px;
        }
        .greeting {
            font-size: 1.5rem;
            font-weight: bold;
            color: #28a745;
        }
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="text-center mb-4">Enter Your Name</h2>
        <form method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Your name" required />
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-custom btn-block">Greet Me!</button>
            </div>
        </form>

        <%
            // If the form is submitted, greet the user with their name
            String userName = request.getParameter("username");
            if (userName != null && !userName.isEmpty()) {
        %>
        <div class="greeting text-center mt-4">
            Hello, <%= userName %>!
        </div>
        <%
            }
        %>
    </div>
</div>

<!-- Bootstrap JS and dependencies (Popper, jQuery) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
