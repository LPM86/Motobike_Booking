

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="header.jsp"></jsp:include>

        <!-- Slider -->


        <section class="section-slide">
            <div class="wrap-slick1">
                <div class="slick1">    
                    <div class="item-slick1" style="background-image: url(images/slide-03.jpg);">
                        <div class="container h-full">
                            <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                <div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
                                    <span class="ltext-101 cl2 respon2">
                                    <%
String mess = (String) request.getAttribute("mess");
if (mess != null) {
                                    %>
                                    <h3 style="color: red" id="message">${mess}</h3>
                                    <%
                                        }
                                    %>

                                    <script type="text/javascript">
                                        // Hàm để ẩn thông báo sau 2 giây
                                        function hideMessage() {
                                            var messageElement = document.getElementById("message");
                                            if (messageElement) {
                                                setTimeout(function () {
                                                    messageElement.style.display = "none";
                                                }, 2500); // 2 giây
                                            }
                                        }

                                        // Gọi hàm hideMessage khi trang đã tải xong
                                        window.onload = hideMessage;
                                    </script>
                                </span>
                            </div>

                            <div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                    Motorbike Booking

                                </h2>
                            </div>

                                                     <div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
                                                            <a href="home" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                                                Book Now
                                                            </a>
                                                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Product -->


    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            <div class="p-b-10">
                <h3 class="ltext-103 cl5">
                    Tổng Quan Về Sản Phẩm
                </h3>
            </div>



            <!-- Filter -->    <!-- Product -->
            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">            
                    <div class="filter">
                        <form action="filter" method="get">
                            <label for="province" ><strong>Loại Hàng</strong></label>
                            <select name="CateID" >
                                <option value="all">Tất Cả</option>
                                <c:forEach items="${listC}" var="c">
                                    <!-- comment --><option value="${c.getID()}">${c.getName()}</option>
                                </c:forEach>
                                    
                            </select>
                            <label for="sort"> <strong>Giá:</strong></label>
                            <select name="sort" id="sort" >
                                <option value="asc" ${"asc".equals(sortType) ? "selected" : ""}>Tăng Dần</option>
                                <option value="desc" ${"desc".equals(sortType) ? "selected" : ""}>Giảm Dần</option>
                            </select>
                            <input type="submit" value="Lọc">
                        </form>
                    </div>


                </div>

                <div class="flex-w flex-c-m m-tb-10">
                    <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                        <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                        <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                        Tìm Kiếm
                    </div>
                </div>

                <!-- Search product -->
                <div class="dis-none panel-search w-full p-t-10 p-b-15">
                    <form action="search" method="get" class="bor8 dis-flex p-l-15">
                        <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="txt" value="${txt}" >
                        <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                            <i class="zmdi zmdi-search">Tìm Kiếm</i>
                        </button>

                    </form> 

                </div>

                <!-- Filter -->
                <div class="dis-none panel-filter w-full p-t-10">
                    <form action="home" method="get" class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">


                        <div class="filter-col2 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Loại Hàng
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <input type="radio" name="categoryId" value="all"> Tất cả
                                </li>
                                <c:forEach items="${listC}" var="c">
                                    <li class="p-b-6">
                                        <input type="radio" name="categoryId" value="${c.ID}"> ${c.name}
                                    </li>
                                </c:forEach>

                            </ul>
                        </div>

                        <div class="filter-col1 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Sắp Xếp
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <input type="radio" name="sort" value="asc"> Price: Low to High
                                </li>

                                <li class="p-b-6">
                                    <input type="radio" name="sort" value="desc"> Price: High to Low
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col1 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                <input type="submit" value="Filter">
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row isotope-grid">
                <c:forEach items="${listP}" var="p"> 
                    <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                        <!-- Block2 -->
                        <div class="block2">
                            <div class="block2-pic hov-img0">
                                <a href="productdetail?ID=${p.getID()}">
                                    <img src="images/product/${p.image}" alt="IMG-PRODUCT">
                                </a>
                                <c:if test="${sessionScope.account == null}">
                                    <a href="login.jsp" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
                                        Thêm Vào Giỏ Hàng
                                    </a>
                                </c:if> 

                                <c:if test="${sessionScope.account.role == 2}">
                                    <a href="cart?productID=${p.getID()}" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
                                       Thêm Vào Giỏ Hàng
                                    </a>
                                </c:if> 
                            </div>

                            <div class="block2-txt flex-w flex-t p-t-14">
                                <div class="block2-txt-child1 flex-col-l ">
                                    <a href="productdetail?ID=${p.getID()}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                        ${p.name}
                                    </a>

                                    <span class="stext-105 cl2">
                                        ${p.price} VNÐ
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </section>


    <!-- Footer -->
    <jsp:include page="footer.jsp"></jsp:include>




</body>
</html>