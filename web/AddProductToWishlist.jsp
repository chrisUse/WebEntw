<%-- 
    Document   : AddProductToWishlist
    Created on : 15.11.2012, 21:06:50
    Author     : Marco Wilhelm
--%>


<%@page import="data.Storage"%>
<%@page import="data.WishList"%>
<%@page import="data.User"%>
<%
    //TODO   set currentUser to the real current user
    User currentUser = Storage.getInstance().getUserById(1);
    WishList wishList = currentUser.getWishList();
    wishList.addProduct(Integer.parseInt(request.getParameter("productID")));
    currentUser.setWishList(wishList);
    response.sendRedirect("showWishlist.jsp?userID=1");
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add product to wishlist</title>
    </head>
    <body>
        
    </body>
</html>
