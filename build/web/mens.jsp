<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page import="model.Product"%>
<%@page import="model.Product"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Mens :: w3layouts</title>
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
        <jsp:include page="header.jsp"/>
        <div class="page-head">
            <div class="container">
                <h3>Men's Wear</h3>
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
                            <li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><span></span>Men's Wear</label>
                                <ul>
                                    <li><input type="checkbox" id="item-0-0" /><label for="item-0-0">Ethinic Wear</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Caps</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                            <li><a href="mens.jsp">Trousers</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox"  id="item-0-1" /><label for="item-0-1">Party Wear</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Caps</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                            <li><a href="mens.jsp">Trousers</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox"  id="item-0-2" /><label for="item-0-2">Casual Wear</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Caps</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                            <li><a href="mens.jsp">Trousers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><input type="checkbox" id="item-1" checked="checked" /><label for="item-1">Best Collections</label>
                                <ul>
                                    <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">New Arrivals</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2">Best Offers</label>
                                <ul>
                                    <li><input type="checkbox"  id="item-2-0" /><label for="item-2-0">Summer Discount Sales</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox" id="item-2-1" /><label for="item-2-1">Exciting Offers</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
                                        </ul>
                                    </li>
                                    <li><input type="checkbox" id="item-2-2" /><label for="item-2-2">Flat Discounts</label>
                                        <ul>
                                            <li><a href="mens.jsp">Shirts</a></li>
                                            <li><a href="mens.jsp">Shoes</a></li>
                                            <li><a href="mens.jsp">Pants</a></li>
                                            <li><a href="mens.jsp">SunGlasses</a></li>
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
                                    <img class="img-responsive" src="images/men1.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men2.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men1.jpg" alt=" "/>
                                </li>
                                <li>
                                    <img class="img-responsive" src="images/men2.jpg" alt=" "/>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="men-wear-bottom">
                        <div class="col-sm-4 men-wear-left">
                            <img class="img-responsive" src="images/men3.jpg" alt=" " />
                        </div>
                        <div class="col-sm-8 men-wear-right">
                            <h4>Exclusive Men's Collections</h4>
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
                                <img src="images/ep2.png" alt="" class="pro-image-front">
                                <img src="images/ep2.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">Watches</a></h4>
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
                                <img src="images/a2.png" alt="" class="pro-image-front">
                                <img src="images/a2.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">Blazers</a></h4>
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
                                <img src="images/mw2.png" alt="" class="pro-image-front">
                                <img src="images/mw2.png" alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">New</span>

                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.jsp">Shirts</a></h4>
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
                            List<Product> list = listSP.showkindProductandtag("Mens", tagesx);
                            String requestURL = request.getRequestURL().toString();
                            String[] parturl = requestURL.split("/");
                            for (Product sp : list) {
                                out.println("<form action=\"ControllerCartBean\">");
                                out.print("<input type=\"hidden\" name=\"curpage\" value=\"" + parturl[parturl.length - 1] + "\">");
                                out.println("<div class=\"col-md-3 product-men\">");
                                out.println("<div class=\"men-pro-item simpleCart_shelfItem\">");
                                out.println("<div class=\"men-thumb-item\">");
                                out.println("<img src=\"" + sp.getPicimg() + "\" alt=\"productimg\" class=\"pro-image-front\">");
                                out.println("<img src=\"" + sp.getPicimg() + "\" alt=\"productimg\" class=\"pro-image-back\">");
                                out.println("<div class=\"men-cart-pro\">");
                                out.println("<div class=\"inner-men-cart-pro\">");
                                out.println("<input type=\"submit\" name=\"action\" value=\"Quick View\" class=\"link-product-add-cart\">");
                                out.println("</div></div>");
                                out.println("<span class=\"product-new-top\">New</span>");
                                out.println("</div><div class=\"item-info-product\">");
                                out.println("<h4><a href=\"#\">" + sp.getName() + "</a></h4>");
                                out.println("<div class=\"info-product-price\">");
                                out.println("<span class=\"item_price\">" + sp.getrealmn(sp.getPrice(), sp.getDiscout()) + "</span>");
                                out.println("<del>$" + sp.getPrice() + "</del></div>");
                                out.println("<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                        + "<input type=\"hidden\" name=\"imgsource\" value='" + sp.getPicimg() + "'>"
                                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getrealmn(sp.getPrice(), sp.getDiscout()) + "'>"
                                        + "<input type=\"hidden\" name=\"txtDes\" value='" + sp.getDescription() + "'>");
                                out.print("<input type=\"submit\" class=\"item_add single-item hvr-outline-out button2\" name=\"action\" value=\"Add To Cart\"/></div></div></div></form>");
                            }
                        %>
                    </div>


                    <div class="clearfix"> </div>

                </div>
                <div class="pagination-grid text-right">
                    <ul class="pagination paging">
                        <div id="page_navigation"></div>
                    </ul>
                </div>
            </div>
        </div>	
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
