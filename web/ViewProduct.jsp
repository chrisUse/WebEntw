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

    <%
      //int counter = 1;
      //while (request.getParameter("checked_" + counter) != null) {
      if (request.getParameterValues("checked") != null) {
        String[] t = request.getParameterValues("checked");
        //for ( String t : request.getParameterValues("checked") ) {
        //for ( int x=0; x < t.length; x++ ) {
        out.print("Daten: " + t[0]);
        //counter++;
        //}
      }
    %>

    <div>
      <jsp:include page="/templates/header.xhtml" />
      <jsp:include page="/templates/menu.jsp" />

      <div id="content" class="left_content">
        <center><h1>Print all products</h1></center>

        <table>
          <tr>
            <td>Select</td><td>ID</td> <td>Name</td> <td>Price</td> <td>Description</td> <td>Manufacturer</td>
            <td>Options</td>
          </tr>

          <form name="outerForm" action="ViewProduct.jsp" method="post">
            <% //counter = 1; %>
            <% for (data.Product product : caseProduct.getAllProducts()) {%>
            <tr>
              <td><input name="checked[]" type="checkbox" value="<%=product.getId()%>"/></td>
              <td><%=product.getId()%></td>
              <td><%=product.getName()%></td>
              <td><%=product.getPrice()%></td>
              <td><%=product.getDescription()%></td>
              <td><%=product.getManufacturer()%></td>
              <td>
                <!-- <form name="form"> -->
                <select name="link" SIZE="1" onchange="window.location.href=this.value;">
                  <option value="AddProductToWishlist.jsp?productID=<%=product.getId()%>"> add to wishlist </option>
                  <option value="AddProductToCart.jsp?productID=<%=product.getId()%>"> add to cart </option>

                  <% if (sessionBean.getCurrentUser() != null && sessionBean.getCurrentUser().isIsAdmin() == true) {%>
                  <option value="EditProduct.xhtml?productID=<%=product.getId()%>"> Edit </option>
                  <option value="DeleteProduct.xhtml?productID=<%=product.getId()%>"> Delete </option>
                  <% }%> 

                  <option selected="selected" value="#"> -- Options -- </option>
                </select>
                <!--  </form> -->
              </td>
            </tr>
            <% }%>
            <input type="submit" name="DeleteAllSelected" value="Delete all selected" />
          </form>
        </table>
        <% if (sessionBean.getCurrentUser() != null && sessionBean.getCurrentUser().isIsAdmin() == true) {%>
        <a href="AddNewProduct.xhtml">Add Product (JSF)</a>
        <% }%>
      </div>
    </div>
  </body>
</html>