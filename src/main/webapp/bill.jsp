<%-- 
    Document   : bill
    Created on : 12-08-2022, 17:10:01
    Author     : MND PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap styles -->
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
        <%
//            session.removeAttribute("cart");
%>
        <jsp:include page="Include/header.jsp"></jsp:include>

            <!--
            Lower Header Section 
            -->
            <div class="container">
                <div id="gototop"> </div>
            <jsp:include page="Include/taskbar.jsp"></jsp:include>
                <div class="row">
                    <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="<c:url value="/home" />">Trang chủ</a> <span class="divider">/</span></li>
                        <li class="active">Thanh toán</li>
                    </ul>
                    <h3> Thanh toán</h3>	
                    <hr class="soft"/>
                    <div class="well">
                        <%--<c:forEach items="${sessionScope.cart}" var="c">--%>
                        <form action="bill" method="POST"  class="form-horizontal" style="margin-left: 200px">
                            <h3>Hóa đơn</h3>
                            <div class="control-group">
                                <label class="control-label">Tên tài khoản</label>
                                <div class="controls">
                                    <input type="text" name="user" value="${userss.user}">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Tên khách hàng <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="name" placeholder="Nhập tên" value="${userss.name}">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Số điện thoại<sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="phone" placeholder="Nhập nhập số điện thoại" value="${userss.phone}">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Địa chỉ <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="address" placeholder="Nhập địa chỉ" value="${userss.address}">
                                </div>
                            </div>
                            <%--<c:forEach items="${list}" var="c">--%>
                            <div class="control-group">
                                <label class="control-label">Số lượng mua </label>
                                <div class="controls">
                                    <input type="text" name="quanty" value="${quanty}">
                                </div>
                            </div>
                            <%--</c:forEach>--%>
                            <div class="control-group">
                                <label class="control-label">Tổng giá </label>
                                <div class="controls">  
                                    <input type="text" name="totalPrice" value="${total}">
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
                                    <input type="submit" value="Thanh toán" class="shopBtn exclusive">
                                </div>
                            </div>
                        </form>
                        <div class="control-group">
                            <div class="controls">
                                <a href="<c:url value="cart"/>"><input type="button" value="Quay lại giỏ hàng" class="shopBtn exclusive"></a>
                            </div>
                        </div>
                        <%--</c:forEach>--%>
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
