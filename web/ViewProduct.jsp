<?xml version='1.0' encoding='UTF-8' ?>

<%@page import="beans.caseProduct"%>

<% // Use of Bean needs a empty standard constructor %>
<jsp:useBean id="caseProduct" class="beans.caseProduct" scope="page"/>

<%@ page language="java" import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="./resources/css/default.css" rel="stylesheet" type="text/css" />
    <link href="./resources/css/cssLayout.css" rel="stylesheet" type="text/css" />
  </head>
  <body>

    <!-- ########## S Y S T E M ########## -->
    <!-- Check if actor are admin -->

    <div>
      <jsp:include page="/templates/header.xhtml" />
      <jsp:include page="/templates/menu.xhtml" />

      <div id="content" class="left_content">
        <%  // request.getParameter("InsertProduct") %>
        
        <center><h1>Print all products</h1></center>
        
        <table>
          <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Manufacturer</td>
            <td>Options</td>
          </tr>

          <%
            List<data.Product> allProducts = caseProduct.getAllProducts();

            for (data.Product product : allProducts) {
          %>
          <tr>
            <td><%=product.getId()%></td>
            <td><%=product.getName()%></td>
            <td><%=product.getPrice()%></td>
            <td><%=product.getDescription()%></td>
            <td><%=product.getManufacturer()%></td>
            <td><a href="EditProduct.xhtml?id=<%=product.getId()%>">Edit</a></td>
          </tr>



          <%
            }

          %>
        </table>

      </div>
    </div>
  </body>
</html>