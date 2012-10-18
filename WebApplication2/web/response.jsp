<%-- 
    Document   : response
    Created on : 18.10.2012, 12:17:45
    Author     : christianlinde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>Name responser</h1>
    <jsp:useBean id="mybean" scope="session" class="org.beginningTest.test1.TestClass" />
    <jsp:setProperty name="mybean" property="name" />
    <h1>Hello, <jsp:getProperty name="mybean" property="name" />!</h1>
  </body>
</html>
