<%-- 
    Document   : header
    Created on : 05-08-2022, 16:23:12
    Author     : MND PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

    <body>
       <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="topNav">
                <div class="container">
                    <div class="alignR">
                        <div class="pull-left socialNw">
                            <a href="<c:url value="https://www.twitter.com/" />"><span class="icon-twitter"></span></a>
                            <a href="<c:url value="https://www.facebook.com/" />"><span class="icon-facebook"></span></a>
                            <a href="<c:url value="https://www.youtube.com/" />"><span class="icon-youtube"></span></a>
                            <a href="<c:url value="https://www.tumblr.com/" />"><span class="icon-tumblr"></span></a>
                        </div>
                        <a class="active" href="index.html"> <span class="icon-home"></span> Home</a>                          
                        <c:if test="${sessionScope.userss != null}">
                            <a href="#"><span class="icon-user"></span>Xin chào, ${sessionScope.userss.user}</a>
                        <a href="logout"><span  class="icon-signin"></span>Thoát</a>
                        </c:if>
                        <c:if test="${sessionScope.userss == null}">
                        <a href="./login.jsp"><span class="icon-edit"></span> Đăng ký/Đăng nhập </a>
                        </c:if>
                        <a href="#"><span class="icon-envelope"></span> Liên hệ</a>
                        <a href="./cart.jsp"><span class="icon-shopping-cart"></span><span class="badge badge-warning"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
