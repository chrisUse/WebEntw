<?xml version='1.0' encoding='UTF-8' ?>

<%@page import="useCase.CaseProduct"%>
<%@ page language="java" import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets">


  <h:body>
    <ui:composition template="./newTemplate.xhtml">
      <ui:define name="content">

        <!-- ########## S Y S T E M ########## -->
        <!-- Check if actor are admin -->

        <%
          CaseProduct nProduct = new CaseProduct();
          // Check if values are present
          if (request.getParameter("InsertProduct") != null) {
            // Initial values and add product.
            out.println("Add Product <br />");
            int newPID = nProduct.addProduct(request.getParameter("Name"), Float.parseFloat(request.getParameter("Price")), request.getParameter("Description"), request.getParameter("Manufacturer"));
            //String name = nProduct.getName(newPID);
            out.println ("ID: " + newPID + " ");
            out.println ("Name: "         + nProduct.getName(newPID) + "<br />");
            out.println ("Price: "        + nProduct.getPrice(newPID) + "<br />");
            out.println ("Description: "  + nProduct.getDescription(newPID) + "<br />");
            out.println ("Manufacturer: " + nProduct.getManufacturer(newPID) + "<br />");
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

      </ui:define>
    </ui:composition>
  </h:body>
</html>