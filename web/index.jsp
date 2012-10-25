<%-- 
    Document   : index
    Created on : 19.10.2012, 12:52:07
    Author     : christianlinde
--%>

<%@page import="java.util.Map"%>
        
<jsp:useBean id="user" class="Map<Integer, data.DataStore>" scope="session"/>
<%-- First methode for set session elementes. --%>
<%-- <jsp:setProperty name="user"  property="name" value="TestNameBean"/> -->
<%-- Second methode for set session elementes. --%>
<% 
   data.DataStore myStore = new data.DataStore();
   myStore.setVorName("BeanFirstName");
   user.put(123456, myStore); 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="Name Input Form" action="response.jsp">
          Enter your name:
          <input type="text" name="name" />
          <input type="submit" value="OK" />
        </form>
    </body>
</html>
