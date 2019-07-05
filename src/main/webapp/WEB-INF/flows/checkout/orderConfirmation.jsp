<%-- 
    Document   : orderConfirmation
    Created on : Jul 5, 2019, 3:05:31 PM
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
            <div class="row title-row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> 0 Items</button>
                </div>
            </div>
        </div>
    </div>

    <div class="section section-gray">
        <div class="container">
            <div class="section">
                <h3 class="text-primary text-uppercase">Order Confirmation</h3>
                <form:form commandName="order">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                    ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                    ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                    ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                    ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                    ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                    ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                    ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br>
                                    ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Movie</th>
                                        <th>#</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                        <tr>
                                            <td class="col-md-9"><em>${cartItem.movie.movieName}</em></td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.movie.moviePrice}</td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                        </tr>
                                    </c:forEach>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td class="text-right">
                                            <h4><strong>Sub Total: </strong></h4>
                                        </td>
                                        <td class="text-center text-danger">
                                            <h4><strong>$ ${order.cart.subTotal}</strong></h4>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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
