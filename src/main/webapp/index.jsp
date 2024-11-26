<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.mycompany.e.commercesite.helper.FactoryProvider" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        
        <%@include file = "components/navbar.jsp" %>
        
        
        <h1>Hello World! abc</h1>
        <h1>Creating session factory object</h1>
        <%
            SessionFactory factory = FactoryProvider.getFactory();
            if (factory != null) {
                out.println("SessionFactory created successfully: " + factory);
            } else {
                out.println("Failed to create SessionFactory. Check logs for details.");
            }
        %>
    </body>
</html>
