<%-- 
    Document   : AddProductToCart
    Created on : Nov 29, 2012, 3:19:58 PM
    Author     : Danny
--%>

<%@page import="data.Cart"%>
<%@page import="data.User"%>
<%@page import="data.Storage"%>
<%
    // current user??
    boolean tIsInCart       = false;
    int     tUserID         = 1;   
    int     tProductID      = Integer.parseInt(request.getParameter("productID"));
    User    tCurrentUser    = Storage.getInstance().getUserById(tUserID);
    Cart    tCart           = tCurrentUser.getCart();
    
    if(!tCart.isInCart(tProductID))
        tCart.addProduct(Storage.getInstance().getProductById(tProductID));
    else
        //tCart.increaseQuantity(tProductID);
        tIsInCart   = true;

    tCurrentUser.setCart(tCart);
    Storage.getInstance().setUser(tCurrentUser);
    response.sendRedirect("showCart.jsp?isInCart="+tIsInCart+"&userID="+tUserID);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add product to cart</title>
    </head>
    <body>
    </body>
</html>
