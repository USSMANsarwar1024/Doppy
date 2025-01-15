<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Random Values Table</h1>
        <table class="table table-bordered table-striped table-hover text-center">
            <thead class="table-primary">
                <tr>
                    <th>Row</th>
                    <th>Random Value</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Generate random values and populate the table
                    for (int i = 1; i <= 10; i++) {
                        int randomValue = (int) (Math.random() * 100);
                %>
                <tr>
                    <td><%= i %></td>
                    <td><%= randomValue %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
