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
                                <li><a href="<c:url value="/home"/>">Trang chủ</a> <span class="divider">/</span></li>
                                <li class="active">Danh sách sản phẩm</li>
                                <li><a style="margin-left: 410px" href="<c:url value="/loadAdd" />" class="icon-plus-sign"></a></li>
                        </ul>
                        <hr class="soften"/>

                        <div class="row-fluid">
                        </div>
                        <div class="row-fluid">
                            <c:if test="${listP.size() > 0}">
                                <ul class="thumbnails">
                                    <c:forEach items="${ listP }" var="c">
                                        <li class="span4">
                                            <div class="thumbnail">
                                                <a href="loadProduct?pid=${c.id}" class="icon-wrench" style="margin-left: 190px"></a>
                                                <a href="deleteP?id=${c.id}" class="icon-remove-circle" style="margin-left: 190px"></a>
                                                <a class="zoomTool" href="detail?productId=${c.id}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="detail?productId=${c.id}"><img src="./shop-cart/assets/img/${ c.image }" alt=""></a>
                                                <div class="caption cntr">
                                                    <p>${ c.name }</p>
                                                    <p><strong>${ c.price }</strong>₫</p>
                                                    <h4><a class="shopBtn" href="<c:url value="add-cart?productId=${ c.id}" />" title="add to cart"> Add to cart </a></h4> 
                                                    <br class="clr">
                                                </div>
                                            </div>

                                        </li>
                                        <c:if test="${(loop.index +1) % 3 == 0 || (loop.index + 1) == listP.size()}">
                                        </ul>
                                        <c:if test="${ (loop.index +1) < listP.size()} ">
                                            <ul class="thumbnails">
                                            </c:if>
                                        </c:if>
                                    </c:forEach>

                                </c:if>
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