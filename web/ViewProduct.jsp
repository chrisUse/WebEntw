<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="beans.caseProduct"%>

<% // Use of Bean needs a empty standard constructor %>
<jsp:useBean id="caseProduct" class="beans.caseProduct" scope="page"/>
<jsp:useBean id="sessionBean" class="beans.SessionBean" scope="session"/>

<%@ page language="java" import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

            for (data.Product product : caseProduct.getAllProducts()) {
          %>
          <tr>
            <td><%=product.getId()%></td>
            <td><%=product.getName()%></td>
            <td><%=product.getPrice()%></td>
            <td><%=product.getDescription()%></td>
            <td><%=product.getManufacturer()%></td>
            <td>
              <!-- TODO: Admin check -->
              <form name="form">
                <select name="link" SIZE="1" onchange="window.location.href=this.value;">
                  <option value="AddProductToWishlist.jsp?productID=<%=product.getId()%>"> add to wishlist </option>
                  <option value="AddProductToCart.jsp?productID=<%=product.getId()%>"> add to cart </option>
                  
                  <% if (sessionBean.getCurrentUser() != null && sessionBean.getCurrentUser().isIsAdmin() == true) {%>
                  <option value="EditProduct.xhtml?productID=<%=product.getId()%>"> Edit </option>
                  <option value="DeleteProduct.xhtml?productID=<%=product.getId()%>"> Delete </option>
                  <% }%> 
                  
                  <option selected="selected" value="#"> -- Options -- </option>
                </select>
              </form>
              <!--
              <a href="AddProductToWishlist.jsp?productID=<%=product.getId()%>">add to wishlist</a>
              <a href="AddProductToCart.jsp?productID=<%=product.getId()%>">add to cart</a>

              <% if (sessionBean.getCurrentUser() != null && sessionBean.getCurrentUser().isIsAdmin() == true) {%>
              <a href="EditProduct.xhtml?productID=<%=product.getId()%>">Edit</a>
              <a href="DeleteProduct.xhtml?productID=<%=product.getId()%>">Delete</a>
              <% }%> -->
            </td>
          </tr>



          <%
            }

          %>
        </table>
        <% if (sessionBean.getCurrentUser() != null && sessionBean.getCurrentUser().isIsAdmin() == true) {%>
        <a href="AddNewProduct.xhtml">Add Product (JSF)</a>
        <% }%>
      </div>
    </div>
  </body>
</html>