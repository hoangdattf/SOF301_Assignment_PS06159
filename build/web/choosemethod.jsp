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
        <style class="cp-pen-styles">
            @import url('//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css');
            input[name='sex'] {
                -webkit-appearance: none;
                -moz-appearance: none;
                -o-appearance: none;
                -ms-appearance: none;
                appearance: none;
                outline: none;
                margin: 15px;
            }
            input[name='sex']:after {
                font-family: 'FontAwesome';
                display: inline-block;
                text-align: center;
                font-size: 80px;
                content: attr(data-icon);
                padding: 20px 20px;
                border-radius: 15px;
                color: rgba(0, 0, 0, 0.4);
                -webkit-transition: box-shadow 1s, color 1s;
                transition: box-shadow 1s, color 1s;

            }
            input[name='sex']:checked:after {
                box-shadow: 2px 2px 14px rgba(0, 0, 0, 0.4);
                color: #2196F3;
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
                <h3>Choose Method</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- check out -->
        <div class="checkout">
            <div class="container" style="text-align: center">
                <form action="ControllerCustomer">
                    <h1>Choose Payment Method</h1>
                    <input style="margin-left: 30px;" type="radio" name="sex" value="Get Product Before Pay" data-icon='&#xf155;'/>
                    <input type="radio" name="sex" value="By Card" data-icon='&#xf1f0;'/>
                    <input type="submit" class="form-control" value="Complete" name="action"/>
                </form>
            </div>
        </div>	
        <!-- //check out -->
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>