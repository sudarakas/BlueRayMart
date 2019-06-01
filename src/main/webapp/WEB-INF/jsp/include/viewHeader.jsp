<%-- 
    Document   : viewHeader
    Created on : Apr 13, 2019, 11:09:14 AM
    Author     : NanoX
--%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${movie.movieName}</title>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
          <link href="<c:url value="/resources/css/material-kit.css?v=1.2.1" />"rel="stylesheet"/>


</head>
<body class="product-page">
    <nav class="navbar navbar-white navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll="100">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">BlueRay Mart</a>
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
                    <li>
                        <a href="/">
                            Sign In
                        </a>
                    </li>
                    <li class="button-container">
                        <a href="" target="_blank">
                            Sign Up
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" class="btn btn-primary">
                            <i class="material-icons">shopping_cart</i> Buy Now
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>