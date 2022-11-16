<%-- 
    Document   : taskbar
    Created on : 05-08-2022, 17:08:00
    Author     : MND PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<header id="header">
    <div class="row">
        <div class="span4">
            <h1>
                <a class="logo" href="<c:url value="/home"/>">
                    <img src="./shop-cart/assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
                </a>
            </h1>
        </div>
        <div class="span4">
            <div class="offerNoteWrapper">
            </div>
        </div>
        <div class="span4 alignR">
            <p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br><br></p>
            <a href="<c:url value="/cart" />"><span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span></a>
            <span class="btn btn-warning btn-mini">$</span>
            <span class="btn btn-mini">&pound;</span>
            <span class="btn btn-mini">&euro;</span>
        </div>
    </div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active"><a href="<c:url value="/home" />">Trang chủ</a></li>
                    <c:if test="${sessionScope.userss.isBuy == 0}">
                    <li class="active"><a href="./cart.jsp">Giỏ hàng</a></li>
                    </c:if>

                    <c:if test="${sessionScope.userss.isAdmin == 1}">
                        <li class="active"><a href="<c:url value="/listproduct" />">Danh sách sản phẩm</a></li>
                        <li class="active"><a href="<c:url value="/showbill" />">Hóa đơn</a></li>
                        </c:if>
                </ul>
                <form action="search" method="post" class="navbar-search pull-left">
                    <input type="text" name="txt" placeholder="Search" class="search-query span2">
                    <button type="submit" ><i class="icon-search"></i>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
