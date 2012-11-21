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
    // TODO is there any better posibility ... (how does that jsp:useBean work?)
    ArrayList<Product> wishList = (ArrayList) Storage.getInstance().getUserById(1).getWishList().getProducts();
    out.print(wishList.size());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist</title>
    </head>
    <body>
        <table border="1">
            <tbody>
                <% for(int i=0; i<wishList.size(); i++) {
                    out.print("<tr><td>");
                        wishList.get(i).getName();
                    out.print("</tr></td>");
                }%>
            </tbody>
        </table>

    </body>
</html>
