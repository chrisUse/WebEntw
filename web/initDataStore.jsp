<%-- 
    Document   : initDataStore
    Created on : 25.10.2012, 08:07:33
    Author     : christianlinde
--%>

<%@page import="java.util.Map"%>
<jsp:useBean id="user" class="Map<Integer, data.DataStore>" scope="session"/>

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
  </body>
</html>
