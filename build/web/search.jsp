<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
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
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- single -->
        <script src="js/imagezoom.js"></script>
        <script src="js/jquery.flexslider.js"></script>
        <!-- single -->
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
                <h3>Search Result</h3>
            </div>
        </div>
        <c:set var="listproduct" value="${sessionScope.listsearch}"></c:set>
        <c:if test="${empty listproduct}">
            <h1 style="text-align: center;color: red;font-size:80px; margin:25px;">404<br/> Can't Find Any Item Like That</h1>
            </c:if>
            <c:if test="${not empty listproduct}">
            <div class="container">
                <div class="col-md-8 electro-left text-center">
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <div class="ele-bottom-grid">
                        <input type='hidden' id='current_page' />
                        <input type='hidden' id='show_per_page' />
                        <div id='content'>
                            <c:forEach var="pro" items="${listproduct}">
                                <form action="ControllerCartBean">
                                    <div class="col-md-3 product-men">
                                        <div class="men-pro-item simpleCart_shelfItem">
                                            <div class="men-thumb-item">
                                                <img src="${pro.picimg}" alt="productimg" class="pro-image-front">
                                                <img src="${pro.picimg}" alt="productimg" class="pro-image-back">
                                                <div class="men-cart-pro">
                                                    <div class="inner-men-cart-pro">
                                                        <input type="submit" name="action" value="Quick View" class="link-product-add-cart">
                                                    </div>
                                                </div>
                                                <span class="product-new-top">New</span>
                                            </div>
                                            <div class="item-info-product">
                                                <h4><a href="#">${pro.name}</a></h4>
                                                <div class="info-product-price">
                                                    <span class="item_price"> ${pro.price-pro.price*pro.discout/100}</span>
                                                    <del>$${pro.price}</del>
                                                </div>
                                                <input type="hidden" name="txtCode" value="${pro.code}">
                                                <input type="hidden" name="imgsource" value="${pro.picimg}">
                                                <input type="hidden" name="txtName" value="${pro.name}">
                                                <input type="hidden" name="txtPrice" value="${pro.price-pro.price*pro.discout/100}">
                                                <input type="hidden" name="txtDes" value="${pro.description}">
                                                <input type="hidden" name="cata" value="${param.cata}"/>
                                                <input type="hidden" name="txtsearch" value="${param.txtsearch}"/>
                                                <input type="submit" class="a" name="action" value="Add To cart"/>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </c:forEach>
                        </c:if>

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
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
