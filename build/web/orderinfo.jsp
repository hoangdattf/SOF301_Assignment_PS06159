<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
        <script src="js/tabledevide.js" type="text/javascript"></script>
        <style>
            a .lg:hover{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
        <!-- header -->
        <jsp:include page="header.jsp"/>
        <!-- //banner-top -->
        <!-- banner -->
        <div class="page-head">
            <div class="container">
                <h3>Check Out</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- check out -->
        <div class="checkout">
            <div class="container">
                <div class="fram" style="border: solid #00bbff 2px; padding: 5px; height: 475px">
                    <form action="ControllerCartBean">
                        <h2>Please Give Me Your Info</h2>
                        <a href="#" data-toggle="modal" data-target="#myModal4" style="
                           border: solid #00bbff 3px;
                           color: white;
                           background: #00bbff;
                           height: 54px;
                           font-size: 32px;
                           position: absolute;
                           top: 573px;
                           right: 105px;
                           "><b class="lg">Login to order</b></a>
                        <hr style="margin-top: 12px; margin-bottom: 10px;border: solid #00bbff 2px">
                        <br>Email:<br>
                        <input type="text" class="form-control" placeholder="Email" required="" name="txtemail" aria-describedby="basic-addon1" value=""/>
                        <br/>Name:<br>
                        <input type="text" class="form-control" placeholder="Name" required="" name="txtname" aria-describedby="basic-addon1" value=""/>
                        <br/>Address:<br>
                        <textarea class="form-control" placeholder="Address" name="txtadd" required="" aria-describedby="basic-addon1" value=""></textarea>
                        <br/>Phone Number:<br>
                        <input type="text" class="form-control" placeholder="Phone Number" required="" name="txtphone" aria-describedby="basic-addon1" value=""/>
                        <br>
                        <input type="submit"  class="form-control" value="Continue" name="action"/>
                    </form>
                </div>
            </div>
        </div>	
        <!-- //check out -->
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>