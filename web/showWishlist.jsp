<%-- 
    Document   : showWishlist
    Created on : 19.11.2012, 12:55:30
    Author     : Marco
--%>

<jsp:useBean id="sessionBean" class="beans.SessionBean" scope="session"/>
<jsp:useBean id="wishlistBean" class="beans.WishlistBean" scope="page" />

<%
    if(sessionBean.getCurrentUser() == null)
        response.sendRedirect("LoginError.jsp");
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
            <%--
            <%@include file="templates/header.xhtml" %>
            <%@include file="templates/menu.xhtml" %>
            --%>
            <jsp:include page="/templates/header.xhtml" />
            <jsp:include page="/templates/menu.jsp" />
            
            <div id="content" class="left_content">
                
                <h1>Wunschliste von <%= sessionBean.getCurrentUser().getName() %></h1>
                
                <% if(session.getAttribute("error") != null){
                    if(session.getAttribute("error") == "pae") {%>
                        <p class="error">Der ausgewählte Artikel befand sich bereits auf Ihrer Wunschliste</p> 
                    <% }
                    else if(session.getAttribute("error") == "pdne") {%>
                       <p class="error">Der ausgewählte Artikel befand sich nicht auf Ihrer Wunschliste</p>
                    <% }
                    session.removeAttribute("error");
                }

                if(wishlistBean.getSize(sessionBean.getCurrentUserID()) == 0) { %>
                    <p class="status">Auf Ihrer Wunschliste befinden sich noch keine Artikel</p>
                    <form action="ViewProduct.jsp">
                        <input type="submit" value="Zur Artikelübersicht" />
                    </form>
                <% } 
                else{ %>
                    <p class="status">Auf Ihrer Wunschliste befinden sich <%= wishlistBean.getSize(sessionBean.getCurrentUserID()) %> Artikel</p>
                    <table>
                        <thead>
                            <tr> 
                                <td align="right"><b>Artikel Nummer</b></td>
                                <td><b>Name</b></td>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(data.Product product : wishlistBean.getProducts(sessionBean.getCurrentUserID())) { %>
                                <tr>
                                    <td align="center"> <%= product.getId() %> </td>
                                    <td> <%= product.getName() %> </td>
                                    <td>
                                        <form action="removeProductFromWishlist.jsp">
                                            <input type="hidden" name="productID" value="<%= product.getId() %>" />
                                            <input type="submit" value="Entfernen" />
                                        </form>
                                    </td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <form action="ViewProduct.jsp">
                        <input type="submit" value="Weitere Artikel hinzufügen" />
                    </form>
                <% } %>
            </div>
        </div>
    </body>
</html>
