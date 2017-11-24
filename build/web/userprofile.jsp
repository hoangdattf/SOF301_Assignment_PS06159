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
        <link href="css/userpro.css" rel="stylesheet" type="text/css"/>
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap_2.css" rel="stylesheet" type="text/css" media="all" />
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
        <link href="css/tab.css" rel="stylesheet" type="text/css"/>
        <script src="js/tab.js" type="text/javascript"></script>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <c:set var="usern" value="${sessionScope.USER}"/>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301"
                           user="sa" password="12345"
                           var="con"/>
        <sql:query dataSource="${con}" var="result">select Username, Password, Gioitinh, Hoten, Emai, Phone, DiaChi, Role from Customers where Username like '${usern}'</sql:query>
            <div class="page-head">
                <div class="container">
                    <h3>User Profile</h3>
                </div>
            </div>
            <div class="checkout" style="height: 900px;background:#E9EBEE">
                <div class="container">
                    <div id="fbody">
                        <img src="images/anhbia.jpg" id="fbpic">
                        <img src="images/userpic.jpg" class="fbdaidien">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div id="fbbtab">
                                            <div class="fbbot" style="width: 295px"><button id="nutdis" class="tablinks1" disabled="">&emsp;</button></div>
                                            <div class="fbbot" style="width: 200px"><button class="tablinks" onclick="openCity(event, 'Info')">Info</button></div>
                                            <div class="fbbot" style="width: 200px"><button class="tablinks" onclick="openCity(event, 'HistoryLine')">History Line</button></div>
                                            <div class="fbbot" style="width: 200px"><button class="tablinks" onclick="openCity(event, 'Comments')">Comments</button></div>                                
                                            <div class="fbbot"><button id="nutdis" class="tablinks1" disabled="">&emsp;</button></div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>                   
                    <c:forEach var="row" items="${result.rows}">
                        <c:if test="${row.Role==false}">
                            <a id="fbactinfo" href="edditpro.jsp">Product Manager...</a>
                            <a id="fbactinfo2" href="usermanage.jsp">User Manager...</a>
                            <a id="fbactinfo3" href="billmanage.jsp">Bill Manager...</a>
                        </c:if>

                        <div id="fbnick" style="left: 275px;text-transform: uppercase;">${row.Username}</div></div>
                    <div id="Info" class="tabcontent">
                        <form action="ControllerCustomer" style="margin-top: 265px">
                            <input type="hidden" value="${row.Username}" name="txtun"/>
                            Full Name
                            <input type="text" class="form-control" placeholder="Username" name="fn" aria-describedby="basic-addon1" value="${row.Hoten}">
                            </br>Password
                            <input type="password" class="form-control" placeholder="Password" name="txtpw" aria-describedby="basic-addon1" value="${row.Password}">
                            </br>Gender
                            <select class="form-control" name="txtgioitinh">
                                <option value="Male" <c:if test="${row.Gioitinh==true}">selected=""</c:if>>Male</option>
                                <option value="Female" <c:if test="${row.Gioitinh==false}">selected=""</c:if>>Female</option>
                                </select>
                                </br>Address
                                <input type="text" class="form-control" name="txtdiachi" placeholder="Address" aria-describedby="basic-addon1" value="${row.Diachi}">
                            </br>Email
                            <input type="text" class="form-control" placeholder="Email" name="txtemail" aria-describedby="basic-addon1" value="${row.Emai}">
                            </br>Phone Number
                            <input type="text" class="form-control" placeholder="Phone Number" name="txtphone" aria-describedby="basic-addon1" value="${row.Phone}">
                            <br>
                            <input type="submit"  class="form-control" value="Update Info" name="action"/>
                        </form>
                    </c:forEach>
                </div>
                <div class="clearfix"> </div>
                <div id="HistoryLine" class="tabcontent">
                    <h1 style="    position: absolute;
                        top: 900px;
                        left: 500px;border: solid;
                        background: red">Coming Soon</h1>
                </div>
                <div class="clearfix"> </div>
                <div id="Comments" class="tabcontent">
                    <h1 style="    position: absolute;
                        top: 900px;
                        left: 500px;border: solid;
                        background: red">Coming Soon</h1>
                </div>
            </div>
        </div>
        <!-- //check out -->
        <!-- //product-nav -->

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/stickmenu.js" type="text/javascript"></script>
    </body>
    <script src="https://uhchat.net/code.php?f=29e29f"></script>
</html>