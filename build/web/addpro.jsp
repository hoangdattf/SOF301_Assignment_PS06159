<%-- 
    Document   : tester
    Created on : Oct 7, 2017, 10:55:38 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Mens :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#blah').attr('src', e.target.result);
                        }

                        reader.readAsDataURL(input.files[0]);
                    }
                }

                $("#file-input").change(function () {
                    readURL(this);
                });
            });//]]> 
        </script>
        <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $(document).ready(function () {

                    $("#typez").change(function () {
                        var val = $(this).val();
                        if (val == "Mens") {
                            $("#tagez").html("<option disabled='' selected='' value=''></option><option value='Clothing'>Clothing</option><option value='Footwear'>Footwear</option><option value='Watches'>Watches</option><option value='Accessories'>Accessories</option><option value='Bags'>Bags</option><option value='Hats'>Hats</option><option value='Jewellery'>Jewellery</option><option value='Sunglasses'>Sunglasses</option><option value='Perfumes'>Perfumes</option><option value='Beauty'>Beauty</option><option value='Shirts'>Shirts</option><option value='Swimwear'>Swimwear</option>");
                        } else if (val == "Womens") {
                            $("#tagez").html("<option disabled='' selected='' value=''></option><option value='Clothing'>Clothing</option><option value='Footwear'>Footwear</option><option value='Watches'>Watches</option><option value='Accessories'>Accessories</option><option value='Bags'>Bags</option><option value='Hats'>Hats</option><option value='Jewellery'>Jewellery</option><option value='Sunglasses'>Sunglasses</option><option value='Perfumes'>Perfumes</option><option value='Beauty'>Beauty</option><option value='Shirts'>Shirts</option><option value='Swimwear'>Swimwear</option>");
                        } else if (val == "Electronic") {
                            $("#tagez").html("<option disabled='' selected='' value=''></option><option value='Electronic'>Electronic</option>");
                        }
                    });


                });
            });//]]> 
        </script>
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
        <link href="css/addpro.css" rel="stylesheet" type="text/css"/>      
    </head>
    <body>
        <div class="image-container set-full-height" style="background-color: #fff">

            <!--   Big container   -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                        <!-- Wizard container -->
                        <div class="wizard-container">
                            <div class="card wizard-card" data-color="red" id="wizard">
                                <form action="ControllerAddPro" method="post" enctype="multipart/form-data">
                                    <div class="wizard-header">
                                        <h3 class="wizard-title">
                                            Easy Add Product
                                        </h3>    
                                        <a href="userprofile.jsp"><h5 class="goleft">&#8592 Go To Home</h5></a>        
                                        <a href="edditpro.jsp"><h5 class="goright" style="margin-left: 565px;margin-top: -35px">Edit Product &#8594</h5></a>

                                    </div>
                                    <div class="wizard-navigation">
                                        <ul>
                                            <li><a href="#details" data-toggle="tab">Step 1 Product Info</a></li>
                                            <li><a href="#captain" data-toggle="tab">Step 2 Product Images</a></li>
                                            <li><a href="#descrip" data-toggle="tab">Step 3 Product Details</a></li>
                                        </ul>
                                    </div>

                                    <div class="tab-content">
                                        <div class="tab-pane" id="details">
                                            <h4 class="info-text">Add product info </h4>
                                            <div class="row">
                                                <form id="form-add-new-rank" class="form-horizontal">
                                                    <div class="form-group"><div class="col-sm-12">
                                                            <span class="input-label">Product SKU</span> 
                                                            <input type="text" placeholder="Product SKU" name="txtCode" class="form-control">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group"><div class="col-sm-12">
                                                            <span class="input-label">Product Name</span> 
                                                            <input type="text" placeholder="Product Name" name="txtName" class="form-control">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <span class="input-label">Product Description</span>
                                                            <textarea name="txtDes" id="" cols="30" rows="4" placeholder="Product Description" class="form-control"></textarea>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">        
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="descrip">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h4 class="info-text">Product Detail</h4>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">attach_money</i>
                                                        </span>
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Product Price</label>
                                                            <input name="txtPrice" type="number" class="form-control">
                                                        </div>
                                                    </div>

                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">local_atm</i>
                                                        </span>
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Product Discount</label>
                                                            <input name="txtDis" type="number" class="form-control">
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Categories</label>
                                                        <select name="Cata" id="typez" class="form-control">
                                                            <option disabled="" selected=""></option>
                                                            <option value="Mens"> Mens </option>
                                                            <option value="Womens"> Womens </option>
                                                            <option value="Electronic">Electronic</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Tags</label>
                                                        <select name="tage" id="tagez" class="form-control">
                                                            <option disabled="" selected=""></option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="captain">
                                            <h4 class="info-text">Add images for product</h4> 
                                            <div class="image-upload">
                                                <label for="file-input">
                                                    <img src="images/addimgbg.png" id="blah" alt="Add Image" style="width: 725px" />
                                                </label>
                                                <input id="file-input" type="file" name="fileUp" size="50" onchange="readURL(this);"/>
                                            </div>
                                        </div>
                                        <div class="wizard-footer">
                                            <div class="pull-right">
                                                <input type='button' class='btn btn-next btn-fill btn-danger btn-wd' name='next' value='Next' />
                                                <input type="submit" class='btn btn-finish btn-fill btn-danger btn-wd' name="action" value="Finish"/>
                                            </div>
                                            <div class="pull-left">
                                                <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                </form>
                            </div>
                        </div> <!-- wizard container -->
                    </div>
                </div> <!-- row -->
            </div> <!--  big container -->
        </div> 
            <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src="js/addscript.js" type="text/javascript"></script>
</html>
