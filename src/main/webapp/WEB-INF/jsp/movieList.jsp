<%-- 
    Document   : home
    Created on : Apr 11, 2019, 12:59:35 AM
    Author     : NanoX
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@include file="/WEB-INF/jsp/include/header.jsp" %>

        <div class="main main-raised">
            <div class="section">
                <div class="container">
                    <div class="col-md-12">
                        <div class="row">
                            <c:forEach items="${movies}" var="movie">
                                <div class="col-md-4">
                                    <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                        <div class="card-image">
                                            <a href="#">
                                                <img src="https://dummyimage.com/600x400/000/fff" alt="..."/>
                                            </a>
                                        </div>
                                        <div class="card-content">
                                            <a href="#">
                                                <h4 class="card-title">${movie.movieName}</h4>
                                            </a>
                                            <p class="description">
                                                <strong>Genre: </strong> ${movie.movieGenre} <br>
                                                <strong>Status: </strong> ${movie.movieStatus}
                                            </p>
                                            <p class="description">
                                                ${movie.movieDescription}
                                            </p>
                                            <div class="footer">
                                                <div class="price-container">
                                                    <span class="price"> LKR ${movie.moviePrice}</span>
                                                </div>

                                                <button class="btn btn-rose pull-right" rel="tooltip" title="Added to Cart" data-placement="top">
                                                    Buy Now
                                                </button>
                                            </div>
                                        </div>
                                    </div> <!-- end card -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end-main-raised -->

        <!--        <div class="section section-blog">
                    <div class="container">
                        <h2 class="section-title">Upcoming Movies</h2>
                        <div class="row">
                            <div class="col-md-4">
        
                                <div class="card card-blog">
                                    <div class="card-image">
                                        <a href="#pablo">
                                            <img src="../assets/img/dg6.jpg" alt="">
                                        </a>
                                        <div class="colored-shadow"
                                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                                        </div>
                                        <div class="ripple-container"></div>
                                    </div>
                                    <div class="card-content">
                                        <h6 class="category text-rose">Trends</h6>
                                        <h4 class="card-title">
                                            <a href="#pablo">Learn how to wear your scarf with a floral print shirt</a>
                                        </h4>
                                        <p class="card-description">
                                            Don't be scared of the truth because we need to restart the human foundation in truth
                                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                        </p>
                                        <a href="#pablo" class="btn btn-rose btn-round">
                                            <i class="material-icons">subject</i> More
                                        </a>
                                    </div>
        
                                </div>
        
                            </div>
        
                            <div class="col-md-4">
        
                                <div class="card card-blog">
                                    <div class="card-image">
                                        <a href="#pablo">
                                            <img src="../assets/img/dg10.jpg" alt="">
                                        </a>
                                        <div class="colored-shadow"
                                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                                        </div>
                                        <div class="ripple-container"></div>
                                    </div>
                                    <div class="card-content">
                                        <h6 class="category text-rose">Fashion week</h6>
                                        <h4 class="card-title">
                                            <a href="#pablo">Katy Perry was wearing a Dolce & Gabanna arc dress</a>
                                        </h4>
                                        <p class="card-description">
                                            Don't be scared of the truth because we need to restart the human foundation in truth
                                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                        </p>
                                        <a href="#pablo" class="btn btn-rose btn-round">
                                            <i class="material-icons">subject</i> More
                                        </a>
                                    </div>
                                </div>
        
                            </div>
        
                            <div class="col-md-4">
        
                                <div class="card card-blog">
                                    <div class="card-image">
                                        <a href="#pablo">
                                            <img src="../assets/img/dg9.jpg" alt="">
                                        </a>
                                        <div class="colored-shadow"
                                             style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;">
                                        </div>
                                        <div class="ripple-container"></div>
                                    </div>
                                    <div class="card-content">
                                        <h6 class="category text-rose">Fashion week</h6>
                                        <h4 class="card-title">
                                            <a href="#pablo">Check the latest fashion events and which are the trends</a>
                                        </h4>
                                        <p class="card-description">
                                            Don't be scared of the truth because we need to restart the human foundation in truth
                                            And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                        </p>
                                        <a href="#pablo" class="btn btn-rose btn-round">
                                            <i class="material-icons">subject</i> More
                                        </a>
                                    </div>
                                </div>
        
                            </div>
        
                        </div>
                    </div>
                </div>-->
        <!-- section -->

        <div class="subscribe-line subscribe-line-image" data-parallax="true"
             style="background-image: url('../assets/img/examples/ecommerce-header.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="text-center">
                            <h3 class="title">Subscribe to our Newsletter</h3>
                            <p class="description">
                                Join our newsletter and get new movie release news in your inbox every week! We hate spam
                                too, so no worries about this.
                            </p>
                        </div>

                        <div class="card card-raised card-form-horizontal">
                            <div class="card-content">
                                <form method="" action="">
                                    <div class="row">
                                        <div class="col-sm-8">

                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">mail</i>
                                                </span>
                                                <div class="form-group is-empty">
                                                    <input type="email" value="" placeholder="Your Email..."
                                                           class="form-control"><span class="material-input"></span></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <button type="button" class="btn btn-rose btn-block">Subscribe</button>
                                        </div>
                                    </div>
                                </form>
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
