<%-- 
    Document   : nav
    Created on : Jun 14, 2019, 11:40:14 PM
    Author     : NanoX
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-default navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll="100"
     id="sectionsNav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">BlueRay Mart</a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/">
                        <i class="material-icons">home</i> Home
                    </a>
                </li>
                <li>
                    <a href="/">
                        <i class="material-icons">info</i> About Us
                    </a>
                </li>
                <li>
                    <a href="/">
                        <i class="material-icons">message</i> Contact Us
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/cart"/>">
                        <i class='material-icons'>person</i> Cart
                    </a>
                </li>

                <li>
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name != null}">
                            <a href="<c:url value="/j_spring_security_logout"/>">
                                Sign Out
                            </a>
                        </c:when> 
                        <c:otherwise>
                            <a href="<c:url value="/login"/>">
                                Sign In
                            </a>
                        </c:otherwise>
                    </c:choose> 
                </li>
                <li class="button-container">
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name != null}">
                            <a href="/movie/movieList" class="btn btn-primary">
                                Buy Now
                            </a>
                        </c:when> 
                        <c:otherwise>
                            <a href="/register" target="_blank" class="btn btn-primary">
                                Sign Up
                            </a>
                        </c:otherwise>
                    </c:choose>

                </li>
            </ul>
        </div>
    </div>
</nav>
