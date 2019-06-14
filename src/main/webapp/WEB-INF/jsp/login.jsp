<%-- 
    Document   : login
    Created on : Jun 14, 2019, 11:34:35 PM
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
    <body class="login-page">
        <%@include  file="/WEB-INF/jsp/include/nav.jsp" %>

        <div class="page-header header-filter" style="background-image: url('../assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class="card card-signup">
                            <form class="form" method="" action="">
<!--                                <div class="header header-primary text-center">
                                    <h4 class="card-title">Log in</h4>
                                    <div class="social-line">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-facebook-square"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </div>
                                </div>-->
                                <p class="description text-center">Login</p>
                                <div class="card-content">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" placeholder="Password" class="form-control" />
                                    </div>

                                    <!-- If you want to add a checkbox to this form, uncomment this code

                                    <div class="checkbox">
                                            <label>
                                                    <input type="checkbox" name="optionsCheckboxes" checked>
                                                    Subscribe to newsletter
                                            </label>
                                    </div> -->
                                </div>
                                <div class="footer text-center">
                                    <a href="#pablo" class="btn btn-primary btn-simple btn-wd btn-lg">Get Started</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <%@include  file="/WEB-INF/jsp/include/footer.jsp" %>

        </div>

    </body>



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
