<%-- 
    Document   : nav
    Created on : Jun 14, 2019, 11:40:14 PM
    Author     : NanoX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <li>
                            <a href="<c:url value="/admin"/>">
                                <i class='material-icons'>person</i> Admin Panel
                            </a>
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
