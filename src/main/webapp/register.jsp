
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>

        <%@include file="components/common_css_js.jsp" %>
       
    </head>
    <body>
        
        <%@include file = "components/navbar.jsp" %>
        <div class="row mt-5">
            <div class="col-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3>Sign up here</h3>
                
                <form>
                    <div class="form-group">
                        <label for="name">User Name</label>
                        <input type="text" class="form-control" id="name"  placeholder="Enter here" aria-describedby="emailHelp">
                        
                    </div>
                    
                    <div class="form-group">
                        <label for="email">User Email</label>
                        <input type="email" class="form-control" id="email"  placeholder="Enter here" aria-describedby="emailHelp">
                        
                    </div>
                    
                    <div class="form-group">
                        <label for="password">User password</label>
                        <input type="password" class="form-control" id="password"  placeholder="Password" aria-describedby="emailHelp">
                        
                    </div>
                    
                    <div class="form-group">
                        <label for="Phone">Phone Number</label>
                        <input type="number" class="form-control" id="Phone"  placeholder="Enter here" aria-describedby="emailHelp">
                        
                    </div>
                    <div class="form-group">
                        <label for="Phone">User Address</label>
                        <textarea style="height: 150px;" class="form-control" placeholder="Enter your address"></textarea>
                    </div>
                    
                    <div class="container text-center">
                        <button class="btn btn-outline-success">Register</button>
                        <button class="btn btn-outline-warning">Reset</button>
                    </div>
                    
                </form>
                
                        
                    </div>
                    
                </div>
                
            </div>
        </div>
    </body>
</html>




