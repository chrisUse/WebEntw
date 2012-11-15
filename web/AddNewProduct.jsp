<%@page import="data.Product"%>

<!-- <jsp:useBean id="dataStore" class="data.Storage" scope="page"/> -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Add new Product </title>
</head>
<body>
 <!-- ########## S Y S T E M ########## -->
 <!-- Check if actor are admin -->
 

 
 <%
   data.Storage.getInstance().addProduct(new Product("TestPro1", 23, "Das ist das neue TestP 1", "Von mir blub"));
   out.println("Test: " + dataStore.getInstance().getProductById(0).getName() );
 %>
 
 <!--  Nachbedingung Erfolg: Is product are insert actor gets success notification -->
 <!--  Nachbedingung Fehler: If a problem are occurred actor gets error notification -->
 <!--   Actor can change something to fix error -->
 
 <!-- ########## A C T O R ########## -->
 <!-- Actor insert product informations for adding -->
 <form method="post" action="AddNewProduct.jsp">
  <input name="Name"         value="" type="text">
  <input name="Price"        value="" type="text">
  <input name="Description"  value="" type="text">
  <input name="Manifactorer" value="" type="text">
 </form>
  
</body>
</html>