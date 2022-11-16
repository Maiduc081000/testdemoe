<%-- 
    Document   : login
    Created on : 03-08-2022, 08:34:16
    Author     : MND PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <link href="./shop-cart/assets/css/bootstrap.css" rel="stylesheet"/>
        <!-- Customize styles -->
        <link href="./shop-cart/style.css" rel="stylesheet"/>
        <!-- font awesome styles -->
        <link href="./shop-cart/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
        <!--[if IE 7]>
                <link href="css/font-awesome-ie7.min.css" rel="stylesheet">
        <![endif]-->

        <!--[if lt IE 9]>
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Favicons -->
        <link rel="shortcut icon" href="./shop-cart/assets/ico/favicon.ico">
    </head>
    <body>
        <!-- 
                Upper Header Section 
        -->
        <jsp:include page="Include/header.jsp"></jsp:include>

            <!--
            Lower Header Section 
            -->
            <div class="container">
                <div id="gototop"> </div>
            <jsp:include page="Include/taskbar.jsp"></jsp:include>

                <!-- 
                Body Section 
                -->
                <div class="row">
                    <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="<c:url value="/home"/>">Trang chủ</a> <span class="divider">/</span></li>
                            <li class="active">Đăng Nhập</li>
                        </ul>
                        <h3> Đăng Nhập</h3>	
                        <hr class="soft"/>

                        <div class="row">
                            <div class="span1"> &nbsp;</div>
                            <div style="margin-left: 200px" class="span5">
                                <div class="well">
                                    <h5>Đăng Nhập</h5>
                                    <form action="login" method="post">
                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Tài khoản</label>
                                            <div class="controls">
                                                <input class="span4" name="user"  type="text" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputPassword">Mật khẩu</label>
                                            <div class="controls">
                                                <input type="password" name="pass" class="span4" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button style="color: #0088cc" type="submit" class="defaultBtn">Đăng nhập</button> <a href="#">Quên mật khẩu?</a>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="defaultBtn"><a href="createLogin.jsp">Tạo tài khoản</a></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>	

                    </div>
                </div>
                <!-- 
                Clients 
                -->
            <jsp:include page="Include/section.jsp"></jsp:include>
            <jsp:include page="Include/footer.jsp"></jsp:include>
            </div><!-- /container -->

        <jsp:include page="Include/copyright.jsp"></jsp:include>
        <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="./shop-cart/assets/js/jquery.js"></script>
        <script src="./shop-cart/assets/js/bootstrap.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="./shop-cart/assets/js/shop.js"></script>
    </body>
</html>
