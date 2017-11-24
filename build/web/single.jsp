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
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="page-head">
            <div class="container">
                <h3>Single</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- single -->
        <div class="single">
            <div class="container">
                <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <!-- FlexSlider -->
                            <script>
// Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                            </script>
                            <!-- //FlexSlider-->
                            <ul class="slides">

                                <div class="thumb-image"> <img src="${hinh}" data-imagezoom="true" class="img-responsive"> </div>



                            </ul>
                            <div class="clearfix"></div>
                        </div>	
                    </div>
                </div>
                <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
                    <h3>${ten}</h3>
                    <p><span class="item_price">$${gia}</span> <del>- $${tienthat}</del></p>

                    <form action="ControllerCartBean">
                        <div class="color-quality">
                            <div class="color-quality-right">
                                <h5>Quantity :</h5>
                                <select name="qty" id="country1"  class="frm-field required sect">
                                    <option value="1">1 Qty</option>                          
                                    <option value="2">2 Qty</option>
                                    <option value="3">3 Qty</option>  
                                    <option value="4">4 Qty</option>
                                    <option value="5">5 Qty</option>          						
                                </select>
                            </div>
                            <input type="hidden" name="txtCode" value="${ma}"/> 
                            <input type="hidden" name="txtName" value="${ten}"/> 
                            <input type="hidden" name="txtPrice" value="${gia}"/> 
                            <input type="hidden" name="txtDes" value="${mota}"/> 
                            <input type="hidden" name="imgsource" value="${hinh}"/>
                            <%
                                String requestURL = request.getRequestURL().toString();
                                String[] parturl = requestURL.split("/");
                                out.print("<input type=\"hidden\" name=\"curpage\" value=\"" + parturl[parturl.length - 1] + "\">");
                            %>
                        </div>
                        <div class="occasional">

                            <div class="clearfix"> </div>
                        </div>
                        <div class="occasion-cart">
                            <input type="submit" name="action" value="Add to cart" class="item_add hvr-outline-out button2">
                        </div>
                    </form>
                </div>
                <div class="clearfix"> </div>

                <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
                            <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Reviews(1)</a></li>
                            <li role="presentation" class="dropdown">
                                <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                    <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">cleanse</a></li>
                                    <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">fanny</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                                <h5>Product Brief Description</h5>
                                <p>${mota}</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
                                <div class="bootstrap-tab-text-grids">
                                    <div class="bootstrap-tab-text-grid">
                                        <div class="bootstrap-tab-text-grid-left">
                                            <img src="images/men3.jpg" alt=" " class="img-responsive">
                                        </div>
                                        <div class="bootstrap-tab-text-grid-right">
                                            <ul>
                                                <li><a href="#">Admin</a></li>
                                                <li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
                                            </ul>
                                            <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
                                                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem 
                                                vel eum iure reprehenderit.</p>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>

                                    <div class="add-review">
                                        <h4>add a review</h4>
                                        <form>
                                            <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Name';
                                                    }" required="">
                                            <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Email';
                                                    }" required="">

                                            <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Message...';
                                                    }" required="">Message...</textarea>
                                            <input type="submit" value="SEND">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
                                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //single -->
        <jsp:include page="footer.jsp"/>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>
