<%@page import="java.util.List"%>
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
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Womens :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap_1.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
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
                <h3>Women's Wear</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- mens -->
        <div class="men-wear">
            <div class="container">
                <div class="col-md-4 products-left">
                    <div class="filter-price">
                        <h3>Filter By Price</h3>
                        <ul class="dropdown-menu6">
                            <li>                
                                <div id="slider-range"></div>							
                                <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                            </li>			
                        </ul>
                        <!---->
                        <script type='text/javascript'>//<![CDATA[ 
                            $(window).load(function () {
                                $("#slider-range").slider({
                                    range: true,
                                    min: 0,
                                    max: 9000,
                                    values: [1000, 7000],
                                    slide: function (event, ui) {
                                        $("#amount").val("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
                                    }
                                });
                                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                            });//]]>  

                        </script>
                        <script type="text/javascript" src="js/jquery-ui.js"></script>
                        <!---->
                    </div>
                    <div class="css-treeview">
                        <h4>Categories</h4>
                        <ul class="tree-list-pad">
                            <li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><span></span>Women's Wear</label>
                                <ul>
                                    <li><input type="checkbox" id="item-0-0" /><label for="item-0-0">Ethinic Wear</label>
                                        <ul>
                                            <li><a href="womens.jsp">Sarees</a></li>
                                            <li><a href="womens.jsp">Chudidars</a></li>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox"  id="item-0-1" /><label for="item-0-1">Party Wear</label>
                                        <ul>
                                            <li><a href="womens.jsp">Sarees</a></li>
                                            <li><a href="womens.jsp">Chudidars</a></li>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox"  id="item-0-2" /><label for="item-0-2">Casual Wear</label>
                                        <ul>
                                            <li><a href="womens.jsp">Sarees</a></li>
                                            <li><a href="womens.jsp">Chudidars</a></li>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><input type="checkbox" id="item-1" checked="checked" /><label for="item-1">Best Collections</label>
                                <ul>
                                    <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">New Arrivals</label>
                                        <ul>

                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2">Best Offers</label>
                                <ul>
                                    <li><input type="checkbox"  id="item-2-0" /><label for="item-2-0">Summer Discount Sales</label>
                                        <ul>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox" id="item-2-1" /><label for="item-2-1">Exciting Offers</label>
                                        <ul>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox" id="item-2-2" /><label for="item-2-2">Flat Discounts</label>
                                        <ul>
                                            <li><a href="womens.jsp">Wedges</a></li>
                                            <li><a href="womens.jsp">Tops</a></li>
                                            <li><a href="womens.jsp">Perfumes</a></li>
                                            <li><a href="womens.jsp">Caps</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="community-poll">
                        <h4>Community Poll</h4>
                        <div class="swit form">	
                            <form>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" checked=""><i></i>More convenient for shipping and delivery</label> </div></div>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Lower Price</label> </div></div>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Track your item</label> </div></div>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Bigger Choice</label> </div></div>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>More colors to choose</label> </div></div>	
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Secured Payment</label> </div></div>
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Money back guaranteed</label> </div></div>	
                                <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Others</label> </div></div>		
                                <input type="submit" value="SEND">
                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-8 products-right">
                    <h5>Product Compare(0)</h5>
                    <div class="sort-grid">
                        <div class="sorting">
                            <h6>Sort By</h6>
                            <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                                <option value="null">Default</option>
                                <option value="null">Name(A - Z)</option> 
                                <option value="null">Name(Z - A)</option>
                                <option value="null">Price(High - Low)</option>
                                <option value="null">Price(Low - High)</option>	
                                <option value="null">Model(A - Z)</option>
                                <option value="null">Model(Z - A)</option>					
                            </select>
                            <div class="clearfix"></div>
                        </div>
                        <div class="sorting">
                            <h6>Showing</h6>
                            <select id="country2" onchange="change_country(this.value)" class="frm-field required sect">
                                <option value="null">7</option>
                                <option value="null">14</option> 
                                <option value="null">28</option>					
                                <option value="null">35</option>								
                            </select>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="men-wear-top">
                        <script src="js/responsiveslides.min.js"></script>
                        <script>
                                // You can also use "$(window).load(function() {"
                                $(function () {
                                    // Slideshow 4
                                    $("#slider3").responsiveSlides({
                                        auto: true,
                                        pager: true,
                                        nav: false,
                                        speed: 500,
                                        namespace: "callbacks",
                                        before: function () {
                                            $('.events').append("<li>before event fired.</li>");
                                        },
                                        after: function () {
                                            $('.events').append("<li>after event fired.</li>");
                                        }
                                    });
                                });
                        </script>
                        <div  id="top" class="callbacks_container">
                            <ul class="rslides" id="slider3">
                                <li>
                                    <img class="img-responsive" src="images/men21.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men11.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men21.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men11.jpg" alt=" "/>
                                </li>

                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="men-wear-bottom">
                        <div class="col-sm-4 men-wear-left">
                            <img class="img-responsive" src="images/men31.jpg" alt=" " />
                        </div>
                        <div class="col-sm-8 men-wear-right">
                            <h4>Exclusive Women's Collections</h4>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
                                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae 
                                ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
                                explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                                odit aut fugit. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-4 product-men no-pad-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="images/a1.png" alt="" class="pro-image-front">
                                <img src="images/a1.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">T shirt</a></h4>
                                <div class="info-product-price">
                                    <span class="item_price">$45.99</span>
                                    <del>$69.71</del>
                                </div>
                                <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 product-men no-pad-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="images/w1.png" alt="" class="pro-image-front">
                                <img src="images/w1.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">Wedges</a></h4>
                                <div class="info-product-price">
                                    <span class="item_price">$45.99</span>
                                    <del>$69.71</del>
                                </div>
                                <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 product-men no-pad-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="images/w3.png" alt="" class="pro-image-front">
                                <img src="images/w3.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">Hand Bag</a></h4>
                                <div class="info-product-price">
                                    <span class="item_price">$45.99</span>
                                    <del>$69.71</del>
                                </div>
                                <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
                <div class="single-pro">
                    <input type='hidden' id='current_page' />
                    <input type='hidden' id='show_per_page' />
                    <div id='content'>
                        <%
                            String tagesx = request.getParameter("tages");
                            Products listSP = new Products();
                            List<Product> list = listSP.showkindProductandtag("Womens", tagesx);
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
        <!-- //mens -->
        <!-- //product-nav -->
        <div class="coupons">
            <div class="container">
                <div class="coupons-grids text-center">
                    <div class="col-md-3 coupons-gd">
                        <h3>Buy your product in a simple way</h3>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <h4>LOGIN TO YOUR ACCOUNT</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                        <h4>SELECT YOUR ITEM</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                        <h4>MAKE PAYMENT</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="clearfix"> </div>
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
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
