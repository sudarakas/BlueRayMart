<%-- 
    Document   : viewMovie
    Created on : Apr 13, 2019, 11:04:44 AM
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

    <div class="page-header header-filter" data-parallax="true" filter-color="rose" style="background-image: url('/resources/images/cover-<%= (int) (Math.random() * 5) %>.jpg');">
        <div class="container">
            <div class="row title-row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> 0 Items</button>
                </div>
            </div>
        </div>
    </div>

    <div class="section section-gray">
        <div class="container" ng-app="cartApp">
            <div class="main main-raised main-product">
                <div class="row">
                    <div class="col-md-6 col-sm-6">

                        <div class="tab-content">
                            <div class="tab-pane active" id="product-page2">
                                <img src="<c:url value="/resources/images/${movie.movieId}.png"/>" alt="..."/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h2 class="title"> ${movie.movieName} </h2>
                        <h4 class="text-rose"> ${movie.movieStatus} </h4>
                        <h3 class="main-price">LKR ${movie.moviePrice}</h3>
                        <div id="acordeon">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-border panel-default">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <h4 class="panel-title">
                                                Description
                                                <i class="material-icons">keyboard_arrow_down</i>
                                            </h4>
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <p>${movie.movieDescription}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-border panel-default">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-controls="collapseOne">
                                            <h4 class="panel-title">
                                                Movie Information
                                                <i class="material-icons">keyboard_arrow_down</i>
                                            </h4>
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <strong>Genre: </strong> ${movie.movieGenre} <br>
                                            <strong>Director:  </strong> ${movie.movieDirector} <br>
                                            <strong>Studio:  </strong> ${movie.movieStudio} <br>
                                            <strong>Release Date:  </strong> ${movie.movieReleaseDate} <br>
                                            <strong>Original Language:  </strong> ${movie.movieRunTime} <br>
                                            <strong>IMDB:  </strong> <a href="${movie.movieIMDB}" target="_blank">${movie.movieIMDB}</a>  <br>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-border panel-default">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-controls="collapseOne">
                                            <h4 class="panel-title">
                                                Digital Copy Detail
                                                <i class="material-icons">keyboard_arrow_down</i>
                                            </h4>
                                        </a>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <strong>Format:  </strong> ${movie.movieFormat} <br>
                                            <strong>Language: </strong> ${movie.movieLanguage} <br>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div><!--  end acordeon -->
                        <h3 class="text-rose">Available Stock:  ${movie.movieUnitinStock} </h3>
                        <div class="row pick-size">
                            <div class="col-md-6 col-sm-6">
                                <label>No of Copies</label>
                                <select class="selectpicker" data-style="select-with-transition" data-size="7">
                                    <option value="1">1 </option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                        <c:set var="role" scope="page" value="${param.role}"/>
                        <c:set var="url" scope="page" value="/movie/movieList"/>
                        <c:if test="${role='admin'}">
                            <c:set var="url" scope="page" value="/admin/inventory"/>
                       </c:if>
                        <div class="row text-right" ng-controller="cartCtrl">
                            <button class="btn btn-warning btn-round" rel="tooltip" onclick="window.open('<c:url value="${url}"/>','_self')" title="Back to Shop">Back &nbsp;<i class="material-icons">subject</i></button>
                            <button class="btn btn-rose btn-round" rel="tooltip" title="Added to Cart" ng-click="addToCart('${movie.movieId}','${100}')">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
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

    <%@include file="/WEB-INF/jsp/include/footer.jsp" %>
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

