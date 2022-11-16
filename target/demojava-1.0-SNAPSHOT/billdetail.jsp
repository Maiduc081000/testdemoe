<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm</title>
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
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <link href="./css/gotopstyle.css" rel="stylesheet">
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

                <jsp:include page="Include/menu.jsp"></jsp:include>
                    <div class="span9">
                        <!--
                        New Products
                        -->
                        <div class="well well-small">
                            <ul class="breadcrumb">
                                <li><a href="<c:url value="/home" />">Trang chủ</a> <span class="divider">/</span></li>
                                <li class="active">Danh sách hóa đơn</li>
                        </ul>
                        <div class="well well-small">
                            <c:forEach items="${listB}" var="b">
                                <div class="row-fluid">
                                    <div class="span5">
                                        <div id="myCarousel" class="carousel slide cntr">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <a href="#"> <img src="./shop-cart/assets/img/${detail.img}" alt="" style="width:100%">Ảnh</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span7">
                                        <h3>${b.id_user}</h3>
                                        <hr class="soft"/>

                                        <form class="form-horizontal qtyFrm">
                                            <div class="control-group">
                                                <label class="control-label"><span>Số lượng mua</span></label>
                                                <div class="controls">
                                                    <input type="text" class="span6" placeholder="1" style="width: 25px">
                                                </div>
                                            </div>
                                            <h4>${userss.phone}</h4>
                                            <h4>${userss.address}</h4>
                                            <h4>${b.totalMoney}</h4>
                                            <label>Ghi chú</label>
                                                <textarea name="note"></textarea>
                                        </form>
                                    </div>
                                </div>
                            </c:forEach>
                            <hr class="softn clr"/>
                        </div>
                        <hr class="soften"/>

                        <div class="row-fluid">
                        </div>
                        <div class="row-fluid">
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

        <jsp:include page="/Include/copyright.jsp"></jsp:include>
        <jsp:include page="Include/gotopjs.jsp"></jsp:include>
        <script src="./shop-cart/assets/js/jquery.js"></script>
        <script src="./shop-cart/assets/js/bootstrap.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="./shop-cart/assets/js/shop.js"></script>
        <script src="./js/manager.js" type="text/javascript"></script>
    </body>
</html>