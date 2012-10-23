<%-- 
    Document   : response
    Created on : 19.10.2012, 12:53:38
    Author     : christianlinde
--%>

<jsp:useBean id="user" class="data.DataStore" scope="session"/> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
<%--        <jsp:useBean id="mybean" scope="session" class="data.DataStore" />
        <jsp:setProperty name="mybean" property="name" /> --%>
        <h1>Hello#, 
        <%-- First methode for get session elementes. --%>
         <jsp:getProperty name="user" property="name" />
        !</h1>
        
        <%-- Second methode for get session elementes. --%>
        Methode two: <%= user.getName() %>
        Methode two first name: <%= user.getVorName() %>
    </body>
</html>
