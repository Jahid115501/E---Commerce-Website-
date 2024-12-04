<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>New User</title>
        <%@include file="components/common_css_js.jsp" %>
        <style>
            body {
                background: linear-gradient(to right, #74ebd5, #9face6);
                font-family: 'Arial', sans-serif;
            }
            .card {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
                overflow: hidden;
            }
            .card-body {
                padding: 30px;
                background-color: #ffffff;
            }
            .btn-custom {
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                border-radius: 25px;
                transition: background-color 0.3s ease-in-out;
            }
            .btn-custom.btn-register {
                background-color: #28a745;
                color: #fff;
            }
            .btn-custom.btn-register:hover {
                background-color: #218838;
            }
            .btn-custom.btn-reset {
                background-color: #ffc107;
                color: #fff;
            }
            .btn-custom.btn-reset:hover {
                background-color: #e0a800;
            }
            .form-control {
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            .form-group label {
                font-weight: bold;
                color: #333;
            }
            h3 {
                font-weight: bold;
                color: #555;
            }
        </style>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center mb-4">Sign Up Here</h3>
                            <form action="RegisterServlet" method="post">
                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter your name" aria-describedby="nameHelp">
                                </div>
                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter your email" aria-describedby="emailHelp">
                                </div>
                                <div class="form-group">
                                    <label for="password">User Password</label>
                                    <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter your password">
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter your phone number">
                                </div>
                                <div class="form-group">
                                    <label for="address">User Address</label>
                                    <textarea name="user_adderss" id="address" class="form-control" placeholder="Enter your address" style="height: 100px;"></textarea>
                                </div>
                                <div class="text-center mt-4">
                                    <button type="submit" class="btn btn-custom btn-register">Register</button>
                                    <button type="reset" class="btn btn-custom btn-reset">Reset</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
