<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
--><%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Check Out :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
                <h3>Bill Manager</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- check out -->
        <div class="checkout">
            <div class="container">
                <h3 style="margin: -30px 0 1em; ">Bill Manager</h3>
                <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                   url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301"
                                   user="sa" password="12345"
                                   var="con"/>
                <sql:query dataSource="${con}" var="rs">select * from bills</sql:query>       
                <c:forEach var="rows" items="${rs.rows}">
                    <form action="ControllerCustomer"/>
                    <sql:query dataSource="${con}" var="rss">select * from billdetails where id_hd = ? 
                        <sql:param value="${rows.id_hd}"/>
                    </sql:query>
                    <c:if test="${rows.statusbill==false}"><h4 style="position: absolute;
                        right: 115px;">Status: Not Delivery</h4></c:if>
                    <h4>ID:${rows.id_hd}<input type="hidden" value="${rows.id_hd}" name="tid"/></h4>
                    <c:if test="${rows.statusbill==true}"><img src="images/delistamp.jpg" style="position: absolute;
                         height: 90px;
                         left: 1090px;"></c:if>
                    <h4>Name: ${rows.usernam}<input type="hidden" value="${rows.usernam}" name="cusname"/></h4>
                    <c:if test="${rows.statusbill==false}"><input type="submit" name="action" value="Delivery" style="position: absolute;right: 105px;width: 150px;
                           height: 75px;
                           font-weight: bold;
                           color: red;
                           background: #ddd;"/></c:if>
                    <h4>Address: ${rows.useradd}<input type="hidden" value="${rows.useradd}" name="adr"/></h4>
                    <h4>Phone: ${rows.userphone}<input type="hidden" value="${rows.userphone}" name="tel"/></h4>
                    <h4>Email: ${rows.usermail}<input type="hidden" value="${rows.usermail}" name="mailz"/></h4>
                    <h4>Payment Method: ${rows.paymentmethod}<input type="hidden" value="${rows.paymentmethod}" name="paymeu"/></h4>
                    <h4>Date Order: ${rows.orderdate}<input type="hidden" value="${rows.orderdate}" name="orderdead"/></h4> 
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dong" items="${rss.rows}">
                                <tr>
                                    <td>${dong.Code}</td>
                                    <td>${dong.quantity}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    </form>
                </c:forEach>

            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>	
<!-- //check out -->
<!-- //product-nav -->
<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s" style="margin: -3em 0 0 0em;">
    <a href="index.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Home</a>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="js/stickmenu.js" type="text/javascript"></script>
</body>
<script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
