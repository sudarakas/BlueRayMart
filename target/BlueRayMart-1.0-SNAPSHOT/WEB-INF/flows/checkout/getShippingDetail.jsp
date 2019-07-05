<%-- 
    Document   : getShippingDetail
    Created on : Jul 5, 2019, 2:51:03 PM
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
        
    </div>

    <div class="section section-gray">
        <div class="container">
            <div class="section">
                <h3 class="text-primary text-uppercase">Shipping Address</h3>
                <form:form commandName="order">
                    <div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <span class="text-primary text-uppercase">Shipping Information</span>
                            </div>
                            <div class="panel-body">   
                                <div class="form-group">
                                    <label for="name">Apartment Number</label> <form:errors path="cart.customer.shippingAddress.apartmentNumber" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.apartmentNumber" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Street Name</label> <form:errors path="cart.customer.shippingAddress.streetName" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.streetName" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">City</label> <form:errors path="cart.customer.shippingAddress.city" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.city" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">State/Province</label> <form:errors path="cart.customer.shippingAddress.state" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.state" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Country</label> <form:errors path="cart.customer.shippingAddress.country" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.country" type="text" value="" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="name">Postal Code</label> <form:errors path="cart.customer.shippingAddress.postalCode" cssStyle="color:#EA1E63;" />
                                    <form:input path="cart.customer.shippingAddress.postalCode" type="text" value="" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="_flowExecutionKey" />
                </div>
                <button class="btn btn-warning" name="_eventId_backToCollectCustomerInfo">Back</button>
                <input type="submit" value="Next"  name="_eventId_shippingDetailCollected" class="btn btn-primary" />
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
