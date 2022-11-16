<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <div id="sidebar" class="span3">
            <div class="well well-small">
                <ul class="nav nav-list">
                    <c:forEach items="${listC}" var="c">
                        <li><a href="category?categoryId=${c.categoryId}"><span class="icon-chevron-right"></span>${c.categoryName}</a></li>
                    </c:forEach>
                    <li style="border:0"> &nbsp;</li>
                    <c:set var="total" value="0"></c:set>
                    <c:forEach items="${sessionScope.cart}" var="c">
                    <c:set var="total" value="${total + c.value.quanty*c.value.product.price}"></c:set>
                    <li> <a class="totalInCart" href="#"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">${total}</span></strong></a></li>
                    </c:forEach>
                </ul>
            </div>

            <div class="well well-small alert alert-warning cntr">
                <h2>50% Discount</h2>
                <p> 
                    only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
                </p>
            </div>
            <div class="well well-small" ><a href="#"><img src="./shop-cart/assets/img/paypal.jpg" alt="payment method paypal"></a></div>

            <a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
            <br>
            <br>
            <ul class="nav nav-list promowrapper">
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="./shop-cart/assets/img/bootstrap-ecommerce-templates.PNG" alt="bootstrap ecommerce templates">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
                <li style="border:0"> &nbsp;</li>
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="./shop-cart/assets/img/shopping-cart-template.PNG" alt="shopping cart template">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
                <li style="border:0"> &nbsp;</li>
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="./shop-cart/assets/img/bootstrap-template.png" alt="bootstrap template">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
            </ul>

        </div>
