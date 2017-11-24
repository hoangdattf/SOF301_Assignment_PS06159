package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import model.Product;
import model.Products;
import model.Products;
import model.Products;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--\r\n");
      out.write("Author: W3layouts\r\n");
      out.write("Author URL: http://w3layouts.com\r\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\r\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\r\n");
      out.write("-->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>\r\n");
      out.write("        <!-- for-mobile-apps -->\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <meta name=\"keywords\" content=\"Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \r\n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\r\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\r\n");
      out.write("            function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n");
      out.write("        <!-- //for-mobile-apps -->\r\n");
      out.write("        <link href=\"css/bootstrap_1.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\r\n");
      out.write("        <link href=\"css/pignose.layerslider.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"js/simpleCart.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap-3.1.1.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <script src=\"js/jquery.easing.min.js\"></script>\r\n");
      out.write("        <script src=\"js/pagedevide.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        <div class=\"header\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><span class=\"glyphicon glyphicon-time\" aria-hidden=\"true\"></span>Free and Fast Delivery</li>\r\n");
      out.write("                    <li><span class=\"glyphicon glyphicon-shopping-cart\" aria-hidden=\"true\"></span>Free shipping On all orders</li>\r\n");
      out.write("                    <li><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span><a href=\"userprofile.jsp\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.USER}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- //header -->\r\n");
      out.write("            <!-- header-bot -->\r\n");
      out.write("            <div class=\"header-bot\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"col-md-3 header-left\">\r\n");
      out.write("                        <h1><a href=\"index.jsp\"><img src=\"images/logo3.jpg\"></a></h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-6 header-middle\">\r\n");
      out.write("                        <form action=\"ControllerCartBean\">\r\n");
      out.write("                            <div class=\"search\">\r\n");
      out.write("                                <input type=\"search\" name=\"txtsearch\" required=\"\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"section_room\">\r\n");
      out.write("                                <select id=\"country\" name=\"cata\" onchange=\"change_country(this.value)\" class=\"frm-field required\">\r\n");
      out.write("                                    <option selected=\"\" value=\"%\">All categories</option>\r\n");
      out.write("                                    <option value=\"Electronic\">Electronics</option>  \r\n");
      out.write("                                    <option value=\"Mens\">Men's Wear</option>\r\n");
      out.write("                                    <option  value=\"Womens\">Women's Wear</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"sear-sub\">\r\n");
      out.write("                                <input type=\"submit\" name=\"action\" value=\".\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-3 header-right footer-bottom\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a class=\"use1\" ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("<span>Login</span></a></li>\r\n");
      out.write("                                <li><a class=\"fb\" href=\"#\"></a></li>\r\n");
      out.write("                                <li><a class=\"twi\" href=\"#\"></a></li>\r\n");
      out.write("                                <li><a class=\"insta\" href=\"#\"></a></li>\r\n");
      out.write("                                <li><a class=\"you\" href=\"#\"></a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"clearfix\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- //header-bot -->\r\n");
      out.write("                <!-- banner -->\r\n");
      out.write("                <div class=\"ban-top\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"top_nav_left\">\r\n");
      out.write("                            <nav class=\"navbar navbar-default\">\r\n");
      out.write("                                <div class=\"container-fluid\">\r\n");
      out.write("                                    <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("                                    <div class=\"navbar-header\">\r\n");
      out.write("                                        <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\r\n");
      out.write("                                            <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                                        </button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("                                    <div class=\"collapse navbar-collapse menu--shylock\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("                                        <ul class=\"nav navbar-nav menu__list\">\r\n");
      out.write("                                            <li class=\"active menu__item menu__item--current\"><a class=\"menu__link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a></li>\r\n");
      out.write("                                            <li class=\"dropdown menu__item\">\r\n");
      out.write("                                                <a href=\"#\" class=\"dropdown-toggle menu__link\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">men's wear <span class=\"caret\"></span></a>\r\n");
      out.write("                                                <ul class=\"dropdown-menu multi-column columns-3\">\r\n");
      out.write("                                                    <div class=\"row\">\r\n");
      out.write("                                                        <div class=\"col-sm-6 multi-gd-img1 multi-gd-text \">\r\n");
      out.write("                                                            <a href=\"ControllerProduct?action=Mens&tages=Clothing\"><img src=\"images/woo1.jpg\" alt=\" \"/></a>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"col-sm-3 multi-gd-img\">\r\n");
      out.write("                                                            <ul class=\"multi-column-dropdown\">\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Clothing\">Clothing</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Wallets\">Wallets</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Footwear\">Footwear</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Watches\">Watches</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Accessories\">Accessories</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Bags\">Bags</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Hats\">Hats</a></li>\r\n");
      out.write("                                                            </ul>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"col-sm-3 multi-gd-img\">\r\n");
      out.write("                                                            <ul class=\"multi-column-dropdown\">\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Jewellery\">Jewellery</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Sunglasses\">Sunglasses</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Perfumes\">Perfumes</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Beauty\">Beauty</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Shirts\">Shirts</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Sunglasses\">Sunglasses</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Mens&tages=Swimwear\">Swimwear</a></li>\r\n");
      out.write("                                                            </ul>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"clearfix\"></div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li class=\"dropdown menu__item\">\r\n");
      out.write("                                                <a href=\"#\" class=\"dropdown-toggle menu__link\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">women's wear <span class=\"caret\"></span></a>\r\n");
      out.write("                                                <ul class=\"dropdown-menu multi-column columns-3\">\r\n");
      out.write("                                                    <div class=\"row\">\r\n");
      out.write("                                                        <div class=\"col-sm-3 multi-gd-img\">\r\n");
      out.write("                                                            <ul class=\"multi-column-dropdown\">\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Clothing\">Clothing</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Wallets\">Wallets</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Wallets\">Footwear</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Wallets\">Watches</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Wallets\">Accessories</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Bags\">Bags</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Wallets\">Hats</a></li>\r\n");
      out.write("                                                            </ul>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"col-sm-3 multi-gd-img\">\r\n");
      out.write("                                                            <ul class=\"multi-column-dropdown\">\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Jewellery\">Jewellery</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Sunglasses\">Sunglasses</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Perfumes\">Perfumes</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Beauty\">Beauty</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Shirts\">Shirts</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Sunglasses\">Sunglasses</a></li>\r\n");
      out.write("                                                                <li><a href=\"ControllerProduct?action=Womens&tages=Swimwear\">Swimwear</a></li>\r\n");
      out.write("                                                            </ul>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"col-sm-6 multi-gd-img multi-gd-text \">\r\n");
      out.write("                                                            <a href=\"ControllerProduct?action=Womens&tages=Swimwear\"><img src=\"images/woo.jpg\" alt=\" \"/></a>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"clearfix\"></div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li class=\" menu__item\"><a class=\"menu__link\" href=\"electronics.jsp\">Electronics</a></li>\r\n");
      out.write("                                            <li class=\" menu__item\"><a class=\"menu__link\" href=\"codes.jsp\">Short Codes</a></li>\r\n");
      out.write("                                            <li class=\" menu__item\"><a class=\"menu__link\" href=\"contact.jsp\">contact</a></li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </nav>\t\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"top_nav_right\">\r\n");
      out.write("                            <div class=\"cart box_1\">\r\n");
      out.write("                                <a href=\"checkout.jsp\">\r\n");
      out.write("                                    <h3> <div class=\"total\">\r\n");
      out.write("                                            <i class=\"glyphicon glyphicon-shopping-cart\" aria-hidden=\"true\"></i>\r\n");
      out.write("                                            <span class=\"simpleCart_total\"></span> (<span id=\"simpleCart_quantity\" class=\"simpleCart_quantity\"></span> items)</div>\r\n");
      out.write("\r\n");
      out.write("                                    </h3>\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <p><a href=\"javascript:;\" class=\"simpleCart_empty\">Empty Cart</a></p>\r\n");
      out.write("\r\n");
      out.write("                            </div>\t\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"clearfix\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- //banner-top -->\r\n");
      out.write("                <!-- banner -->\r\n");
      out.write("                <div class=\"banner-grid\">\r\n");
      out.write("                    <div id=\"visual\">\r\n");
      out.write("                        <div class=\"slide-visual\">\r\n");
      out.write("                            <!-- Slide Image Area (1000 x 424) -->\r\n");
      out.write("                            <ul class=\"slide-group\">\r\n");
      out.write("                                <li><img class=\"img-responsive\" src=\"images/ba1.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                                <li><img class=\"img-responsive\" src=\"images/ba2.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                                <li><img class=\"img-responsive\" src=\"images/ba3.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("\r\n");
      out.write("                            <!-- Slide Description Image Area (316 x 328) -->\r\n");
      out.write("                            <div class=\"script-wrap\">\r\n");
      out.write("                                <ul class=\"script-group\">\r\n");
      out.write("                                    <li><div class=\"inner-script\"><img class=\"img-responsive\" src=\"images/baa1.jpg\" alt=\"Dummy Image\" /></div></li>\r\n");
      out.write("                                    <li><div class=\"inner-script\"><img class=\"img-responsive\" src=\"images/baa2.jpg\" alt=\"Dummy Image\" /></div></li>\r\n");
      out.write("                                    <li><div class=\"inner-script\"><img class=\"img-responsive\" src=\"images/baa3.jpg\" alt=\"Dummy Image\" /></div></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <div class=\"slide-controller\">\r\n");
      out.write("                                    <a href=\"#\" class=\"btn-prev\"><img src=\"images/btn_prev.png\" alt=\"Prev Slide\" /></a>\r\n");
      out.write("                                    <a href=\"#\" class=\"btn-play\"><img src=\"images/btn_play.png\" alt=\"Start Slide\" /></a>\r\n");
      out.write("                                    <a href=\"#\" class=\"btn-pause\"><img src=\"images/btn_pause.png\" alt=\"Pause Slide\" /></a>\r\n");
      out.write("                                    <a href=\"#\" class=\"btn-next\"><img src=\"images/btn_next.png\" alt=\"Next Slide\" /></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"clearfix\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <script type=\"text/javascript\" src=\"js/pignose.layerslider.js\"></script>\r\n");
      out.write("                    <script type=\"text/javascript\">\r\n");
      out.write("                                    //<![CDATA[\r\n");
      out.write("                                    $(window).load(function () {\r\n");
      out.write("                                        $('#visual').pignoseLayerSlider({\r\n");
      out.write("                                            play: '.btn-play',\r\n");
      out.write("                                            pause: '.btn-pause',\r\n");
      out.write("                                            next: '.btn-next',\r\n");
      out.write("                                            prev: '.btn-prev'\r\n");
      out.write("                                        });\r\n");
      out.write("                                    });\r\n");
      out.write("                                    //]]>\r\n");
      out.write("                    </script>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- //banner -->\r\n");
      out.write("                <!-- content -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"new_arrivals\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <h3><span>new </span>arrivals</h3>\r\n");
      out.write("                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>\r\n");
      out.write("                        <div class=\"new_grids\">\r\n");
      out.write("                            <div class=\"col-md-4 new-gd-left\">\r\n");
      out.write("                                <img src=\"images/wed1.jpg\" alt=\" \" />\r\n");
      out.write("                                <div class=\"wed-brand simpleCart_shelfItem\">\r\n");
      out.write("                                    <h4>Wedding Collections</h4>\r\n");
      out.write("                                    <h5>Flat 50% Discount</h5>\r\n");
      out.write("                                    <p><i>$250</i> <span class=\"item_price\">$500</span><a class=\"item_add hvr-outline-out button2\" href=\"#\">add to cart </a></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-4 new-gd-middle\">\r\n");
      out.write("                                <div class=\"new-levis\">\r\n");
      out.write("                                    <div class=\"mid-img\">\r\n");
      out.write("                                        <img src=\"images/levis1.png\" alt=\" \" />\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"mid-text\">\r\n");
      out.write("                                        <h4>up to 40% <span>off</span></h4>\r\n");
      out.write("                                        <a class=\"hvr-outline-out button2\" href=\"product.jsp\">Shop now </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"clearfix\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"new-levis\">\r\n");
      out.write("                                    <div class=\"mid-text\">\r\n");
      out.write("                                        <h4>up to 50% <span>off</span></h4>\r\n");
      out.write("                                        <a class=\"hvr-outline-out button2\" href=\"product.jsp\">Shop now </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"mid-img\">\r\n");
      out.write("                                        <img src=\"images/dig.jpg\" alt=\" \" />\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"clearfix\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"clearfix\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-4 new-gd-left\">\r\n");
      out.write("                                <img src=\"images/wed2.jpg\" alt=\" \" />\r\n");
      out.write("                                <div class=\"wed-brandtwo simpleCart_shelfItem\">\r\n");
      out.write("                                    <h4>Spring / Summer</h4>\r\n");
      out.write("                                    <p>Shop Men</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- //content -->\r\n");
      out.write("\r\n");
      out.write("                <!-- content-bottom -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"content-bottom\">\r\n");
      out.write("                    <div class=\"col-md-7 content-lgrid\">\r\n");
      out.write("                        <div class=\"col-sm-6 content-img-left text-center\">\r\n");
      out.write("                            <div class=\"content-grid-effect slow-zoom vertical\">\r\n");
      out.write("                                <div class=\"img-box\"><img src=\"images/p1.jpg\" alt=\"image\" class=\"img-responsive zoom-img\"></div>\r\n");
      out.write("                                <div class=\"info-box\">\r\n");
      out.write("                                    <div class=\"info-content simpleCart_shelfItem\">\r\n");
      out.write("                                        <h4>Mobiles</h4>\r\n");
      out.write("                                        <span class=\"separator\"></span>\r\n");
      out.write("                                        <p><span class=\"item_price\">$500</span></p>\r\n");
      out.write("                                        <span class=\"separator\"></span>\r\n");
      out.write("                                        <a class=\"item_add hvr-outline-out button2\" href=\"#\">add to cart </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-sm-6 content-img-right\">\r\n");
      out.write("                            <h3>Special Offers and 50%<span>Discount On</span> Mobiles</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-sm-6 content-img-right\">\r\n");
      out.write("                            <h3>Buy 1 get 1  free on <span> Branded</span> Watches</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-sm-6 content-img-left text-center\">\r\n");
      out.write("                            <div class=\"content-grid-effect slow-zoom vertical\">\r\n");
      out.write("                                <div class=\"img-box\"><img src=\"images/p2.jpg\" alt=\"image\" class=\"img-responsive zoom-img\"></div>\r\n");
      out.write("                                <div class=\"info-box\">\r\n");
      out.write("                                    <div class=\"info-content simpleCart_shelfItem\">\r\n");
      out.write("                                        <h4>Watches</h4>\r\n");
      out.write("                                        <span class=\"separator\"></span>\r\n");
      out.write("                                        <p><span class=\"item_price\">$250</span></p>\r\n");
      out.write("                                        <span class=\"separator\"></span>\r\n");
      out.write("                                        <a class=\"item_add hvr-outline-out button2\" href=\"#\">add to cart </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"clearfix\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-5 content-rgrid text-center\">\r\n");
      out.write("                        <div class=\"content-grid-effect slow-zoom vertical\">\r\n");
      out.write("                            <div class=\"img-box\"><img src=\"images/p4.jpg\" alt=\"image\" class=\"img-responsive zoom-img\"></div>\r\n");
      out.write("                            <div class=\"info-box\">\r\n");
      out.write("                                <div class=\"info-content simpleCart_shelfItem\">\r\n");
      out.write("                                    <h4>Shoes</h4>\r\n");
      out.write("                                    <span class=\"separator\"></span>\r\n");
      out.write("                                    <p><span class=\"item_price\">$150</span></p>\r\n");
      out.write("                                    <span class=\"separator\"></span>\r\n");
      out.write("                                    <a class=\"item_add hvr-outline-out button2\" href=\"#\">add to cart </a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"clearfix\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- //content-bottom -->\r\n");
      out.write("                <!-- product-nav -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"product-easy\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                        <script src=\"js/easyResponsiveTabs.js\" type=\"text/javascript\"></script>\r\n");
      out.write("                        <script type=\"text/javascript\">\r\n");
      out.write("                                    $(document).ready(function () {\r\n");
      out.write("                                        $('#horizontalTab').easyResponsiveTabs({\r\n");
      out.write("                                            type: 'default', //Types: default, vertical, accordion           \r\n");
      out.write("                                            width: 'auto', //auto or any width like 600px\r\n");
      out.write("                                            fit: true   // 100% fit in a container\r\n");
      out.write("                                        });\r\n");
      out.write("                                    });\r\n");
      out.write("\r\n");
      out.write("                        </script>\r\n");
      out.write("                        <div class=\"sap_tabs\">\r\n");
      out.write("                            <div id=\"horizontalTab\" style=\"display: block; width: 100%; margin: 0px;\">\r\n");
      out.write("                                <ul class=\"resp-tabs-list\">\r\n");
      out.write("                                    <li class=\"resp-tab-item\" aria-controls=\"tab_item-0\" role=\"tab\"><span>Latest Designs</span></li> \r\n");
      out.write("                                    <li class=\"resp-tab-item\" aria-controls=\"tab_item-1\" role=\"tab\"><span>Special Offers</span></li> \r\n");
      out.write("                                    <li class=\"resp-tab-item\" aria-controls=\"tab_item-2\" role=\"tab\"><span>Collections</span></li> \r\n");
      out.write("                                </ul>\t\t\t\t  \t \r\n");
      out.write("                                <div class=\"resp-tabs-container\">\r\n");
      out.write("                                    <div class=\"tab-1 resp-tab-content\" aria-labelledby=\"tab_item-0\">\r\n");
      out.write("                                        <input type='hidden' id='current_page' />\r\n");
      out.write("                                        <input type='hidden' id='show_per_page' />\r\n");
      out.write("                                        <div id='content'>\r\n");
      out.write("                                    ");

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
                                    
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"clearfix\"></div>\r\n");
      out.write("                                <div class=\"pagination-grid text-right\">\r\n");
      out.write("                                    <ul class=\"pagination paging\">\r\n");
      out.write("                                        <div id=\"page_navigation\"></div>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-1 resp-tab-content\" aria-labelledby=\"tab_item-1\">\r\n");
      out.write("                                <input type='hidden' id='current_page' />\r\n");
      out.write("                                <input type='hidden' id='show_per_page' />\r\n");
      out.write("                                <div id='content'>\r\n");
      out.write("                                    ");

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
                                    
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"clearfix\"></div>\r\n");
      out.write("                                <div class=\"pagination-grid text-right\">\r\n");
      out.write("                                    <ul class=\"pagination paging\">\r\n");
      out.write("                                        <div id=\"page_navigation\"></div>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-1 resp-tab-content\" aria-labelledby=\"tab_item-2\">\r\n");
      out.write("                                <input type='hidden' id='current_page' />\r\n");
      out.write("                                <input type='hidden' id='show_per_page' />\r\n");
      out.write("                                <div id='content'>\r\n");
      out.write("                                    ");

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
                                    
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"clearfix\"></div>\r\n");
      out.write("                                <div class=\"pagination-grid text-right\">\r\n");
      out.write("                                    <ul class=\"pagination paging\">\r\n");
      out.write("                                        <div id=\"page_navigation\"></div>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\t\r\n");
      out.write("                        </div>\t\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <script src=\"js/stickmenu.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"js/bantop.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script src=\"https://uhchat.net/code.php?f=29e29f\"></script>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.checkin=='imin'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("<li><span class=\"glyphicon glyphicon-log-out\" aria-hidden=\"true\"></span><a href=\"ControllerCustomer?action=Logout\">Log Out</a></li>");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.checkin=='imin'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("href=\"userprofile.jsp\">");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("href=\"#\" data-toggle=\"modal\" data-target=\"#myModal4\">");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
