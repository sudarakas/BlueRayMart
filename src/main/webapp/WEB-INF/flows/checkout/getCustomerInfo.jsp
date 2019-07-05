<%-- 
    Document   : getCustomerInfo
    Created on : Jul 5, 2019, 2:36:04 PM
    Author     : NanoX
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/controller.js"/>" type="text/javascript"></script>
    <%@include file="/WEB-INF/jsp/include/viewHeader.jsp" %>

    <div class="page-header header-filter" data-parallax="true" filter-color="rose" style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5)%>.jpg');">
        <div class="container">
            <h1 class="text-center title">Place Your Order</h1>
        </div>
    </div>

    <div class="section section-gray">
        <div class="container">
            <div class="section">
                <h3 class="text-primary text-uppercase">Order</h3>
                <form:form commandName="order">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class="text-primary text-uppercase">Your Information</span>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="name">Name</label> <form:errors path="cart.customer.customerName" cssStyle="color:#EA1E63;" />
                                <form:input path="cart.customer.customerName" type="text" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Email</label> <form:errors path="cart.customer.customerEmail" cssStyle="color:#EA1E63;" />
                                <form:input path="cart.customer.customerEmail" type="email" value="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="name">Phone Number</label> <form:errors path="cart.customer.customerPhone" cssStyle="color:#EA1E63;" />
                                <form:input path="cart.customer.customerPhone" type="text" value="" class="form-control" />
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
                                    <label for="name">Apartment Number</label> <form:errors path="cart.customer.billingAddress.apartmentNumber" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.apartmentNumber" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Street Name</label> <form:errors path="cart.customer.billingAddress.streetName" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.streetName" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">City</label> <form:errors path="cart.customer.billingAddress.city" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.city" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">State/Province</label> <form:errors path="cart.customer.billingAddress.state" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.state" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Country</label> <form:errors path="cart.customer.billingAddress.country" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.country" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Postal Code</label> <form:errors path="cart.customer.billingAddress.postalCode" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.billingAddress.postalCode" type="text" value="" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                                <input type="hidden" name="_flowExecutionKey" />
                </div>
                                <input type="submit" value="Next"  name="_eventId_customerInfoCollected" class="btn btn-primary btn-round" />
                                <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
        </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class=""
        </form:form>
        <hr>
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
<script src="<c:url value="/resources/js/material-kit.js?v=1.2.1"/>" type="text/javascript"/></script>
</body>

</html>
