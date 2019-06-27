<%-- 
    Document   : viewHeader
    Created on : Apr 13, 2019, 11:09:14 AM
    Author     : NanoX
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${movie.movieName}</title>
    
    <script src="<c:url value="/resources/js/angular.min.js" />" type="text/javascript"></script>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" />
          <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


</head>
<body class="product-page">
    <%@include  file="/WEB-INF/jsp/include/nav.jsp" %>