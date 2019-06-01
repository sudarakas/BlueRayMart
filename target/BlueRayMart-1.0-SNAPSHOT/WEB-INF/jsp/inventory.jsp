<%-- 
    Document   : inventory
    Created on : Apr 18, 2019, 7:01:17 PM
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
        <title>Inventory - BlueRay Mart</title>

        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

        <!-- CSS Files -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


    </head>
    <body class="ecommerce-page">
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
                    <a class="navbar-brand" href="">BlueRay Mart</a>
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
                            <a href="/">
                                Sign In
                            </a>
                        </li>
                        <li class="button-container">
                            <a href="" target="_blank" class="btn btn-primary">
                                Sign Up
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="page-header header-filter header-small" data-parallax="true"
             style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5) %>.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1 class="title">View Inventory</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="section">
                <div class="distable">

                    <div id="tables">
                        <div class="title">
                            <h3>Inventory</h3>
                        </div>
                        <div class="text-right"><a href="/admin/inventory/addmovie" class="btn btn-success">Add Movie</a></div>
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Movie Inventory</h4>
                            </div>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-center">#</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Genre</th>
                                                <th>Lang</th>
                                                <th>O.Lang</th>
                                                <th>R.Date</th>
                                                <th>R.Time</th>
                                                <th>Director</th>
                                                <th>Format</th>
                                                <th>Studio</th>
                                                <th>Stock</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${movies}" var="movie">
                                                <tr>
                                                    <td>${movie.movieId}</td>
                                                    <td>${movie.movieName}</td>
                                                    <td class="text-right">LKR ${movie.moviePrice}</td>
                                                    <td>${movie.movieGenre}</td>
                                                    <td>${movie.movieLanguage}</td>
                                                    <td>${movie.movieOriginalLanguage}</td>
                                                    <td>${movie.movieReleaseDate}</td>
                                                    <td>${movie.movieRunTime}</td>
                                                    <td>${movie.movieDirector}</td>
                                                    <td>${movie.movieFormat}</td>
                                                    <td>${movie.movieStudio}</td>
                                                    <td>${movie.movieUnitinStock}</td>
                                                    <td>${movie.movieStatus}</td>
                                                    <td class="td-actions text-right">
                                                        <button type="button" rel="tooltip" class="btn btn-success btn-round" onclick="window.open('<spring:url value="/movieList/viewMovie/${movie.movieId}"/>')">
                                                            <i class='material-icons'> call_made </i>
                                                        </button>
                                                        <button type="button" rel="tooltip" class="btn btn-link btn-round">
                                                            <i class="material-icons">edit</i>
                                                        </button>
                                                        <button type="button" rel="tooltip" class="btn btn-danger btn-round" onclick="window.open('<spring:url value="/admin/inventory/deleteMovie/${movie.movieId}"/>')">
                                                            <i class="material-icons">close</i>
                                                        </button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <footer class="footer footer-black footer-big">
                <div class="container">

                    <div class="content">
                        <div class="row">
                            <div class="col-md-4">
                                <h5>About Us</h5>
                                <p>Creative Tim is a startup that creates design tools that make the web development process
                                    faster and easier. </p>
                                <p>We love the web and care deeply for how users interact with a digital product. We power
                                    businesses and individuals to create better looking web projects around the world. </p>
                            </div>

                            <div class="col-md-4">
                                <h5>Social Network</h5>
                                <div class="social-feed">
                                    <div class="feed-line">
                                        <i class="fa fa-twitter"></i>
                                        <p>Follow Us</p>
                                    </div>
                                    <div class="feed-line">
                                        <i class="fa fa-linkedin"></i>
                                        <p>Connect Us</p>
                                    </div>
                                    <div class="feed-line">
                                        <i class="fa fa-facebook-square"></i>
                                        <p>Like Us</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <h5>Address</h5>
                                <p>
                                    Visit us at:<br>
                                    Example.com<br>
                                    Box 564, Disneyland<br>
                                    USA
                                </p>
                            </div>
                        </div>
                    </div>

                    <hr />

                    <ul class="pull-left">
                        <li>
                            <a href="#pablo">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Contact Us
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Sign In
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Sign Up
                            </a>
                        </li>
                    </ul>

                    <div class="copyright pull-right">
                        Copyright &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script> NanoDev {WEB} All Rights Reserved.
                    </div>
                </div>
            </footer>
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

