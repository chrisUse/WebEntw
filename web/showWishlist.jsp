<%-- 
    Document   : showWishlist
    Created on : 19.11.2012, 12:55:30
    Author     : Marco
--%>

<%@page import="data.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.WishList"%>
<%@page import="data.User"%>
<%@page import="data.Storage"%>
<%
    WishList wishList = new WishList(Storage.getInstance().getUserById(1).getWishList());
    //out.print(wishList.getProducts().size());
%>

<%@page language="java" import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="./resources/css/default.css" rel="stylesheet" type="text/css" />
        <link href="./resources/css/cssLayout.css" rel="stylesheet" type="text/css" />
        
        <title>Wishlist</title>
        
    </head>
    <body>
        
        <div>
            <%@include file="templates/header.xhtml" %>
            <%@include file="templates/menu.xhtml" %>
            
            <div id="content" class="left_content">
                <%
                if(!Boolean.parseBoolean(request.getParameter("newProduct")))
                    out.print("Ihr ausgewähltes Produkt befand sich bereits auf Ihrer Wunschliste");
                %>
                <table border="1">
                    <thead>
                        <tr> 
                            <td>ID</td>
                            <td>Name</td>
                        </tr>
                    </thead>
                    <tbody>
                        <% for(int i=0; i<wishList.getProducts().size(); i++) { %>
                            <tr> 
                                <td><% out.print(wishList.getProducts().get(i).getId()); %></td>
                                <td><% out.print(wishList.getProducts().get(i).getName()); %></td>
                                <td> 
                                    <form action="removeProductFromWishlist.jsp">
                                        <input type="hidden" name="productID" value="<%= wishList.getProducts().get(i).getId() %>" />
                                        <input type="submit" value="Entfernen" />
                                    </form>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
                
                <!-- just for test issues-->
                <form action="showProducts.jsp">
                    <input type="submit" value="Zur Produktübersicht" />
                </form>
            </div>
        </div>
    </body>
</html>
