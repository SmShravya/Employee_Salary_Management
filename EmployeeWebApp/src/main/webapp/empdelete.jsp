<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #f0f2f5, #e4ebf1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar-brand {
            font-weight: 600;
        }
        .form-container {
            max-width: 600px;
            margin: 60px auto;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.08);
            border: none;
            padding: 35px;
            background-color: #ffffff;
        }
        .card h2 {
            font-weight: 600;
            color: #dc3545;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 10px;
        }
        .form-text {
            font-size: 0.9rem;
            color: #6c757d;
        }
        .btn-submit {
            background-color: #dc3545;
            color: #fff;
            padding: 12px;
            font-weight: 600;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #bb2d3b;
        }
        .back-link {
            display: inline-block;
            margin-top: 15px;
            color: #dc3545;
            font-weight: 500;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Employee salary Management</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="display">View Employees</a></li>
                <!-- <li class="nav-item"><a class="nav-link" href="reports">Reports</a></li> -->
            </ul>
        </div>
    </div>
</nav>

<div class="form-container">
    <div class="card">
        <h2 class="text-center mb-4"><i class="fas fa-trash-alt me-2"></i>Delete Employee</h2>

        <form action="delete" method="post">
            <div class="mb-4">
                <label for="empno" class="form-label">Employee Number</label>
                <input type="number" class="form-control" id="empno" name="empno" required>
                <div class="form-text">Enter the employee number to delete their record.</div>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-submit">
                    <i class="fas fa-trash me-2"></i>Delete Employee
                </button>
            </div>
        </form>

        <div class="text-center">
            <a href="index.jsp" class="back-link">
                <i class="fas fa-arrow-left me-2"></i>Back to Home
            </a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
