<?xml version='1.0' encoding='UTF-8' ?>

<%@page import="beans.CaseProduct"%>

<% // Use of Bean needs a empty standard constructor %>
<jsp:useBean id="caseProduct" class="beans.CaseProduct" scope="page"/>

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
      <jsp:include page="/templates/header.html" />
      <jsp:include page="/templates/menue.html" />

      <div id="content" class="left_content">
        <%

          // With Bean
          if (request.getParameter("InsertProduct") != null) {
            // Initial values and add product.
            out.println("Add Product <br />");
            int newPID = caseProduct.addProduct(request.getParameter("Name"), Float.parseFloat(request.getParameter("Price")), request.getParameter("Description"), request.getParameter("Manufacturer"));
            //String name = nProduct.getName(newPID);
            out.println("ID: " + newPID + " ");
            out.println("Name: " + caseProduct.getName(newPID) + "<br />");
            out.println("Price: " + caseProduct.getPrice(newPID) + "<br />");
            out.println("Description: " + caseProduct.getDescription(newPID) + "<br />");
            out.println("Manufacturer: " + caseProduct.getManufacturer(newPID) + "<br />");
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

        <!--  Nachbedingung Erfolg: Is product are insert actor gets success notification -->
        <!--  Nachbedingung Fehler: If a problem are occurred actor gets error notification -->
        <!--   Actor can change something to fix error -->

        <!-- ########## A C T O R ########## -->
        <!-- Actor insert product informations for adding -->


        <form method="post" action="AddNewProduct.jsp">
          <input name="Name" value="" type="text" /> 
          <input name="Price" value="" type="text" /> 
          <input name="Description" value="" type="text" /> 
          <input name="Manufactorer" value="" type="text" />
          <input name="InsertProduct" value="Add"  type="submit" />  
        </form>
      </div>
    </div>
  </body>
</html>