<%-- 
    Document   : thankCustomer
    Created on : Jul 5, 2019, 3:30:49 PM
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
                <h3 class="text-primary text-uppercase">Thank you for your order!</h3>
            </div>
            <div class="container-wrapper">
                <div class="container">
                    <section>
                        <div class="jumbotron">
                            <div class="container">
                                <p>Your order will be shipped ASAP!</p>
                            </div>
                        </div>
                    </section>

                    <section class="container">
                        <p>
                            <a href="<spring:url value="/" />" class="btn btn-primary">Home</a>
                        </p>
                    </section>

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
