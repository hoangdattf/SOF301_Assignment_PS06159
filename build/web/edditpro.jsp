<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html> 
    <head>
        <title>Product Manager</title>
        <!-- Meta-Tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="keywords" content="Product Editing Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/pagedevide.js" type="text/javascript"></script>
        <link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style2.css" rel='stylesheet' type='text/css' />
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
        <script type='text/javascript'>
            //<![CDATA[
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#blah')
                                .attr('src', e.target.result)
                                .width(150)
                                .height(200);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
        <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $(document).ready(function () {

                    $("#types").change(function () {
                        var val = $(this).val();
                        if (val == "Mens") {
                            $("#tags").html("<option disabled='' selected='' value=''></option><option value='Clothing'>Clothing</option><option value='Footwear'>Footwear</option><option value='Watches'>Watches</option><option value='Accessories'>Accessories</option><option value='Bags'>Bags</option><option value='Hats'>Hats</option><option value='Jewellery'>Jewellery</option><option value='Sunglasses'>Sunglasses</option><option value='Perfumes'>Perfumes</option><option value='Beauty'>Beauty</option><option value='Shirts'>Shirts</option><option value='Swimwear'>Swimwear</option>");
                        } else if (val == "Womens") {
                            $("#tags").html("<option disabled='' selected='' value=''></option><option value='Clothing'>Clothing</option><option value='Footwear'>Footwear</option><option value='Watches'>Watches</option><option value='Accessories'>Accessories</option><option value='Bags'>Bags</option><option value='Hats'>Hats</option><option value='Jewellery'>Jewellery</option><option value='Sunglasses'>Sunglasses</option><option value='Perfumes'>Perfumes</option><option value='Beauty'>Beauty</option><option value='Shirts'>Shirts</option><option value='Swimwear'>Swimwear</option>");
                        } else if (val == "Electronic") {
                            $("#tags").html("<option disabled='' selected='' value=''></option><option value='Electronic'>Electronic</option>");
                        }
                    });
                });
            });//]]> 
        </script>
    </head>
    <body>
        <h1 style="color: #1e7bb7">Product Editing Form</h1>
        <a href="userprofile.jsp"><h2 class="goleft">&#8592 Go To Home</h2></a>        
        <a href="addpro.jsp"><h2 class="goright">Add Product &#8594</h2></a>
        <hr>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301"
                           user="sa" password="12345"
                           var="con"/>
        <sql:query dataSource="${con}" var="rs">select * from Products where delstat = 0</sql:query>
            <div class="login-section">
            <c:set var="count" value="1"/>
            <input type='hidden' id='current_page' />
            <input type='hidden' id='show_per_page' />
            <div id='content'>
                <c:forEach var="dong" items="${rs.rows}">
                    <c:set var="count" value="${count+1}"/>
                    <c:set var="gtt" value="#small-dialog${count}"/>
                    <form>
                        <div class="toprow">             
                            <div class="img1">
                                <h5 class="box-with-text-2">${dong.Name}</h5>
                                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                                   href="${gtt}"><img src="${dong.Picsrc}" alt="userimg" /></a>
                                <ul>
                                    <li><a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                                           href="${gtt}"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</a></li>
                                        <c:url var="delete" value="ControllerProduct">
                                            <c:param name="action" value="Delete"/>
                                            <c:param value="${dong.Code}" name="txtCode"/> 
                                        </c:url>
                                    <li><a href="${delete}"><i class="fa fa-trash-o" aria-hidden="true"></i>Delete</a></li>
                                </ul>
                            </div> 
                        </div>	
                    </form>
                </c:forEach>
            </div>
        </div>

        <c:set var="count" value="1"/>
        <c:forEach var="dong" items="${rs.rows}">
            <c:set var="count" value="${count+1}"/>
            <div class="pop-up">
                <c:set var="gtz" value="small-dialog${count}"/>
                <div id="${gtz}" class="mfp-hide edit">
                    <form action="ControllerEditPro" method="post" enctype="multipart/form-data">
                        <h3 class="sub-head-w3-agileits">Edit Product</h3>	
                        <div class="popupleft">
                            <div class="image-upload">
                                <label for="file-input">
                                    <img src="${dong.Picsrc}" id="blah" alt="Add Image" />
                                </label>
                                <input id="file-input" type="file" name="fileUp" size="50" onchange="readURL(this);"/>
                            </div>
                            <p><b>cost</b>: &emsp;&emsp;<input type="number" max="9999" min="1" name="txtPrice" placeholder="Price" value="${dong.Price}" required=""/><span>$</span></p>
                            <p><b>discount</b>: <input type="number" max="99" min="1" name="txtDis" placeholder="Discount" value="${dong.Discount}" required=""/><span>%</span></p>
                        </div>
                        <div class="popupright">
                            <h4><input type="hidden" name="txtCode" value="${dong.Code}"/>${dong.Code}</h4>
                            <input type="text" name="txtName" placeholder="Name" value="${dong.Name}"/>
                            <input type="text" name="txtDes" placeholder="Description" value="${dong.Description}" required=""/>
                            <select required="" id="types" name="Cata">
                                <option value="Mens" <c:if test="${dong.Cataloge=='Mens'}">selected=""</c:if>>Mens</option>
                                <option value="Womens" <c:if test="${dong.Cataloge=='Womens'}">selected=""</c:if>>Womens</option>
                                <option value="Electronic" <c:if test="${dong.Cataloge=='Electronic'}">selected=""</c:if>>Electronic</option>
                                </select>                            
                                <select required="" id="tags" name="tage">
                                    <option value="Clothing" <c:if test="${dong.Tage=='Clothing'}">selected=""</c:if>>Clothing</option>
                                <option value="Wallets" <c:if test="${dong.Tage=='Wallets'}">selected=""</c:if>>Wallets</option>
                                <option value="Footwear" <c:if test="${dong.Tage=='Footwear'}">selected=""</c:if>>Footwear</option>
                                <option value="Watches" <c:if test="${dong.Tage=='Watches'}">selected=""</c:if>>Watches</option>
                                <option value="Accessories" <c:if test="${dong.Tage=='Accessories'}">selected=""</c:if>>Accessories</option>
                                <option value="Bags" <c:if test="${dong.Tage=='Bags'}">selected=""</c:if>>Bags</option>
                                <option value="Hats" <c:if test="${dong.Tage=='Hats'}">selected=""</c:if>>Hats</option>
                                <option value="Jewellery" <c:if test="${dong.Tage=='Jewellery'}">selected=""</c:if>>Jewellery</option>
                                <option value="Sunglasses" <c:if test="${dong.Tage=='Sunglasses'}">selected=""</c:if>>Sunglasses</option>
                                <option value="Perfumes" <c:if test="${dong.Tage=='Perfumes'}">selected=""</c:if>>Perfumes</option>
                                <option value="Beauty" <c:if test="${dong.Tage=='Beauty'}">selected=""</c:if>>Beauty</option>
                                <option value="Shirts" <c:if test="${dong.Tage=='Shirts'}">selected=""</c:if>>Shirts</option>
                                <option value="Swimwear" <c:if test="${dong.Tage=='Swimwear'}">selected=""</c:if>>Swimwear</option>
                                <option value="Electronic" <c:if test="${dong.Tage=='Electronic'}">selected=""</c:if>>Electronic</option>
                                </select>     
                                <ul class="payment-sendbtns">
                                    <li><input type="submit" name="action" value="Update"></li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </form>
                    </div>
                </div>
        </c:forEach>
        <div class="pagination-grid text-right">
            <ul class="pagination paging">
                <div id="page_navigation" style="margin-right: 500px"></div>
            </ul>
        </div>
        <!--js-->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!--//js-->
        <!--popup-js-->
        <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
        <script>
                                    $(document).ready(function () {
                                        $('.popup-with-zoom-anim').magnificPopup({
                                            type: 'inline',
                                            fixedContentPos: false,
                                            fixedBgPos: true,
                                            overflowY: 'auto',
                                            closeBtnInside: true,
                                            preloader: false,
                                            midClick: true,
                                            removalDelay: 300,
                                            mainClass: 'my-mfp-zoom-in'
                                        });

                                    });
        </script>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
</html>