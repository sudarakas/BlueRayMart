<%-- 
    Document   : addMovie
    Created on : Apr 18, 2019, 7:48:52 PM
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
        <title>Admin Panel - BlueRay Mart</title>
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
             style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5) %>.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1 class="title">Add Movie</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="section">
                <div class="container">
                    <div class="col-md-10 col-md-offset-1">
                        <form:form action="${pageContext.request.contextPath}/admin/movie/addmovie" method="post" commandName="movie" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="name">Movie Name</label> <form:errors path="movieName" cssStyle="color:#EA1E63;" />
                                <form:input path="movieName" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Movie Genre</label> <form:errors path="movieGenre" cssStyle="color:#EA1E63;" />
                                <form:select path="movieGenre" class="selectpicker" data-style="select-with-transition" title="Choose Movie Genre">
                                    <form:option value="Action" label="Action"/>
                                    <form:option value="Adventure" label="Adventure"/>
                                    <form:option value="Animation" label="Animation"/>
                                    <form:option value="Comedy" label="Comedy"/>
                                    <form:option value="Crime" label="Crime"/>
                                    <form:option value="Drama" label="Drama"/>
                                    <form:option value="Fantasy" label="Fantasy"/>
                                    <form:option value="Historical" label="Historical"/>
                                    <form:option value="Horror" label="Horror"/>
                                    <form:option value="Mystery" label="Mystery"/>
                                    <form:option value="Philosophical" label="Philosophical"/>
                                    <form:option value="Romance" label="Romance"/>
                                </form:select>
                            </div>
                            <div class="form-group">
                                <label for="name">Movie Format</label> <form:errors path="movieFormat" cssStyle="color:#EA1E63;" />
                                <form:select path="movieFormat" class="selectpicker" data-style="select-with-transition" title="Choose Movie Format">
                                    <form:option value="BlueRay" label="BlueRay"/>
                                    <form:option value="DVD" label="DVD"/>
                                    <form:option value="CD" label="CD"/>
                                    <form:option value="HD DVD" label="HD DVD"/>
                                </form:select>
                            </div>
                            <div class="form-group">
                                <label for="name">Director</label> <form:errors path="movieDirector" cssStyle="color:#EA1E63;" />
                                <form:input path="movieDirector" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Studio</label> <form:errors path="movieStudio" cssStyle="color:#EA1E63;" />
                                <form:input path="movieStudio" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Release Date</label>
                                <form:input path="movieReleaseDate" type="date" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Movie Original Language</label>
                                <form:input path="movieOriginalLanguage" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Movie Language</label>
                                <form:input path="movieLanguage" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Run Time</label> <form:errors path="movieRunTime" cssStyle="color:#EA1E63;" />
                                <form:input path="movieRunTime" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">IMDB URL</label>
                                <form:input path="movieIMDB" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Description</label>
                                <form:textarea path="movieDescription" type="text" value="" class="form-control" rows="5" />
                            </div>
                            <div class="form-group">
                                <label for="name">Price</label> <form:errors path="moviePrice" cssStyle="color:#EA1E63;" />
                                <form:input path="moviePrice" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Unit in Stock</label> <form:errors path="movieUnitinStock" cssStyle="color:#EA1E63;" />
                                <form:input path="movieUnitinStock" type="number" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Status</label> <form:errors path="movieStatus" cssStyle="color:#EA1E63;" />
                                <form:select path="movieStatus" class="selectpicker" data-style="select-with-transition" title="Choose Movie Status">
                                    <form:option value="Available" label="Available"/>  
                                    <form:option value="Out of Stock" label="Out of Stock"/>
                                    <form:option value="Coming Soon" label="Coming Soon"/>
                                    <form:option value="Expired" label="Expired"/>
                                </form:select>
                            </div>
                            <div class="form-group">

                                <h4><small>Movie Cover</small></h4>
                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail img-raised">
<!--                                        <img src="assets/img/image_placeholder.jpg" alt="...">-->
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                    <div>
                                        <span class="btn btn-raised btn-round btn-default btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>
                                            <form:input path="movieImage" type="file" value="" class="form-control" />
                                        </span>
                                        <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary">
                            <input type="reset" class="btn btn-danger">

                        </form:form>
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
            <script src="<c:url value="/resources/js/material.min.js"/>"></script>


            <script src="<c:url value="/resources/js/moment.min.js"/>"></script>
            <script src="<c:url value="/resources/js/nouislider.min.js"/>" type="text/javascript"></script>
            <script src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>" type="text/javascript"></script>
            <script src="<c:url value="/resources/js/bootstrap-selectpicker.js"/>" type="text/javascript"></script>
            <script src="<c:url value="/resources/js/bootstrap-tagsinput.js"/>"></script>
            <script src="<c:url value="/resources/js/jasny-bootstrap.min.js"/>"></script>
            <script src="<c:url value="/resources/js/material-kit.js?v=1.2.1"/>" type="text/javascript"/></script>
        
</body>

</html>

