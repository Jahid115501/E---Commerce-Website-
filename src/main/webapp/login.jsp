<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
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
                margin-top: 50px;
            }
            .card-body {
                padding: 50px; /* Increased padding for more space */
                background-color: #ffffff;
                min-height: 450px; /* Increased height for the card */
            }
            .btn-custom {
                border: none;
                padding: 12px 25px; /* Slightly larger button */
                font-size: 18px; /* Increased font size */
                border-radius: 25px;
                transition: background-color 0.3s ease-in-out;
            }
            .btn-custom.btn-login {
                background-color: #4facfe;
                color: #fff;
            }
            .btn-custom.btn-login:hover {
                background-color: #00f2fe;
            }
            .form-control {
                border-radius: 5px;
                border: 1px solid #ccc;
                padding: 10px;
                font-size: 16px;
            }
            .form-group label {
                font-weight: bold;
                color: #333;
            }
            h3 {
                font-weight: bold;
                color: #555;
            }
            .forgot-password {
                text-align: right;
                margin-top: 10px;
            }
            .forgot-password a {
                color: #4facfe;
                text-decoration: none;
            }
            .forgot-password a:hover {
                text-decoration: underline;
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
                            <h3 class="text-center mb-4">Login</h3>
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="username">Username or Email</label>
                                    <input name="username_or_email" type="text" class="form-control" id="username_or_email" placeholder="Enter your username or email" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="password" type="password" class="form-control" id="password" placeholder="Enter your password" required>
                                </div>
                                
                                <div class="forgot-password">
                                    <a href="forgot-password.jsp">Forgot Password?</a>
                                </div>

                                <div class="text-center mt-4">
                                    <button type="submit" class="btn btn-login btn-custom">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section -->
        <div class="footer text-center mt-4">
            <p>&copy; 2024 Your Company. All Rights Reserved.</p>
        </div>
    </body>
</html>
