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
        <script src="js/tabledevide.js" type="text/javascript"></script>
        <style>
            .pg-normal {
                color: red;
                font-weight: normal;
                text-decoration: none;  
                cursor: pointer;  
            }
            .pg-selected {
                color: black;
                font-weight: bold;      
                text-decoration: underline;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="page-head">
            <div class="container">
                <h3>User Manager</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- check out -->
        <div class="checkout">
            <div class="container">
                <h3 style="margin: -30px 0 1em; ">User Manager</h3>
                <form action="ControllerCustomer">
                    <div class="input-group">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                        <input type="text" name="txtsearch" value="" placeholder="Search For..." class="form-control"/>
                        <input type="submit" value="Search" name="action" style="display: none  ">
                    </div> 
                </form>
                <c:set var="cus" value="${sessionScope.listcus}"/>
                <c:if test="${not empty cus}">
                    <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s" style="overflow-x: visible">
                        <table id="results" class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>Delete</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Full Name</th>
                                    <th>Gender</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Update</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="rows" items="${cus}">
                                <form action="ControllerCustomer">
                                    <c:url var="delete" value="ControllerCustomer">
                                        <c:param name="action" value="Delete"/>
                                        <c:param name="usdel" value="${rows.username}"/>
                                    </c:url>
                                    <tr class="rem1">
                                        <td class="invert-closeb">
                                            <div class="rem">
                                                <a href="${delete}"><div class="close1" style="right:13px"></div></a>
                                            </div>
                                        </td>

                                        <td class="invert"><input type="hidden" name="txtun" value="${rows.username}">${rows.username}</td>
                                        <td class="invert"><input type="text" name="txtpw" value="${rows.password}"></td>
                                        <td class="invert"><input type="text" name="fn" value="${rows.fullname}"></td>
                                        <td class="invert"><select name="txtgioitinh">
                                                <option value="Male"<c:if test="${rows.gioitinh=='Male'}">selected=""</c:if>>Male</option>
                                                <option value="Female"<c:if test="${rows.gioitinh=='Female'}">selected=""</c:if>>Female</option>
                                                </select></td>
                                            <td class="invert"><input type="text" name="txtemail" value="${rows.email}"></td>
                                        <td class="invert"><input type="text" name="txtphones" value="${rows.phone}"></td>
                                        <td class="invert"><input type="text" name="txtdiachi" value="${rows.diachi}"></td>
                                        <td class="invert">
                                            <div class="quantity"> 
                                                <div class="quantity-select">   
                                                    <input type="image" src="http://physi.rocks/mobile/images/button-check.png" height="25px" width="25px" value="Update" name="action"/>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach> 
                            </tbody>
                        </table>
                    </c:if>
                    <c:if test="${empty cus}">
                        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                           url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301"
                                           user="sa" password="12345"
                                           var="con"/>
                        <sql:query dataSource="${con}" var="result">select Username, Password, Gioitinh, Hoten, Emai, Phone, DiaChi from Customers where Role =1</sql:query>
                            <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s" style="overflow-x: visible">
                                <table id="results" class="timetable_sub">
                                    <thead>
                                        <tr>
                                            <th>Delete</th>
                                            <th>Username</th>
                                            <th>Password</th>
                                            <th>Full Name</th>
                                            <th>Gender</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>   
                                    <c:forEach var="row" items="${result.rows}">
                                    <form action="ControllerCustomer">
                                        <c:url var="delete" value="ControllerCustomer">
                                            <c:param name="action" value="Delete"/>
                                            <c:param name="usdel" value="${row.Username}"/>
                                            <c:param name="txtsearch" value="${param.txtsearch}"/>
                                        </c:url>
                                        <tr class="rem1">
                                            <td class="invert-closeb">
                                                <div class="rem">
                                                    <a href="${delete}"><div class="close1" style="right:13px"></div></a>
                                                </div>
                                            </td>     
                                            <td class="invert"><input type="hidden" name="txtun" value="${row.Username}">${row.Username}</td>
                                            <td class="invert"><input type="text" name="txtpw" value="${row.Password}"></td>
                                            <td class="invert"><input type="text" name="fn" value="${row.Hoten}"></td>
                                            <td class="invert">
                                                <select name="txtgioitinh">
                                                    <option value="Male"<c:if test="${row.Gioitinh==true}">selected=""</c:if>>Male</option>
                                                    <option value="Female"<c:if test="${row.Gioitinh==false}">selected=""</c:if>>Female</option>
                                                    </select>
                                                </td>
                                                <td class="invert"><input type="text" name="txtemail" value="${row.Emai}"></td>
                                            <td class="invert"><input type="text" name="
                                                                      " value="${row.Phone}"></td>
                                            <td class="invert"><input type="text" name="txtdiachi" value="${row.Diachi}"></td>
                                            <td class="invert">
                                                <div class="quantity"> 
                                                    <div class="quantity-select"> 
                                                        <input type="hidden" name="txtsearch" value="${param.txtsearch}"/>
                                                        <input type="image" src="http://physi.rocks/mobile/images/button-check.png" height="25px" width="25px" value="Update" name="action"/>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </form>
                                </c:forEach> 
                                </tbody>
                            </table>
                        </c:if>
                        <div id="pageNavPosition"></div>
                        <script type="text/javascript"><!--
                               var pager = new Pager('results', 7);
                            pager.init();
                            pager.showPageNav('pager', 'pageNavPosition');
                            pager.showPage(1);
                            //--></script>
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
