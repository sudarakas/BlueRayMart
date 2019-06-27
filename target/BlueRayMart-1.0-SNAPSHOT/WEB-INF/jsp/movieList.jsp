<%-- 
    Document   : home
    Created on : Apr 11, 2019, 12:59:35 AM
    Author     : NanoX
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store - BlueRay Mart</title>
        <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

        <!-- CSS Files -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


    </head>
    <body class="ecommerce-page">
        <%@include  file="/WEB-INF/jsp/include/nav.jsp" %>

        <div class="page-header header-filter header-small" data-parallax="true"
             style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5)%>.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1 class="title">Store - BlueRay Mart</h1>
                            <h4>Free global delivery for all movies. Use coupon <b>uwuLife</b> for an extra 25% Off</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="section">
                <footer>
                    <ul class="pull-center">
                        <li>
                            <a href="#pablo">
                                Action
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Action
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Animation
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Comedy
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Crime
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Drama
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Fantasy
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Historical
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Horror
                            </a>
                        </li>
                    </ul>

                </footer>
                <div class="container">
                    <div class="col-md-12">
                        <c:if test="${movies.size() > 0}">
                        <div class="row">
                            <c:forEach items="${movies}" var="movie">
                                <div class="col-md-4">
                                    <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                        <div class="card-image">
                                            <a href="<spring:url value="/movieList/viewMovie/${movie.movieId}"/>">
                                                <img src="<c:url value="/resources/images/${movie.movieId}.png"/>" alt="..."/>
                                            </a>
                                        </div>
                                        <div class="card-content">
                                            <a href="<spring:url value="/movieList/viewMovie/${movie.movieId}"/>">
                                                <h4 class="card-title">${movie.movieName}</h4>
                                            </a>
                                            <p class="description">
                                                <strong>Genre: </strong> ${movie.movieGenre} <br>
                                                <strong>Status: </strong> ${movie.movieStatus}
                                            </p>
                                            <p class="description">
                                                ${movie.movieDescription}
                                            </p>
                                            <div class="footer">
                                                <div class="price-container">
                                                    <span class="price"> LKR ${movie.moviePrice}</span>
                                                </div>

                                                <a href="<spring:url value="/movieList/viewMovie/${movie.movieId}"/>">
                                                    <button class="btn btn-rose pull-right" rel="tooltip" title="Added to Cart" data-placement="top">
                                                        Buy Now
                                                    </button>
                                                </a>
                                            </div>
                                        </div>
                                    </div> <!-- end card -->
                                </div>
                            </c:forEach>
                        </div>
                        </c:if>
                        <c:if test="${movies.size() <= 0}">
                            <div class="tim-typo" style="margin: 20% 0 20% 0">
	                        <h2 class="title text-center">Sorry! No Result Found.</h2>
	                    </div>
                        </c:if> 
                    </div>
                </div>
            </div>
        </div>
        <!-- end-main-raised -->

        <div class="subscribe-line subscribe-line-image" data-parallax="true">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="text-center">
                            <h3 class="title">Subscribe to our Newsletter</h3>
                            <p class="description">
                                Join our newsletter and get new movie release news in your inbox every week! We hate spam
                                too, so no worries about this.
                            </p>
                        </div>

                        <div class="card card-raised card-form-horizontal">
                            <div class="card-content">
                                <form method="" action="">
                                    <div class="row">
                                        <div class="col-sm-8">

                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">mail</i>
                                                </span>
                                                <div class="form-group is-empty">
                                                    <input type="email" value="" placeholder="Your Email..."
                                                           class="form-control"><span class="material-input"></span></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <button type="button" class="btn btn-rose btn-block">Subscribe</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <%@include file="/WEB-INF/jsp/include/footer.jsp" %>
        <!--   Core JS Files   -->
        <script src="<c:url value="/resources/js/jquery.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/material.min.js"/>"</script>


        <script src="<c:url value="/resources/js/moment.min.js"/>"></script>
        <script src="<c:url value="/resources/js/nouislider.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap-selectpicker.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap-tagsinput.js"/>"></script>
        <script src="<c:url value="/resources/js/jasny-bootstrap.min.js"/>"></script>
        <script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <script src="<c:url value="/resources/js/material-kit.js?v=1.2.1"/>" type="text/javascript"/></script>
    <script type="text/javascript">
        $().ready(function () {

            materialKitDemo.initContactUs2Map();
        });
    </script>
</body>

</html>
