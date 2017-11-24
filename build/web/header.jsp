<%-- 
    Document   : header
    Created on : Oct 9, 2017, 9:01:15 AM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- header -->
        <div class="header">
            <div class="container">
                <ul>
                    <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Free and Fast Delivery</li>
                    <li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Free shipping On all orders</li>
                    <li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="userprofile.jsp">${sessionScope.USER}</a></li>
                    <c:if test="${sessionScope.checkin=='imin'}"><li><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span><a href="ControllerCustomer?action=Logout">Log Out</a></li></c:if>
                </ul>
            </div>
        </div>
        <!-- //header -->
        <!-- header-bot -->
        <div class="header-bot">
            <div class="container">
                <div class="col-md-3 header-left">
                    <h1><a href="index.jsp"><img src="images/logo3.jpg"></a></h1>
                </div>
                <div class="col-md-6 header-middle">
                    <form action="ControllerCartBean">
                        <div class="search">
                            <input type="search" name="txtsearch" required="">
                        </div>
                        <div class="section_room">
                            <select id="country" name="cata" onchange="change_country(this.value)" class="frm-field required">
                                <option selected="" value="%">All categories</option>
                                <option value="Electronic">Electronics</option>  
                                <option value="Mens">Men's Wear</option>
                                <option  value="Womens">Women's Wear</option>
                            </select>
                        </div>
                        <div class="sear-sub">
                            <input type="submit" name="action" value=".">
                        </div>
                        <div class="clearfix"></div>
                    </form>
                </div>
                <div class="col-md-3 header-right footer-bottom">
                    <ul>
                         <li><a class="use1" <c:choose><c:when test="${sessionScope.checkin=='imin'}">href="userprofile.jsp"></c:when><c:otherwise>href="#" data-toggle="modal" data-target="#myModal4"></c:otherwise></c:choose><span>Login</span></a></li>
                        <li><a class="fb" href="#"></a></li>
                        <li><a class="twi" href="#"></a></li>
                        <li><a class="insta" href="#"></a></li>
                        <li><a class="you" href="#"></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //header-bot -->
        <!-- banner -->
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav menu__list">
                                    <li class="active menu__item menu__item--current"><a class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">men's wear <span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-6 multi-gd-img1 multi-gd-text ">
                                                    <a href="ControllerProduct?action=Mens&tages=Clothing"><img src="images/woo1.jpg" alt=" "/></a>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="ControllerProduct?action=Mens&tages=Clothing">Clothing</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Wallets">Wallets</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Footwear">Footwear</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Watches">Watches</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Accessories">Accessories</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Bags">Bags</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Hats">Hats</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="ControllerProduct?action=Mens&tages=Jewellery">Jewellery</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Sunglasses">Sunglasses</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Perfumes">Perfumes</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Beauty">Beauty</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Shirts">Shirts</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Sunglasses">Sunglasses</a></li>
                                                        <li><a href="ControllerProduct?action=Mens&tages=Swimwear">Swimwear</a></li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">women's wear <span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="ControllerProduct?action=Womens&tages=Clothing">Clothing</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Wallets">Wallets</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Wallets">Footwear</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Wallets">Watches</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Wallets">Accessories</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Bags">Bags</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Wallets">Hats</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="ControllerProduct?action=Womens&tages=Jewellery">Jewellery</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Sunglasses">Sunglasses</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Perfumes">Perfumes</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Beauty">Beauty</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Shirts">Shirts</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Sunglasses">Sunglasses</a></li>
                                                        <li><a href="ControllerProduct?action=Womens&tages=Swimwear">Swimwear</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6 multi-gd-img multi-gd-text ">
                                                    <a href="ControllerProduct?action=Womens&tages=Swimwear"><img src="images/woo.jpg" alt=" "/></a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class=" menu__item"><a class="menu__link" href="electronics.jsp">Electronics</a></li>
                                    <li class=" menu__item"><a class="menu__link" href="codes.jsp">Short Codes</a></li>
                                    <li class=" menu__item"><a class="menu__link" href="contact.jsp">contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>	
                </div>
                <div class="top_nav_right">
                    <div class="cart box_1">
                        <a href="checkout.jsp">
                            <h3> <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>

                            </h3>
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                    </div>	
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

    </body>
</html>
