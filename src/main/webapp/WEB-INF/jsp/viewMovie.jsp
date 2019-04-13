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
    <%@include file="/WEB-INF/jsp/include/viewHeader.jsp" %>

    <div class="page-header header-filter" data-parallax="true" filter-color="rose" style="background-image: url('../assets/img/bg6.jpg');">
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
            <div class="main main-raised main-product">
                <div class="row">
                    <div class="col-md-6 col-sm-6">

                        <div class="tab-content">
                            <div class="tab-pane" id="product-page1">
                                <img src="../assets/img/examples/product1.jpg"/>
                            </div>
                            <div class="tab-pane active" id="product-page2">
                                <img src="../assets/img/examples/product2.jpg"/>
                            </div>
                            <div class="tab-pane" id="product-page3">
                                <img src="../assets/img/examples/product3.jpg"/>
                            </div>
                            <div class="tab-pane" id="product-page4">
                                <img src="../assets/img/examples/product4.jpg"/>
                            </div>
                        </div>
                        <ul class="nav flexi-nav" role="tablist" id="flexiselDemo1">
                            <li>
                                <a href="#product-page1" role="tab" data-toggle="tab" aria-expanded="false">
                                    <img src="../assets/img/examples/product1.jpg"/>
                                </a>
                            </li>
                            <li class="active">
                                <a href="#product-page2" role="tab" data-toggle="tab" aria-expanded="false">
                                    <img src="../assets/img/examples/product2.jpg"/>
                                </a>
                            </li>
                            <li>
                                <a href="#product-page3" role="tab" data-toggle="tab" aria-expanded="false">
                                    <img src="../assets/img/examples/product3.jpg"/>
                                </a>
                            </li>
                            <li>
                                <a href="#product-page4" role="tab" data-toggle="tab" aria-expanded="true">
                                    <img src="../assets/img/examples/product4.jpg"/>
                                </a>
                            </li>
                        </ul>
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
                                            <strong>IMDB:  </strong> ${movie.movieIMDB} <br>
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
                        <div class="row text-right">
                            <button class="btn btn-rose btn-round">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
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

            <div class="related-products">
                <h3 class="title text-center">You may also be interested in:</h3>

                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product1.jpg" />
                                </a>
                            </div>

                            <div class="card-content">
                                <h6 class="category text-rose">Trending</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Dolce & Gabbana</a>
                                </h4>
                                <div class="card-description">
                                    Dolce & Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$1,459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="Saved to Wishlist" class="btn btn-just-icon btn-simple btn-rose">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product3.jpg" />
                                </a>
                            </div>

                            <div class="card-content">
                                <h6 class="category text-muted">Popular</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Balmain</a>
                                </h4>
                                <div class="card-description">
                                    Balmain's mid-rise skinny jeans are cut with stretch to ensure they retain their second-skin fit but move comfortably.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="Save to Wishlist" class="btn btn-just-icon btn-simple btn-default">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product4.jpg" />
                                </a>
                            </div>

                            <div class="card-content">
                                <h6 class="category text-muted">Popular</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Balenciaga</a>
                                </h4>
                                <div class="card-description">
                                    Balenciaga's black textured-leather wallet is finished with the label's iconic 'Giant' studs. This is where you can...
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$590</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="Saved to Wishlist" class="btn btn-just-icon btn-simple btn-rose">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product2.jpg" />
                                </a>
                            </div>

                            <div class="card-content">
                                <h6 class="category text-rose">Trending</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Dolce & Gabbana</a>
                                </h4>
                                <div class="card-description">
                                    Dolce & Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$1,459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="Save to Wishlist" class="btn btn-just-icon btn-simple btn-default">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

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

