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
</head>
<body>

    <h2>Hello, World!</h2> <!-- Simple Hello World message -->

</body>
</html>