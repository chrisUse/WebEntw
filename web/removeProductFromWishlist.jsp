<%-- 
    Document   : removeProductFromWishlist
    Created on : 29.11.2012, 09:57:22
    Author     : Marco Wilhelm
--%>

<%@page import="data.WishList"%>
<%@page import="data.Storage"%>
<%@page import="data.User"%>
<%
    //TODO   set currentUser to the real current user
    User currentUser = Storage.getInstance().getUserById(1);
    WishList wishList = currentUser.getWishList();
    int productID = Integer.parseInt(request.getParameter("productID"));
    wishList.removeProduct(productID);
    currentUser.setWishList(wishList);
    Storage.getInstance().setUser(currentUser);
    response.sendRedirect("showWishlist.jsp?userID=1");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>remove product from wish list</title>
    </head>
    <body>
      </body>
</html>
