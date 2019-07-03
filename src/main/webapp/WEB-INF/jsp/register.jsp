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
        <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

        <!-- CSS Files -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


    </head>
    <body class="login-page">
        <%@include  file="/WEB-INF/jsp/include/nav.jsp" %>

        <div class="page-header header-filter" filter-color="purple" style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5)%>.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">

                        <div class="card card-signup">
                            <h2 class="card-title text-center">Login</h2>
                            <div class="col-md-6 col-md-offset-3" style="margin-bottom: 8%;">
                                <div class="social text-center">
                                    <h4> Enter your login details </h4>
                                </div>

                                <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                                    <div class="card-content">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">face</i>
                                            </span>
                                            <input type="text" id="username" name="username" class="form-control" placeholder="Username" />
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">lock_outline</i>
                                            </span>
                                            <input type="password" id="password" name="password" placeholder="Password" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="footer text-center">
                                        <input type="submit" value="Login Now" class="btn btn-primary btn-round" />
                                    </div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                </form>
                                <c:if test="${not empty msg}">
                                    <div class="text-center text-success">
                                        <b>Alert:</b> ${msg}
                                    </div>
                                </c:if>
                                <c:if test="${not empty error}">
                                    <div class="text-center text-danger">
                                        <b>Error Alert:</b> ${error}
                                    </div>
                                </c:if>
                            </div>
                        </div>
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
