<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap_1.css" rel="stylesheet" type="text/css" media="all" />

        <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

        <script src="js/simpleCart.min.js"></script>

        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

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
                <div class="banner-grid">
                    <div id="visual">
                        <div class="slide-visual">
                            <!-- Slide Image Area (1000 x 424) -->
                            <ul class="slide-group">
                                <li><img class="img-responsive" src="images/ba1.jpg" alt="Dummy Image" /></li>
                                <li><img class="img-responsive" src="images/ba2.jpg" alt="Dummy Image" /></li>
                                <li><img class="img-responsive" src="images/ba3.jpg" alt="Dummy Image" /></li>
                            </ul>

                            <!-- Slide Description Image Area (316 x 328) -->
                            <div class="script-wrap">
                                <ul class="script-group">
                                    <li><div class="inner-script"><img class="img-responsive" src="images/baa1.jpg" alt="Dummy Image" /></div></li>
                                    <li><div class="inner-script"><img class="img-responsive" src="images/baa2.jpg" alt="Dummy Image" /></div></li>
                                    <li><div class="inner-script"><img class="img-responsive" src="images/baa3.jpg" alt="Dummy Image" /></div></li>
                                </ul>
                                <div class="slide-controller">
                                    <a href="#" class="btn-prev"><img src="images/btn_prev.png" alt="Prev Slide" /></a>
                                    <a href="#" class="btn-play"><img src="images/btn_play.png" alt="Start Slide" /></a>
                                    <a href="#" class="btn-pause"><img src="images/btn_pause.png" alt="Pause Slide" /></a>
                                    <a href="#" class="btn-next"><img src="images/btn_next.png" alt="Next Slide" /></a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <script type="text/javascript" src="js/pignose.layerslider.js"></script>
                    <script type="text/javascript">
                                    //<![CDATA[
                                    $(window).load(function () {
                                        $('#visual').pignoseLayerSlider({
                                            play: '.btn-play',
                                            pause: '.btn-pause',
                                            next: '.btn-next',
                                            prev: '.btn-prev'
                                        });
                                    });
                                    //]]>
                    </script>

                </div>
                <!-- //banner -->
                <!-- content -->

                <div class="new_arrivals">
                    <div class="container">
                        <h3><span>new </span>arrivals</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                        <div class="new_grids">
                            <div class="col-md-4 new-gd-left">
                                <img src="images/wed1.jpg" alt=" " />
                                <div class="wed-brand simpleCart_shelfItem">
                                    <h4>Wedding Collections</h4>
                                    <h5>Flat 50% Discount</h5>
                                    <p><i>$250</i> <span class="item_price">$500</span><a class="item_add hvr-outline-out button2" href="#">add to cart </a></p>
                                </div>
                            </div>
                            <div class="col-md-4 new-gd-middle">
                                <div class="new-levis">
                                    <div class="mid-img">
                                        <img src="images/levis1.png" alt=" " />
                                    </div>
                                    <div class="mid-text">
                                        <h4>up to 40% <span>off</span></h4>
                                        <a class="hvr-outline-out button2" href="product.jsp">Shop now </a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="new-levis">
                                    <div class="mid-text">
                                        <h4>up to 50% <span>off</span></h4>
                                        <a class="hvr-outline-out button2" href="product.jsp">Shop now </a>
                                    </div>
                                    <div class="mid-img">
                                        <img src="images/dig.jpg" alt=" " />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-4 new-gd-left">
                                <img src="images/wed2.jpg" alt=" " />
                                <div class="wed-brandtwo simpleCart_shelfItem">
                                    <h4>Spring / Summer</h4>
                                    <p>Shop Men</p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- //content -->

                <!-- content-bottom -->

                <div class="content-bottom">
                    <div class="col-md-7 content-lgrid">
                        <div class="col-sm-6 content-img-left text-center">
                            <div class="content-grid-effect slow-zoom vertical">
                                <div class="img-box"><img src="images/p1.jpg" alt="image" class="img-responsive zoom-img"></div>
                                <div class="info-box">
                                    <div class="info-content simpleCart_shelfItem">
                                        <h4>Mobiles</h4>
                                        <span class="separator"></span>
                                        <p><span class="item_price">$500</span></p>
                                        <span class="separator"></span>
                                        <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 content-img-right">
                            <h3>Special Offers and 50%<span>Discount On</span> Mobiles</h3>
                        </div>

                        <div class="col-sm-6 content-img-right">
                            <h3>Buy 1 get 1  free on <span> Branded</span> Watches</h3>
                        </div>
                        <div class="col-sm-6 content-img-left text-center">
                            <div class="content-grid-effect slow-zoom vertical">
                                <div class="img-box"><img src="images/p2.jpg" alt="image" class="img-responsive zoom-img"></div>
                                <div class="info-box">
                                    <div class="info-content simpleCart_shelfItem">
                                        <h4>Watches</h4>
                                        <span class="separator"></span>
                                        <p><span class="item_price">$250</span></p>
                                        <span class="separator"></span>
                                        <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-5 content-rgrid text-center">
                        <div class="content-grid-effect slow-zoom vertical">
                            <div class="img-box"><img src="images/p4.jpg" alt="image" class="img-responsive zoom-img"></div>
                            <div class="info-box">
                                <div class="info-content simpleCart_shelfItem">
                                    <h4>Shoes</h4>
                                    <span class="separator"></span>
                                    <p><span class="item_price">$150</span></p>
                                    <span class="separator"></span>
                                    <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //content-bottom -->
                <!-- product-nav -->

                <div class="product-easy">
                    <div class="container">

                        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                        <script type="text/javascript">
                                    $(document).ready(function () {
                                        $('#horizontalTab').easyResponsiveTabs({
                                            type: 'default', //Types: default, vertical, accordion           
                                            width: 'auto', //auto or any width like 600px
                                            fit: true   // 100% fit in a container
                                        });
                                    });

                        </script>
                        <div class="sap_tabs">
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                <ul class="resp-tabs-list">
                                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
                                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Special Offers</span></li> 
                                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Collections</span></li> 
                                </ul>				  	 
                                <div class="resp-tabs-container">
                                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                        <input type='hidden' id='current_page' />
                                        <input type='hidden' id='show_per_page' />
                                        <div id='content'>
                                    <%
                                        Products listSP = new Products();
                                        String requestURL = request.getRequestURL().toString();
                                        String[] parturl = requestURL.split("/");
                                        List<Product> list = listSP.showProduct("");
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
                                            out.print("<input type=\"hidden\" name=\"txtreal\" value='" + sp.getPrice() + "'><del>$" + sp.getPrice() + "</del></div>");
                                            out.print("<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                                    + "<input type=\"hidden\" name=\"imgsource\" value='" + sp.getPicimg() + "'>"
                                                    + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                                    + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getrealmn(sp.getPrice(), sp.getDiscout()) + "'>"
                                                    + "<input type=\"hidden\" name=\"txtDes\" value='" + sp.getDescription() + "'>");
                                            out.print("<input type=\"submit\" class=\"a\" name=\"action\" value=\"Add To Cart\"/></div></div></div></form>");
                                        }
                                    %>
                                </div>
                                <div class="clearfix"></div>
                                <div class="pagination-grid text-right">
                                    <ul class="pagination paging">
                                        <div id="page_navigation"></div>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                <input type='hidden' id='current_page' />
                                <input type='hidden' id='show_per_page' />
                                <div id='content'>
                                    <%
                                        Products listSPh = new Products();
                                        List<Product> linh = listSPh.showtagProduct("Clothing");
                                        for (Product sp : linh) {
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
                                <div class="clearfix"></div>
                                <div class="pagination-grid text-right">
                                    <ul class="pagination paging">
                                        <div id="page_navigation"></div>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                <input type='hidden' id='current_page' />
                                <input type='hidden' id='show_per_page' />
                                <div id='content'>
                                    <%
                                        Products listSPha = new Products();
                                        List<Product> linhz = listSPha.showtagProduct("Electronic");
                                        for (Product sp : linhz) {
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
                                <div class="clearfix"></div>
                                <div class="pagination-grid text-right">
                                    <ul class="pagination paging">
                                        <div id="page_navigation"></div>
                                    </ul>
                                </div>
                            </div>	
                        </div>	
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
        <script src="js/bantop.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
