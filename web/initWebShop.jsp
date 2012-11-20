<%-- 
    Document   : initWebShop
    Created on : 20.11.2012, 12:34:37
    Author     : Marco Wilhelm
--%>

<%@page import="data.*" %>
<%
    out.println("Storage at address: " + Storage.getInstance() + "<br>");
    
    out.println("Users: " + Storage.getInstance().getUserCount() + "<br>");
    out.println("Products: " + Storage.getInstance().getProductCount() + "<br>");
    
    out.println("Admin ID: " + Storage.getInstance().getUserIdsByName("Admin").toString() + "<br>");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>

    </body>
</html>
