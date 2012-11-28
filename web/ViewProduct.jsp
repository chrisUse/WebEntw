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
        <%
/*
          // With Bean
          if (request.getParameter("InsertProduct") != null) {
            // Initial values and add product.
            out.println("Add Product <br />");
            int newPID = caseProduct.addProduct(request.getParameter("Name"), Float.parseFloat(request.getParameter("Price")), request.getParameter("Description"), request.getParameter("Manufacturer"));
            //String name = nProduct.getName(newPID);
            out.println("ID: " + newPID + " ");
           // out.println("Name: " + caseProduct.getName(newPID) + "<br />");
           // out.println("Price: " + caseProduct.getPrice(newPID) + "<br />");
           // out.println("Description: " + caseProduct.getDescription(newPID) + "<br />");
           // out.println("Manufacturer: " + caseProduct.getManufacturer(newPID) + "<br />");
          }
          */
          
          out.println ("Print all products");
          
          List<data.Product> allProducts = data.Storage.getInstance().getAllProducts();
          
          for ( data.Product product : allProducts ) {
            out.println ("Name: " + product.getName() + "<br />");
            out.println ("Price: " + product.getPrice() + "<br />");
            out.println ("Desctiption: " + product.getDescription() + "<br />");
            out.println ("Manufacturer: " + product.getManufacturer() + "<br />");
            out.println ("=============================== <br />");
          }

          // name = request.getParameter("name");


          /*
           if (nProduct != null) {
           out.println("New Product");
           //if (nProduct.getName(0) != null) {
           //String test = nProduct.getName(2);
           out.println("Name: " + nProduct.getName(0));
           //}
           } else {
           out.println("No new product");
           }
           * */

        %>

      </div>
    </div>
  </body>
</html>