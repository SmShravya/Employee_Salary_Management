<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reports Criteria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(to right, #f0f2f5, #e0eafc);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }
        .form-select, .form-control {
            border-radius: 10px;
        }
        .btn-submit {
            border-radius: 10px;
            padding: 10px;
            font-weight: 500;
        }
        .form-label {
            font-weight: 500;
        }
        h2 {
            font-weight: 600;
            color: #0d6efd;
        }
    </style>
</head>
<body>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4"><i class="fas fa-filter me-2"></i>Report Criteria</h2>

                <form action="reportCriteria" method="post" class="card p-4 bg-white">
                    <div class="mb-3">
                        <label class="form-label"><i class="fas fa-list me-2"></i>Filter By</label>
                        <select class="form-select" name="criteria" required>
                            <option value="name">Name Starting Letter</option>
                            <option value="service">Years of Service</option>
                            <option value="salary">Minimum Salary</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label"><i class="fas fa-pen me-2"></i>Value</label>
                        <input type="text" name="value" class="form-control" placeholder="Enter value" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100 btn-submit">
                        <i class="fas fa-chart-line me-2"></i>Generate Report
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
