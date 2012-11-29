<%-- 
    Document   : showCart
    Created on : Nov 29, 2012, 3:32:55 PM
    Author     : Danny
--%>

<%@page import="data.ProductInCart"%>
<%@page import="data.Product"%>
<%@page import="data.Cart"%>
<%@page import="data.Storage"%>
<%@page import="data.User"%>
<%
    int tUserID = Integer.parseInt(request.getParameter("userID"));
    Cart tCart  = Storage.getInstance().getUserById(tUserID).getCart();
    System.out.println("Cart size: " + tCart.getProductsInCart().size());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show cart</title>
    </head>
    <body>
        <table border="1">
            <th>ID</th><th>Name</th><th>Count</th>
            <% for(int i = 0; i < tCart.getProductsInCart().size(); i++) { 
                    ProductInCart   tProductIC  = tCart.getProductsInCart().get(i);
                    Product         tProduct    = Storage.getInstance().getProductById(tProductIC.getId()); %>
                <tr>
                    <td><% out.print(tProductIC.getId()); %></td>
                    <td><% out.print(tProduct.getName()); %></td>
                    <td><% out.print(tProductIC.getCount()); %></td>
                    <td>
                        <form name="increaseQuantity" action="IncreaseQuantity.jsp">
                            <input type="hidden" name="productID" value="<%= tProduct.getId() %>" />
                            <input type="hidden" name="userID" value="<%= tUserID%>" />
                            <input type="submit" value="+" />
                        </form>
                    </td>
                    <td>
                        <form name="decreaseQuantity" action="DecreaseQuantity.jsp">
                            <input type="hidden" name="productID" value="<%= tProduct.getId() %>" />
                            <input type="hidden" name="userID" value="<%= tUserID%>" />
                            <input type="submit" value="-" />
                        </form>
                    </td>
                    <td>
                        <form name="editCartEntry" action="">
                            <input type="hidden" name="productID" value="<%= tProduct.getId() %>" />
                            <input type="hidden" name="userID" value="<%= tUserID%>" />
                            <input type="submit" value="Edit" />
                        </form>
                    </td>
                    <td>
                        <form name="deleteCartEntry" action="DeleteCartEntry.jsp">
                            <input type="hidden" name="productID" value="<%= tProduct.getId() %>" />
                            <input type="hidden" name="userID" value="<%= tUserID%>" />
                            <input type="submit" value="Remove" />
                        </form>
                    </td>
                </tr>
            <% }    %>
        </table>
    </body>
</html>
