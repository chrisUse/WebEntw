<%-- 
    Document   : showProducts
    Created on : 29.11.2012, 10:38:22
    Author     : Marco
--%>

<%@page import="data.Storage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
    </head>
    <body>
         <table border="1">
            <tbody>
                <% for(int i=0; i<Storage.getInstance().getAllProducts().size(); i++) { %>
                    <tr> 
                        <td>
                            <% int productID = Storage.getInstance().getAllProducts().get(i).getId(); %>
                            <%@include file="showProductShort.jsp" %>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
