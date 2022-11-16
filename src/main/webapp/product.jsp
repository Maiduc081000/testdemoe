<%-- 
    Document   : product
    Created on : 05-08-2022, 13:37:15
    Author     : MND PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết sản phẩm</title>
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
                        <ul class="breadcrumb">
                            <li><a href="<c:url value="/home"/>">Trang chủ</a> <span class="divider">/</span></li>
                        <li><a href="<c:url value="/listproduct"/>">Sản phẩm</a> <span class="divider">/</span></li>
                        <li class="active">Chi tiết sản phẩm</li>
                    </ul>	
                    <div class="well well-small">
                        <div class="row-fluid">
                            <div class="span5">
                                <div id="myCarousel" class="carousel slide cntr">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href="#"> <img src="./shop-cart/assets/img/${detail.image}" alt="" style="width:100%"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span7">
                                <h3>${detail.name}</h3>
                                <hr class="soft"/>

                                <form class="form-horizontal qtyFrm">
                                    <div class="control-group">
                                        <label class="control-label"><span>Số lượng</span></label>
                                        <div class="controls">
                                            <input type="number" class="span6" placeholder="1" min="1">
                                        </div>
                                    </div>
                                    <h4>${detail.title}</h4>
                                    <p>${detail.description}
                                    <p>
                                        <h4><a class="shopBtn" href="<c:url value="add-cart?productId=${ detail.id}" />" title="add to cart"> Add to cart </a></h4>
                                </form>
                            </div>
                        </div>
                        <hr class="softn clr"/>


                        <ul id="productDetail" class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                            <li class=""><a href="#profile" data-toggle="tab">Related Products </a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content tabWrapper">
                            <div class="tab-pane fade active in" id="home">
                                <h4>Product Information</h4>
                            </div>
                            <div class="tab-pane fade" id="profile">
                                <div class="row-fluid">	  
                                    <div class="span2">
                                        <img src="assets/img/d.jpg" alt="">
                                    </div>
                                    <div class="span6">
                                        <h5>Product Name </h5>
                                        <p>
                                            Nowadays the lingerie industry is one of the most successful business spheres.
                                            We always stay in touch with the latest fashion tendencies - 
                                            that is why our goods are so popular..
                                        </p>
                                    </div>
                                    <div class="span4 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3> $140.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">  Adds product to compair
                                            </label><br>
                                            <div class="btn-group">
                                                <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                                <a href="product_details.html" class="shopBtn">VIEW</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>                   
                                <hr class="soften"/>

                            </div>
                        </div>

                    </div>
                </div>
            </div> <!-- Body wrapper -->
            <!-- 
            Clients 
            -->
            <jsp:include page="Include/section.jsp"></jsp:include>

            <jsp:include page="Include/footer.jsp"></jsp:include>
            </div><!-- /container -->

        <jsp:include page="Include/copyright.jsp"></jsp:include>
        <jsp:include page="Include/gotopjs.jsp"></jsp:include>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="./shop-cart/assets/js/jquery.js"></script>
        <script src="./shop-cart/assets/js/bootstrap.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="./shop-cart/assets/js/shop.js"></script>
    </body>
</html>
