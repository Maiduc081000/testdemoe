<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddProduct</title>
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
    </head>
    <body>
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

                    <div id="addEmployeeModal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="addprodct" method="POST" enctype="multipart/form-data">
                                    <div class="modal-header">						
                                        <h4 class="modal-title">Thêm sản phẩm</h4>
                                    </div>
                                    <div style="margin-left: 200px" class="span4">
                                        <div class="span5">
                                            <label>Tên</label>
                                            <input name="name" type="text" placeholder="Nhập tên sản phẩm" class="form-control" required>
                                        </div>
                                        <div class="span5">
                                            <label>Hình ảnh</label>
                                            <input name="file" type="file" accept="image/*" class="form-control" required>
                                        </div>
                                        <div class="span5">
                                            <label>Giá</label>
                                            <input name="price" type="text" placeholder="Nhập giá tiền" class="form-control" required>
                                        </div>
                                        <div class="span5">
                                            <label>Tiêu đề</label>
                                            <textarea name="title" placeholder="Nhập tiêu đề" class="form-control" required></textarea>
                                        </div>
                                        <div class="span5">
                                            <label>Nội dung</label>
                                            <textarea name="description" placeholder="Nhập nội dung" class="form-control" required></textarea>
                                        </div>
                                        <div class="span6">
                                            <label>Thể loại</label>
                                            <select name="category" class="form-select" aria-label="Default select example">
                                            <c:forEach items="${listC}" var="c">
                                                <option value="${c.categoryId}">${c.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" value="Thêm">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="Include/section.jsp"></jsp:include>

            <jsp:include page="Include/footer.jsp"></jsp:include>
            </div><!-- /container -->

        <jsp:include page="/Include/copyright.jsp"></jsp:include>
        <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="./shop-cart/assets/js/jquery.js"></script>
        <script src="./shop-cart/assets/js/bootstrap.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
        <script src="./shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="./shop-cart/assets/js/shop.js"></script>
        <script src="./js/manager.js" type="text/javascript"></script>
    </body>
</html>
