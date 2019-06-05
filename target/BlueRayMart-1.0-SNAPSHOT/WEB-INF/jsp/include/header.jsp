<%-- 
    Document   : header
    Created on : Apr 13, 2019, 10:33:20 AM
    Author     : NanoX
--%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP OK</title>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
          <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


</head>
<body class="ecommerce-page">
    <nav class="navbar navbar-default navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll="100"
         id="sectionsNav">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="">BlueRay Mart</a>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/">
                            <i class="material-icons">home</i> Home
                        </a>
                    </li>
                    <li>
                        <a href="/">
                            <i class="material-icons">info</i> About Us
                        </a>
                    </li>
                    <li>
                        <a href="/">
                            <i class="material-icons">message</i> Contact Us
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="material-icons">view_carousel</i> Examples
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-with-icons">
                            <li>
                                <a href="../examples/about-us.html">
                                    <i class="material-icons">account_balance</i> About Us
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li>
                        <a href="/">
                            Sign In
                        </a>
                    </li>
                    <li class="button-container">
                        <a href="" target="_blank" class="btn btn-primary">
                            Sign Up
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="page-header header-filter header-small" data-parallax="true"
         style="background-image: url('../assets/img/examples/ecommerce-tips2.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="brand">
                        <h1 class="title">BlueRay Mart</h1>
                        <h4>Free global delivery for all movies. Use coupon <b>uwuLife</b> for an extra 25% Off</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>