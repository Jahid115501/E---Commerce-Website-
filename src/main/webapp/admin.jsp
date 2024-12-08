<%@page import="com.mycompany.e.commercesite.entites.User"%>
<%
  User user = (User)session.getAttribute("current-user");
  if(user==null) {
     
     session.setAttribute("message", "You are logged in!! Login first");
     response.sendRedirect("login.jsp");
     return;
  } 
  else {
        if(user.getUserType().equals("normal")) {
     
        session.setAttribute("message", "You are not admin! Do not access this page");
        response.sendRedirect("login.jsp");
        return;
        }
  
    }
%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <%@include file="components/common_css_js.jsp"%>
    
</head>
<body>
     <%@include file="components/admin_navbar.jsp"%>
     <div class="container">
         <div class="row mt-3">
             
             <!<!-- first column -->
             <div class="col-md-4">
                 
                 <div class="card">
                     
                     <div class="card-body text-center">
                         
                         <div class="container">
                             <img style="max-width: 120px;" class="img-fluid rounded circle" src="img/team.png" alt="user_icon"> 
                         </div>
                         
                         <h2>7464</h2>
                         <h2 class="text-muted">USERS</h2>
                     </div>
                 </div>
                 
             </div>
             
             <!<!-- second column -->
              <div class="col-md-4">
                 
                 <div class="card">
                     
                     <div class="card-body text-center">
                         
                         <div class="container">
                             <img style="max-width: 120px;" class="img-fluid rounded circle" src="img/checklist.png" alt="user_icon"> 
                         </div>
                         
                         <h2>3455</h2>
                         <h2 class="text-muted">CATEGORIES</h2>
                     </div>
                 </div>
                 
             </div>
             
             <!<!-- third column -->
              <div class="col-md-4">
                
                  <div class="card">
                     
                     <div class="card-body text-center">
                         
                         <div class="container">
                             <img style="max-width: 120px;" class="img-fluid rounded circle" src="img/brand-identity.png" alt="user_icon"> 
                         </div>
                         
                         <h2>1232</h2>
                        <h2 class="text-muted">PRODUCTS</h2>
                     </div>
                 </div>
                 
                 
             </div>
             
         </div>
         
         <!--second row  first col-->
         
         <div class="row mt-3">
             
             <div class="col md-6">
                 
                  <div class="card">
                     
                     <div class="card-body text-center">
                         
                         <div class="container">
                             <img style="max-width: 120px;" class="img-fluid rounded circle" src="img/keys.png" alt="user_icon"> 
                         </div>
                         
                         <p class="mt-2">Click here to add new category</p>
                        <h2 class="text-muted">ADD CATEGORY</h2>
                     </div>
                 </div>
                 
             </div>
             
              <!--second row  2nd col-->
              
             <div class="col md-6">
                 
                  <div class="card">
                     
                     <div class="card-body text-center">
                         
                        <div class="container">
                             <img style="max-width: 120px;" class="img-fluid rounded circle" src="img/plus.png" alt="user_icon"> 
                         </div>
                         
                         <p class="mt-2">Click here to add new product</p>
                        <h2 class="text-muted">ADD PRODUCT</h2>
                        
                     </div>
                 </div>
             </div>
             
         </div>


</div>
     
     <!-- category model -->
     
     
     
     
     <!-- end category model -->

</body>
</html>