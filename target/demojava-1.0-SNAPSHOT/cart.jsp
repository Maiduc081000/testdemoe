s<%-- 
    Document   : cart
    Created on : 02-08-2022, 16:07:58
    Author     : MND PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
        <link href="./shop-cart/assets/css/bootstrap.css" rel="stylesheet"/>
        <!-- Customize styles -->
        <link href="./shop-cart/style.css" rel="stylesheet"/>
        <!-- font awesome styles -->
        <link href="./shop-cart/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
        <link rel="shortcut icon" href="./shop-cart/assets/ico/favicon.ico">
        <link href="./css/gotopstyle.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Include/header.jsp"></jsp:include>
            <div class="container">
                <div id="gototop"> </div>
            <jsp:include page="Include/taskbar.jsp"></jsp:include>
                <div class="row">
                    <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
                            <li class="active">Giỏ hàng</li>
                        </ul>
                        <h1>Giỏ hàng <small class="pull-right"> </small></h1>
                    <c:set var="total" value="0"></c:set>
                    <c:set var="quantity" value="0"></c:set>
                    <%--<c:forEach items="${sessionScope.cart}" var="c">--%>

                    <div class="well well-small">
                        <hr class="soften"/>	
                        <table class="table table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Sản phẩm</th>
                                    <th>Thông tin</th>
                                    <th>Giá bán</th>
                                    <th>Số lượng </th>
<!--                                    <th>Chỉnh sửa</th>-->
                                    <th>Xóa</th>
                                    <th>Tổng tiền</th>
                                </tr>
                            </thead>
                            <!--                            <thead>
                                                        <th>Tổng tiền tất cả sản phẩm</th>
                                                        </thead>-->
                            <c:forEach items="${list}" var="c">
                                <tbody>
                                    <tr>  
                                        <c:set var="total" value="${total + c.price*c.amount}"></c:set>
                                        <c:set var="quantity" value="${quantity + c.amount}"></c:set>
                                        <td>${c.id}</td>
                                        <td><img width="100" src="./shop-cart/assets/img/${c.image}" alt=""></td>
                                        <td><input type="text" value="${c.name}"readonly required><br><input type="text" name="title" value="${c.title}" readonly required></td>
                                        <td><input type="text" value="${c.price}₫" readonly required></td>
                                        <td>

                                            <a href="reduce?id=${c.id}" ><button class="btnSub">-</button></a>
                                            <strong>${c.amount}</strong>
                                            <a href="updatequaty?id=${c.id}"><button class="btnAdd">+</button></a>
                                            <!--<input id="quanty_cart-${c.id}" type="number" min="1" class="quanty"  value=""></td>-->
<!--                                        <td><button  data-id="${c.id}"  class="btn btn-mini btn-danger edit-cart" name="cart" type="button">
                                                <span class="icon-edit"></span>
                                            </button>
                                        </td>-->
                                        <td><a href="delete?id=${c.id}" class="btn btn-mini btn-danger" type="button">
                                                <span class="icon-remove"></span>
                                            </a>
                                        </td>
                                        <td><span>${c.amount * c.price}</span>₫</td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                                <thead>
                                <tr>
                                    <th class="alignR" colspan="3">Tổng số lương sản phẩm</th>
                                    <th colspan="5" class="alignR"> Tổng tiền sản phẩm</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="alignR" colspan="3">${quantity}</td>
                                        <td colspan="5" class="alignR">${total}</td>
                                    </tr>
                                </tbody>
                        </table>
                        <!--<p colspan="7" class="alignR">Tổng tiền sản phẩm</p>-->
                            <!--<p class="alignR" colspan="7">${total}</p>-->
                        <br/>	
                        <a href="<c:url value="/home" />" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua hàng </a>
                        <a href="loadbill?detail=quanty=${quantity}?totalPrice=${total}"  class="shopBtn btn-large pull-right">Thanh toán <span class="icon-arrow-right"></span></a>
                    </div>
                    <%--</c:forEach>--%>
                </div>
            </div>
            <!-- 
            Clients 
            -->
            <jsp:include page="Include/section.jsp"></jsp:include>

            <jsp:include page="Include/footer.jsp"></jsp:include>
            </div><!-- /container -->

        <jsp:include page="Include/copyright.jsp"></jsp:include>
        <jsp:include page="Include/gotopjs.jsp"></jsp:include>
    <content tag="script">
        <script type="text/javascript">
            $(".edit-cart").on("click", function () {

//                alert($(this).data("id"));
                var id = $(this).data("id");
                var quanty = $("#quanty_cart-" + id).val();
                window.location = "addcart/" + id + "/" + quanty;
//                alert(quanty);
            });
        </script>
    </content>

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./shop-cart/assets/js/jquery.js"></script>
    <script src="./shop-cart/assets/js/bootstrap.min.js"></script>
    <script src="./shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="./shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="./shop-cart/assets/js/shop.js"></script>
    <dec:getProperty property="page.script"></dec:getProperty>
</body>
</html>
