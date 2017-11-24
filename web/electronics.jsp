<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Electronics :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap_1.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/pagedevide.js" type="text/javascript"></script>
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
                <!-- //banner-top -->
                <!-- banner -->
                <div class="page-head">
                    <div class="container">
                        <h3>Electronics</h3>
                    </div>
                </div>
                <!-- //banner -->
                <!-- Electronics -->
                <div class="electronics">
                    <div class="container">
                        <div class="col-md-8 electro-left text-center">
                            <div class="electro-img-left mask">
                                <div class="content-grid-effect slow-zoom vertical">
                                    <div class="img-box"><img src="images/watch.jpg" alt="image" class="img-responsive zoom-img"></div>
                                    <div class="info-box">
                                        <div class="info-content electro-text simpleCart_shelfItem">
                                            <h4>Branded Watches</h4>
                                            <span class="separator"></span>
                                            <p><span class="item_price">$500</span></p>
                                            <span class="separator"></span>
                                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="electro-img-btm-left mask">
                                <div class="content-grid-effect slow-zoom vertical">
                                    <div class="img-box"><img src="images/e1.jpg" alt="image" class="img-responsive zoom-img"></div>
                                    <div class="info-box">
                                        <div class="info-content electro-text simpleCart_shelfItem">
                                            <h4>Mobiles</h4>
                                            <span class="separator"></span>
                                            <p><span class="item_price">$500</span></p>
                                            <span class="separator"></span>
                                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="electro-img-btm-right mask">
                                <div class="content-grid-effect slow-zoom vertical">
                                    <div class="img-box"><img src="images/e2.jpg" alt="image" class="img-responsive zoom-img"></div>
                                    <div class="info-box">
                                        <div class="info-content electro-text simpleCart_shelfItem">
                                            <h4>Branded Watches</h4>
                                            <span class="separator"></span>
                                            <p><span class="item_price">$500</span></p>
                                            <span class="separator"></span>
                                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-4 electro-right text-center">
                            <div class="electro-img-rt mask">
                                <div class="content-grid-effect slow-zoom vertical">
                                    <div class="img-box"><img src="images/e4.jpg" alt="image" class="img-responsive zoom-img"></div>
                                    <div class="info-box">
                                        <div class="info-content electro-text simpleCart_shelfItem">
                                            <h4>Mobiles</h4>
                                            <span class="separator"></span>
                                            <p><span class="item_price">$500</span></p>
                                            <span class="separator"></span>
                                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="ele-bottom-grid">
                            <h3><span>Latest </span>Collections</h3>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                            <input type='hidden' id='current_page' />
                            <input type='hidden' id='show_per_page' />
                            <div id='content'>
                        <%
                            Products listSP = new Products();
                            List<Product> list = listSP.showkindProductandtag("Electronic", "Electronic");
                            String requestURL = request.getRequestURL().toString();
                            String[] parturl = requestURL.split("/");
                            for (Product sp : list) {
                                out.print("<form action=\"ControllerCartBean\">");
                                out.print("<input type=\"hidden\" name=\"curpage\" value=\"" + parturl[parturl.length - 1] + "\">");
                                out.print("<div class=\"col-md-3 product-men\">");
                                out.print("<div class=\"men-pro-item simpleCart_shelfItem\">");
                                out.print("<div class=\"men-thumb-item\">");
                                out.print("<img src=\"" + sp.getPicimg() + "\" alt=\"productimg\" class=\"pro-image-front\">");
                                out.print("<img src=\"" + sp.getPicimg() + "\" alt=\"productimg\" class=\"pro-image-back\">");
                                out.print("<div class=\"men-cart-pro\">");
                                out.print("<div class=\"inner-men-cart-pro\">");
                                out.println("<input type=\"submit\" name=\"action\" value=\"Quick View\" class=\"link-product-add-cart\">");
                                out.print("</div></div>");
                                out.print("<span class=\"product-new-top\">New</span>");
                                out.print("</div><div class=\"item-info-product\">");
                                out.print("<h4><a href=\"#\">" + sp.getName() + "</a></h4>");
                                out.print("<div class=\"info-product-price\">");
                                out.print("<span class=\"item_price\">" + sp.getrealmn(sp.getPrice(), sp.getDiscout()) + "</span>");
                                out.print("<del>$" + sp.getPrice() + "</del></div>");
                                out.print("<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                        + "<input type=\"hidden\" name=\"imgsource\" value='" + sp.getPicimg() + "'>"
                                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getrealmn(sp.getPrice(), sp.getDiscout()) + "'>"
                                        + "<input type=\"hidden\" name=\"txtDes\" value='" + sp.getDescription() + "'>");
                                out.print("<input type=\"submit\" class=\"a\" name=\"action\" value=\"Add To Cart\"/></div></div></div></form>");
                            }
                        %>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="pagination-grid text-right">
                    <ul class="pagination paging">
                        <div id="page_navigation" ></div>
                    </ul>
                </div>
            </div>
        </div>
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="col-md-3 footer-left">
                    <h2><a href="index.jsp"><img src="images/logo3.jpg" alt=" " /></a></h2>
                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                        sit amet, consectetur, adipisci velit, sed quia non 
                        numquam eius modi tempora incidunt ut labore 
                        et dolore magnam aliquam quaerat voluptatem.</p>
                </div>
                <div class="col-md-9 footer-right">
                    <div class="col-sm-6 newsleft">
                        <h3>SIGN UP FOR NEWSLETTER !</h3>
                    </div>
                    <div class="col-sm-6 newsright">
                        <form>
                            <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';
                                    }" required="">
                            <input type="submit" value="Submit">
                        </form>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sign-grds">
                        <div class="col-md-4 sign-gd">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="mens.jsp">Men's Wear</a></li>
                                <li><a href="womens.jsp">Women's Wear</a></li>
                                <li><a href="electronics.jsp">Electronics</a></li>
                                <li><a href="codes.jsp">Short Codes</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 sign-gd-two">
                            <h4>Store Information</h4>
                            <ul>
                                <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : 1234k Avenue, 4th block, <span>Newyork City.</span></li>
                                <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">info@example.com</a></li>
                                <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +1234 567 567</li>
                            </ul>
                        </div>
                        <div class="col-md-4 sign-gd flickr-post">
                            <h4>Flickr Posts</h4>
                            <ul>
                                <li><a href="single.jsp"><img src="images/b15.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b16.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b17.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b18.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b15.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b16.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b17.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b18.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/b15.jpg" alt=" " class="img-responsive" /></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <p class="copy-right">&copy 2016 Smart Shop. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
            </div>
        </div>
        <!-- //footer -->
        <!-- login -->
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body modal-spa">
                        <div class="login-grids">
                            <div class="login">
                                <div class="login-bottom">
                                    <h3>Sign up for free</h3>
                                    <form action="ControllerCustomer">
                                        <div class="sign-up">
                                            <h4>Username :</h4>
                                            <input type="text" name="txtun" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                        </div>
                                        <div class="sign-up">
                                            <h4>Full Name :</h4>
                                            <input type="text" name="txtfn" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                        </div>
                                        <div class="sign-up">
                                            <h4>Email :</h4>
                                            <input type="email" name="txtemail" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Email';
                                                    }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Password :</h4>
                                            <input type="password" name="pw" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <input type="submit" value="REGISTER NOW" name="action">
                                        </div>

                                    </form>
                                </div>
                                <div class="login-right">
                                    <h3>Sign in with your account</h3>
                                    <form action="ControllerCustomer">
                                        <div class="sign-in">
                                            <h4>Email :</h4>
                                            <input type="text" name="txtUsername" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                        </div>
                                        <div class="sign-in">
                                            <h4>Password :</h4>
                                            <input type="password" value="Password" name="txtPassword" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">
                                            <a href="#">Forgot password?</a>
                                        </div>
                                        <div class="single-bottom">
                                            <input type="checkbox"  id="brand" value="">
                                            <label for="brand"><span></span>Remember Me.</label>
                                        </div>
                                        <div class="sign-in">
                                            <input type="submit" value="SIGN IN" name="action">
                                        </div>
                                        <h5 style="color:red;margin-top: 10px;margin-left: 55px;">${sessionScope.Error}</h5>
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //login -->
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
