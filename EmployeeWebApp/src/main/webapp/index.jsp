<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>

    <!-- Bootstrap & FontAwesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
        }

        .navbar {
            background: linear-gradient(to right, #6f42c1, #5a32a3);
        }

        .navbar-brand {
            font-weight: 700;
            font-size: 2rem;
            letter-spacing: 0.5px;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: 600;
        }

        .action-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 40px 25px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeIn 0.4s ease-in;
        }

        .action-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(10px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .action-icon {
            font-size: 3.2rem;
            margin-bottom: 20px;
        }

        .btn-action {
            min-width: 140px;
            font-weight: 500;
            border-radius: 30px;
            transition: all 0.3s ease;
        }

        .btn-action:hover {
            transform: scale(1.05);
        }

        .btn-purple {
            background-color: #6f42c1;
            color: #fff;
            border: none;
        }

        .btn-purple:hover {
            background-color: #56339c;
        }

        .status-message {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1050;
            animation: fadeInOut 3s ease-in-out;
        }

        @keyframes fadeInOut {
            0% { opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { opacity: 0; }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Employee Salary Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="display">View Employees</a>
                    </li>
                   <!-- <li class="nav-item">
                        <a class="nav-link" href="reports">Reports</a>
                    </li> --> 
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container py-5">
        <h1 class="text-center mb-5">Employee Management System</h1>
        <div class="row g-4 justify-content-center">
            <!-- Add -->
            <div class="col-md-6 col-lg-5">
                <div class="action-card">
                    <i class="fas fa-user-plus text-purple action-icon"></i>
                    <h5 class="fw-semibold">Add Employee</h5>
                    <p>Add a new employee to the database.</p>
                    <a href="empadd.jsp" class="btn btn-purple btn-action" aria-label="Add Employee">
                        <i class="fas fa-plus me-2"></i>Add
                    </a>
                </div>
            </div>

            <!-- Update -->
            <div class="col-md-6 col-lg-5">
                <div class="action-card">
                    <i class="fas fa-edit text-warning action-icon"></i>
                    <h5 class="fw-semibold">Update Employee</h5>
                    <p>Update existing employee details.</p>
                    <a href="empupdate.jsp" class="btn btn-warning text-white btn-action" aria-label="Update Employee">
                        <i class="fas fa-pen me-2"></i>Update
                    </a>
                </div>
            </div>

            <!-- Delete -->
            <div class="col-md-6 col-lg-5">
                <div class="action-card">
                    <i class="fas fa-trash-alt text-danger action-icon"></i>
                    <h5 class="fw-semibold">Delete Employee</h5>
                    <p>Remove an employee from the database.</p>
                    <a href="empdelete.jsp" class="btn btn-danger btn-action" aria-label="Delete Employee">
                        <i class="fas fa-trash me-2"></i>Delete
                    </a>
                </div>
            </div>

            <!-- View -->
            <div class="col-md-6 col-lg-5">
                <div class="action-card">
                    <i class="fas fa-users text-success action-icon"></i>
                    <h5 class="fw-semibold">View Employees</h5>
                    <p>View all employee records.</p>
                    <a href="display" class="btn btn-success btn-action" aria-label="View Employees">
                        <i class="fas fa-list me-2"></i>View All
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Status Messages -->
    <c:if test="${param.status == 'success'}">
        <div class="status-message alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> Operation completed successfully.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <c:if test="${param.status == 'error'}">
        <div class="status-message alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> Something went wrong. Please try again.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        setTimeout(() => {
            document.querySelectorAll('.alert').forEach(alert => {
                new bootstrap.Alert(alert).close();
            });
        }, 3000);
    </script>
</body>
</html>
