<?xml version='1.0' encoding='UTF-8' ?>

<%@page import="beans.caseProduct"%>

<% // Use of Bean needs a empty standard constructor %>
<jsp:useBean id="sess" class="beans.Session" scope="session"/>

<%@ page language="java" import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="./resources/css/default.css" rel="stylesheet" type="text/css" />
        <link href="./resources/css/cssLayout.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <div>

            <jsp:include page="/templates/header.xhtml" />
            <jsp:include page="/templates/menu.xhtml" />

            <div id="content" class="left_content">
                <h1>Anmeldung</h1>

                <c:if test="${pageContext.request.method=='POST' and param.submit=='Submit'}">
                    <jsp:setProperty name="sess" property="mail" value="${param.mail}"/>
                    <jsp:setProperty name="sess" property="password" value="${param.password}"/>
                    <c:choose>
                        <c:when test="${sess.login() != null}">
                            <p>Erfolgreich angemeldet!</p>
                            <p>Willkommen <c:out value="${sess.currentUser.name}" />!</p>
                        </c:when>
                        <c:otherwise>
                            Falsche Logindaten!
                            <c:out value="${sess.login()}" />
                            <jsp:getProperty name="sess" property="mail"/>
                            <jsp:getProperty name="sess" property="password"/>
                        </c:otherwise>
                    </c:choose>
                </c:if>
                <%  // request.getParameter("InsertProduct") and param.submit %>



                <c:if test="${sess.currentUser == null}">
                    <form action="Login.jsp" method="post">
                        <fieldset>
                            <legend>Insert your data: </legend>
                            <label for="mail">Email:</label><br />
                            <input type="text" id="mail" name="mail" /><br />
                            <label for="password">Password:</label><br />
                            <input type="password" id="password" name="password" /><br/>
                            <br />
                            <input type="submit" name="submit" value="Submit" />
                        </fieldset>
                    </form>
                </c:if>
            </div>
        </div>
    </body>
</html>