<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #f4f6f9, #e9ecef);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar-brand {
            font-weight: 600;
        }
        .form-container {
            max-width: 700px;
            margin: 60px auto;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.08);
            border: none;
            padding: 40px;
            background-color: #fff;
        }
        .card h2 {
            font-weight: 600;
            color: #ffc107;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 10px;
        }
        .form-check-input {
            margin-top: 0.3rem;
        }
        .btn-submit {
            background-color: #ffc107;
            color: #212529;
            padding: 12px;
            font-weight: 600;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #e0a800;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #ffc107;
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
        <h2 class="text-center mb-4"><i class="fas fa-edit me-2"></i>Update Employee</h2>

        <form action="update" method="post">
            <div class="mb-3">
                <label for="empno" class="form-label">Employee Number</label>
                <input type="number" class="form-control" id="empno" name="empno" required>
            </div>

            <div class="mb-3">
                <label for="empName" class="form-label">Employee Name</label>
                <input type="text" class="form-control" id="empName" name="empName" required>
            </div>

            <div class="mb-3">
                <label for="doj" class="form-label">Date of Joining</label>
                <input type="date" class="form-control" id="doj" name="doj" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Gender</label>
                <div class="d-flex gap-3">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="other" value="Other">
                        <label class="form-check-label" for="other">Other</label>
                    </div>
                </div>
            </div>

            <div class="mb-4">
                <label for="bsalary" class="form-label">Basic Salary</label>
                <input type="number" step="0.01" class="form-control" id="bsalary" name="bsalary" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-submit">
                    <i class="fas fa-save me-2"></i>Update Employee
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
