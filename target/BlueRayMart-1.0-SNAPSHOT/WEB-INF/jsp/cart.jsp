<%-- 
    Document   : cart
    Created on : Jun 18, 2019, 9:49:51 PM
    Author     : NanoX
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/controller.js"/>" type="text/javascript"></script>
    <%@include file="/WEB-INF/jsp/include/viewHeader.jsp" %>

    <div class="page-header header-filter" data-parallax="true" filter-color="rose" style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5)%>.jpg');">
        <div class="container">
            <div class="row title-row">
                <div class="brand text-center">
                    <h1 class="title">BlueRay Mart</h1>
                    <h4>Free global delivery for all movies. Use coupon <b>uwuLife</b> for an extra 25% Off</h4>
                    <a href="/movie/movieList" target="" class="btn btn-rose">
                        Shop More
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="section section-gray">
        <div class="container">
            <div class="section" ng-app="cartApp">
                <div ng-controller='cartCtrl' ng-init="initCartId('${cartId}')">
                    <div class="distable">

                        <div id="tables">
                            <div class="title">
                                <h3>Cart</h3>
                            </div>
                            <div class="text-right">
                                <a ng-click="clearCart()" class="btn btn-danger">Clear Cart</a>
                                <a href="<spring:url value="/order/${cartId}"/>" class="btn btn-white">Checkout</a>
                                <h5>Total: {{returnSubTotal()}}</h5>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Movie Cart</h4>
                                </div>
                                <div class="col-md-12">

                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>Movie</th>
                                                    <th>Unit Price</th>
                                                    <th>Qty</th>
                                                    <th>Total Price</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody> 
                                                <tr ng-repeat="item in cart.cartItems">
                                                    <td class="text-center">#</td>
                                                    <td>{{item.movie.movieName}}</td>
                                                    <td>{{item.movie.moviePrice}}</td>
                                                    <td>{{item.quantity}}</td>
                                                    <td>{{item.totalPrice}}</td>
                                                    <td><a class="btn btn-danger btn-round" ng-click="removeFromCart(item.movie.movieId)">
                                                            <i class="material-icons">close</i>
                                                        </a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="features text-center">
                    <div class="row">
                        <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-info">
                                <i class="material-icons">local_shipping</i>
                            </div>
                            <h4 class="info-title">2 Days Delivery </h4>
                            <p>Deliver with maximum 2 day in local postal addresses and maximum 14 days to Asian countries.</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-success">
                                <i class="material-icons">verified_user</i>
                            </div>
                            <h4 class="info-title">Refundable Policy</h4>
                            <p>Full refunded will be provided with 14 days request.</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-rose">
                                <i class="material-icons">favorite</i>
                            </div>
                            <h4 class="info-title">Popular Items</h4>
                            <p>World No 1 Quality Digital Copies will be provided with trust</p>
                        </div>
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
    <script src="<c:url value="/resources/js/material-kit.js?v=1.2.1"/>" type="text/javascript"/></script>
</body>

</html>
