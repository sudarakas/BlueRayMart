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
        <title>BlueRay Mart - Buy Your Movies</title>

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
                            <h1 class="title">BlueRay Mart</h1>
                            <h4>Free global delivery for all movies. Use coupon <b>uwuLife</b> for an extra 25% Off</h4>
                            <a href="/movieList" target="" class="btn btn-rose">
                                Visit Store
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="section">
                <div class="container">
                    <h2 class="section-title">Latest Movies</h2>
                    <div class="row">
                        <c:forEach items="${movies}" var="movie">
                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="<c:url value="/resources/images/${movie.movieId}.png"/>" alt="..." style="object-fit: cover; width: 300px;height: 320px;"/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
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
                </div>
            </div>
        </div>
        <!-- section -->
        <br>
        <div class="container">
            <h2 class="section-title">Most Popular Genere</h2>

            <div class="row">
                <div class="col-md-4">
                    <div class="card card-background" style="background-image: url(../assets/img/examples/chris9.jpg)">
                        <div class="card-content">
                            <h6 class="category text-info">BlueRay Mart</h6>
                            <a href="#pablo">
                                <h3 class="card-title">Animation</h3>
                            </a>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth
                                And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="#pablo" class="btn btn-primary btn-round">
                                <i class="material-icons">subject</i> More
                            </a>
                        </div>
                    </div>
                    <!-- end card -->
                </div>

                <div class="col-md-4">
                    <div class="card card-background" style="background-image: url(../assets/img/examples/color3.jpg)">
                        <div class="card-content">
                            <h6 class="category text-info">BlueRay Mart</h6>
                            <h3 class="card-title">Action</h3>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth
                                And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="#pablo" class="btn btn-primary btn-round">
                                <i class="material-icons">subject</i> More
                            </a>
                        </div>
                    </div>
                    <!-- end card -->
                </div>

                <div class="col-md-4">
                    <div class="card card-background" style="background-image: url(../assets/img/examples/chris1.jpg)">
                        <div class="card-content">
                            <h6 class="category text-info">BlueRay Mart</h6>
                            <a href="#pablo">
                                <h3 class="card-title">Comdey</h3>
                            </a>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth
                                And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="#pablo" class="btn btn-primary btn-round">
                                <i class="material-icons">subject</i> Read
                            </a>
                        </div>
                    </div>
                    <!-- end card -->
                </div>

                <div class="col-md-6">
                    <div class="card card-background" style="background-image: url(../assets/img/dg3.jpg)">
                        <div class="card-content">
                            <h6 class="category text-info">BlueRay Mart</h6>
                            <a href="#pablo">
                                <h3 class="card-title">Sci-Fi</h3>
                            </a>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth
                                And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="#pablo" class="btn btn-primary btn-round">
                                <i class="material-icons">subject</i> Read
                            </a>
                        </div>
                    </div>
                    <!-- end card -->
                </div>

                <div class="col-md-6">
                    <div class="card card-background" style="background-image: url(../assets/img/dg1.jpg)">
                        <div class="card-content">
                            <h6 class="category text-info">BlueRay Mart</h6>
                            <a href="#pablo">
                                <h3 class="card-title">Drama</h3>
                            </a>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth
                                And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="#pablo" class="btn btn-primary btn-round">
                                <i class="material-icons">subject</i> read
                            </a>
                        </div>
                    </div>
                    <!-- end card -->
                </div>
            </div>
        </div>

    </div>
</div>
<!-- section -->

</div>
<!-- end-main-raised -->

<div class="section section-blog">
    <div class="container">
        <h2 class="section-title">Upcoming Movies</h2>
        <div class="row">
            <div class="col-md-4">

                <div class="card card-blog">
                    <div class="card-image">
                        <a href="#pablo">
                            <img src="../assets/img/dg6.jpg" alt="">
                        </a>
                        <div class="colored-shadow"
                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                        </div>
                        <div class="ripple-container"></div>
                    </div>
                    <div class="card-content">
                        <h6 class="category text-rose">Trends</h6>
                        <h4 class="card-title">
                            <a href="#pablo">Learn how to wear your scarf with a floral print shirt</a>
                        </h4>
                        <p class="card-description">
                            Don't be scared of the truth because we need to restart the human foundation in truth
                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                        </p>
                        <a href="#pablo" class="btn btn-rose btn-round">
                            <i class="material-icons">subject</i> More
                        </a>
                    </div>

                </div>

            </div>

            <div class="col-md-4">

                <div class="card card-blog">
                    <div class="card-image">
                        <a href="#pablo">
                            <img src="../assets/img/dg10.jpg" alt="">
                        </a>
                        <div class="colored-shadow"
                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                        </div>
                        <div class="ripple-container"></div>
                    </div>
                    <div class="card-content">
                        <h6 class="category text-rose">Fashion week</h6>
                        <h4 class="card-title">
                            <a href="#pablo">Katy Perry was wearing a Dolce & Gabanna arc dress</a>
                        </h4>
                        <p class="card-description">
                            Don't be scared of the truth because we need to restart the human foundation in truth
                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                        </p>
                        <a href="#pablo" class="btn btn-rose btn-round">
                            <i class="material-icons">subject</i> More
                        </a>
                    </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="card card-blog">
                    <div class="card-image">
                        <a href="#pablo">
                            <img src="../assets/img/dg9.jpg" alt="">
                        </a>
                        <div class="colored-shadow"
                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                        </div>
                        <div class="ripple-container"></div>
                    </div>
                    <div class="card-content">
                        <h6 class="category text-rose">Fashion week</h6>
                        <h4 class="card-title">
                            <a href="#pablo">Check the latest fashion events and which are the trends</a>
                        </h4>
                        <p class="card-description">
                            Don't be scared of the truth because we need to restart the human foundation in truth
                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                        </p>
                        <a href="#pablo" class="btn btn-rose btn-round">
                            <i class="material-icons">subject</i> More
                        </a>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
<!-- section -->

<div class="subscribe-line subscribe-line-image" data-parallax="true"
     style="background-image: url('../assets/img/examples/ecommerce-header.jpg');">
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
