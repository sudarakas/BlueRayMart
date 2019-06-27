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
    <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
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
            <div class="section" ng-app="cartApp">
                <div ng-controller='cartCtrl' ng-init="initCartId('${cartId}')">
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
                                                    <td><a rel="tooltip" class="btn btn-danger btn-round" ng-click="removeFromCart({{item.movie.movieId}})">
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

                <div class="features text-center">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="info">
                                <div class="icon icon-info">
                                    <i class="material-icons">local_shipping</i>
                                </div>
                                <h4 class="info-title">2 Days Delivery </h4>
                                <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="info">
                                <div class="icon icon-success">
                                    <i class="material-icons">verified_user</i>
                                </div>
                                <h4 class="info-title">Refundable Policy</h4>
                                <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="info">
                                <div class="icon icon-rose">
                                    <i class="material-icons">favorite</i>
                                </div>
                                <h4 class="info-title">Popular Item</h4>
                                <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
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
    <script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <script src="<c:url value="/resources/js/material-kit.js?v=1.2.1"/>" type="text/javascript"/></script>
<script type="text/javascript">
                                                    $().ready(function () {

                                                        materialKitDemo.initContactUs2Map();
                                                    });
</script>
</body>

</html>
