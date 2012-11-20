<%-- 
    Document   : showProduct
    Created on : 20.11.2012, 13:49:58
    Author     : Marco
--%>

<%@page import="data.Product"%>
<%@page import="data.Storage"%>

<% Product product = Storage.getInstance().getProductById(Integer.parseInt(request.getParameter("productID"))); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <%= product.getName()%>
        </title>
    </head>
    <body>  
        <table border="0">
            <colgroup>
                <col width="120">
                <col width="200">
            </colgroup>
            <tbody valign="top">
                <tr>
                    <td>Name</td>
                    <td><%= product.getName()%></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><%= product.getPrice()%></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><%= product.getDescription()%></td>
                </tr>
                <tr>
                    <td>Manufacturer</td>
                    <td><%= product.getManufacturer()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="read comments" /></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>