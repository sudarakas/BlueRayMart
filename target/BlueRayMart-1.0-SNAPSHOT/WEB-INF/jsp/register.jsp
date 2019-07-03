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
                            <h2 class="card-title text-center">Register</h2>
                            <div class="col-md-6 col-md-offset-3" style="margin-bottom: 8%;">
                                <form:form action="${pageContext.request.contextPath}/register/registeruser" method="post" commandName="customer">

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <span class="text-primary text-uppercase">Your Information</span>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="name">Name</label> <form:errors path="customerName" cssStyle="color:#EA1E63;" />
                                                <form:input path="customerName" type="text" value="" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="name">Email</label> <form:errors path="customerEmail" cssStyle="color:#EA1E63;" />
                                                <form:input path="customerEmail" type="email" value="" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="name">Phone Number</label> <form:errors path="customerPhone" cssStyle="color:#EA1E63;" />
                                                <form:input path="customerPhone" type="text" value="" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <span class="text-primary text-uppercase">Login Information</span>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="name">Username</label> <form:errors path="username" cssStyle="color:#EA1E63;" />
                                                <form:input path="username" type="text" value="" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="name">Password</label> <form:errors path="password" cssStyle="color:#EA1E63;" />
                                                <form:password path="password" value="" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <span class="text-primary text-uppercase">Billing Information</span>
                                            </div>
                                            <div class="panel-body">   
                                                <div class="form-group">
                                                    <label for="name">Apartment Number</label> <form:errors path="billingAddress.apartmentNumber" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.apartmentNumber" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Street Name</label> <form:errors path="billingAddress.streetName" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.streetName" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">City</label> <form:errors path="billingAddress.city" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.city" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">State/Province</label> <form:errors path="billingAddress.state" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.state" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Country</label> <form:errors path="billingAddress.country" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.country" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Postal Code</label> <form:errors path="billingAddress.postalCode" cssStyle="color:#EA1E63;" />
                                                    <form:input path="billingAddress.postalCode" type="text" value="" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <span class="text-primary text-uppercase">Shipping Information</span>
                                            </div>
                                            <div class="panel-body">   
                                                <div class="form-group">
                                                    <label for="name">Apartment Number</label> <form:errors path="shippingAddress.apartmentNumber" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.apartmentNumber" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Street Name</label> <form:errors path="shippingAddress.streetName" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.streetName" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">City</label> <form:errors path="shippingAddress.city" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.city" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">State/Province</label> <form:errors path="shippingAddress.state" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.state" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Country</label> <form:errors path="shippingAddress.country" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.country" type="text" value="" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Postal Code</label> <form:errors path="billingAddress.postalCode" cssStyle="color:#EA1E63;" />
                                                    <form:input path="shippingAddress.postalCode" type="text" value="" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="submit" value="Register Now" class="btn btn-primary btn-round" />
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </form:form>
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
