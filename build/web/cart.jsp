

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Shoping Cart</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
        <style>
            /* Định dạng tiêu đề */
            h2 {
                color: #333;
                margin-top: 0; /* Loại bỏ khoảng cách trên đầu tiêu đề */
            }

            /* Định dạng breadcrumb */
            .breadcrumb-section {
                padding: 50px 0; /* Giảm khoảng cách giữa breadcrumb và phần nội dung */
            }

            .breadcrumb__option a {
                color: #333;
                text-decoration: none;
            }

            /* Định dạng bảng giỏ hàng */
            .shoping__cart__table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 30px;
            }

            .shoping__cart__table th, .shoping__cart__table td {
                border: 1px solid #ddd;
                padding: 15px; /* Tăng khoảng cách bên trong ô */
                text-align: left;
            }

            /* Định dạng ảnh sản phẩm */
            .shoping__cart__item img {
                max-width: 100px;
                height: auto;
                display: block; /* Đảm bảo ảnh được hiển thị mỗi hàng */
                margin: auto; /* Căn giữa ảnh */
            }

            /* Định dạng input số lượng */
            .quantity input[type="number"] {
                width: 50px;
                padding: 5px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            /* Định dạng nút cộng trừ */
            .quantity input[type="submit"] {
                background-color: #333;
                color: #fff;
                border: none;
                padding: 5px 10px;
                cursor: pointer;
                border-radius: 5px;
            }

            /* Định dạng nút "Back to home" và "Countine to Buy" */
            .cart-btn, .primary-btn {
                display: inline-block;
                padding: 10px 20px;
                background-color: #333;
                color: #fff;
                text-decoration: none;
                transition: background-color 0.3s;
                border-radius: 5px;
            }

            .cart-btn:hover, .primary-btn:hover {
                background-color: #555;
            }


        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="breadcrumb__text">
                                <h2>Shopping Cart</h2>
                                <div class="breadcrumb__option">
                                    <a href="home">Home</a>
                                    <span>Shopping Cart</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Shoping Cart Section Begin -->
            <section class="shoping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shoping__cart__table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="shoping__product">Products</th>
                                            <th>Price per day</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <tbody>
                                    <form action="cart" method="post" > 
                                    <c:if test="${not empty cart}">
                                        <c:forEach items="${cart}" var="product">

                                            <tr>
                                                <td class="shoping__cart__item">
                                                    <img src="images/product/${product.image}" alt="ProductImage">
                                                    <h5>${product.getName()}</h5>
                                                </td>
                                                <td class="shoping__cart__price">
                                                    ${product.getPrice()}_VND
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <div class="quantity">
                                                        <div>
                                                            <input value="+" type="submit" onclick="increaseQuantity(${product.getID()})">
                                                        </div>
                                                        <div>
                                                            <input type="hidden" name="productID" value="${product.getID()}"/>
                                                            <input readonly type="number" id="quantity_${product.getID()}" name="quantity" value="${product.getQuantity()}" />
                                                        </div>
                                                        <div>
                                                            <input value="-" type="submit" onclick="decreaseQuantity(${product.getID()})">
                                                        </div>

                                                    </div>
                                                </td>
                                                <td class="shoping__cart__total">
                                                    ${product.getPrice() * product.getQuantity()}_VND
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </c:if>


                                    <c:if test="${empty cart}">
                                        <tr>
                                            <td colspan="4">No items in the cart</td>
                                        </tr>
                                    </c:if>

                                </form>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="shoping__cart__btns">
                            <a href="home" class="btn btn-primary cart-btn">Back to home</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>Cart Total</h5>
                            <ul>
                                <li>Total <span>${total}_VND</span></li>
                            </ul>   

                            <c:if test="${!empty cart}">
                                <a href="checkout.jsp" class="primary-btn">Countine to received</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->

        <jsp:include page="footer.jsp"></jsp:include>     


        <script>
            function increaseQuantity(productID) {
                var quantityInput = document.getElementById("quantity_" + productID);
                quantityInput.value = parseInt(quantityInput.value) + 1;
            }

            function decreaseQuantity(productID) {
                var quantityInput = document.getElementById("quantity_" + productID);
                var currentQuantity = parseInt(quantityInput.value);
                if (currentQuantity >= 1) {
                    quantityInput.value = currentQuantity - 1;
                }
                if (quantityInput.value == 0) {
                    window.location.href = "home.jsp";
                }
            }
        </script>




        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <!-- Thêm mã JavaScript -->



        <!-- comment -->


    </body>
</html>
















<!--        <script>
                                                            function increaseQuantity(productID) {
                                                                var quantityInput = document.getElementById("quantity_" + productID);
                                                                quantityInput.value = parseInt(quantityInput.value) + 1;
                                                            }

                                                            function decreaseQuantity(productID) {
                                                                var quantityInput = document.getElementById("quantity_" + productID);
                                                                var currentQuantity = parseInt(quantityInput.value);
                                                                if (currentQuantity >= 1) {
                                                                    quantityInput.value = currentQuantity - 1;
                                                                }
                                                            }
        </script>-->