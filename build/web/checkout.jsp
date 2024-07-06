<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Helo</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <style>
            /* Custom breadcrumb section */
            .breadcrumb-section {
                padding: 80px 0;
                text-align: center;
                background-size: cover;
            }
            .breadcrumb__text h2 {
                font-size: 36px;
                color: #333;
                margin-bottom: 10px;
            }
            .breadcrumb__option a {
                color: #333;
                text-decoration: none;
            }
            .breadcrumb__option span {
                color: #333;
            }

            /* Custom checkout section */
            .checkout.spad {
                padding: 60px 0;
            }
            .checkout__input p {
                margin-bottom: 20px;
                font-size: 16px;
                color: #333;
            }
            .checkout__input input[type="text"],
            .checkout__input input[type="number"],
            .checkout__input input[type="datetime-local"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ebebeb;
                border-radius: 5px;
                font-size: 16px;
                color: #333;
            }
            .checkout__input input[type="text"]::placeholder,
            .checkout__input input[type="number"]::placeholder,
            .checkout__input input[type="datetime-local"]::placeholder {
                color: #999;
            }
            .columnn {
                display: flex;
                flex-direction: column;
            }

            /* Custom checkout order section */
            .checkout__order {
                background-color: #f4f4f4;
                padding: 30px;
                border-radius: 10px;
            }
            .checkout__order-title {
                font-size: 24px;
                color: #333;
                margin-bottom: 20px;
            }
            .checkout__order-products {
                font-size: 18px;
                font-weight: bold;
                margin-bottom: 10px;
                color: #333;
            }
            .checkout__order-list {
                padding: 0;
                margin: 0;
                list-style: none;
            }
            .checkout__order-item {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 0;
                border-bottom: 1px solid #ebebeb;
            }
            .checkout__order-item-name,
            .checkout__order-item-price {
                font-size: 16px;
                color: #333;
            }
            .checkout__order-item-price {
                font-weight: bold;
            }
            .checkout__order-total {
                margin-top: 20px;
                font-size: 20px;
                font-weight: bold;
                color: #333;
            }
            .site-btn {
                display: block;
                width: 100%;
                padding: 15px 0;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .site-btn:hover {
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
                                <h2 style="font-weight: bolder; color: red">Checkout</h2>
                                <div class="breadcrumb__option">
                                    <a href="content">Home</a>
                                    <span>Checkout</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Checkout Section Begin -->
            <section class="checkout spad">
                <div class="container">
                    <div class="row">
                        <!-- Phần nhập thông tin người mua bên trái -->
                        <div class="col-lg-6">
                            <form action="checkout" method="get">
                                <div class="checkout__input">
                                    <p style="font-weight: 100; color: red"> Name<span>*</span></p>
                                    <input placeholder="Fullname" type="text" name="name" required>
                                </div>
                                <div class="checkout__input">
                                    <p style="font-weight: 100; color: red">Address<span>*</span></p>
                                    <input name="address" type="text" required placeholder="Street Address" class="checkout__input__add">
                                </div>
                                <div class="checkout__input">
                                    <p style="font-weight: 100; color: red">Phone<span>*</span></p>
                                    <input placeholder="Phone" type="number" name="phone" required>
                                </div>
                                <div class="columnn">
                                    <div class="checkout__input">
                                        <label style="font-weight: 100; color: red">Received Date</label>
                                        <input type="datetime-local" id="start-time"  name="createdDate" required />
                                    </div>
                                    <div class="checkout__input">
                                        <label style="font-weight: 100; color: red">Return Date</label>
                                        <input type="datetime-local" id="end-time"  name="finishDate" required />
                                    </div>
                                </div>

                                <!-- comment -->          

                                <!--       <script>
                                                                    // Lấy thời gian hiện tại
                                                                    var currentTime = new Date();
                                
                                                                    // Thêm 1 giờ vào thời gian hiện tại
                                                                    currentTime.setHours(currentTime.getHours() + 1);
                                
                                                                    // Định dạng chuỗi YYYY-MM-DDTHH:MM
                                                                    var minStartTime = currentTime.toISOString().slice(0, 16);
                                
                                                                    // Thiết lập giá trị tối thiểu cho input thời gian bắt đầu
                                                                    document.getElementById("start-time").setAttribute("min", minStartTime);
                                
                                                                    // Xử lý sự kiện khi giá trị thời gian bắt đầu thay đổi
                                                                    document.getElementById("start-time").addEventListener("input", function () {
                                                                        var startTime = new Date(this.value);
                                
                                                                        // Thêm 1 giờ vào thời gian bắt đầu
                                                                        startTime.setHours(startTime.getHours() + 1);
                                
                                                                        // Định dạng chuỗi YYYY-MM-DDTHH:MM
                                                                        var minEndTime = startTime.toISOString().slice(0, 16);
                                
                                                                        // Thiết lập giá trị tối thiểu cho input thời gian kết thúc
                                                                        document.getElementById("end-time").setAttribute("min", minEndTime);
                                                                    });
                                                                </script>-->

                        </div>
                        <!-- Phần Your Order bên phải -->
                        <div class="col-lg-6">
                            <div class="checkout__order">
                                <h4 class="checkout__order-title"  style="font-weight: bold; color: red">Your Order</h4>
                                <div class="checkout__order-products">Products <span>Total</span></div>
                                <ul class="checkout__order-list">

                                <c:forEach items="${cart}" var="p">
                                    <li class="checkout__order-item">
                                        <input type="hidden" name="productID" value="${p.getID()}">
                                        <input type="text" value="${p.getName()}" readonly class="checkout__order-item-name">
                                        <input type="text" name="quantity" value="${p.getQuantity()} x ${p.getPrice()}= ${p.getQuantity() * p.getPrice() } VND" readonly class="checkout__order-item-price">
                                    </li>
                                </c:forEach>
                                <li class="checkout__order-item">
                                    <p style="font-weight: bolder; color: black" class="checkout__order-item-name">Sub total</p>
                                    <p style="font-weight: bolder; color: black" class="checkout__order-item-name">${total} VND</p>
                                </li>
                            </ul>
                            <div>
                                <label style="font-weight: bold; color: black; display: inline-block;">Number of days rented: </label>
                                <span style="font-weight: 100; color: black; display: inline-block;" id="number-of-days"></span>
                            </div>

                            <div class="checkout__order-total">
                                <label style="font-weight: bold; color: red; display: inline-block;">Total: </label>
                                <input type="text" id="total-amount-input" name="total" readonly>
                            </div>



                            <button type="submit" class="site-btn">PLACE ORDER</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>

        <!-- Checkout Section End -->

        <jsp:include page="footer.jsp"></jsp:include>

            Js Plugins 
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var startTimeInput = document.getElementById("start-time");
                    var endTimeInput = document.getElementById("end-time");
                    var totalElement = document.getElementById("total-amount"); // Element chứa tổng thành tiền
                    var rentDayElement = document.getElementById("number-of-days");

                    startTimeInput.addEventListener("change", function () {
                        calculateTotal();
                    });

                    endTimeInput.addEventListener("change", function () {
                        calculateTotal();
                    });

                    function calculateTotal() {
                        var startTime = new Date(startTimeInput.value);
                        var endTime = new Date(endTimeInput.value);

                        // Chuyển đổi thành số ngày tính từ 00:00:00 ngày đầu tiên đến 00:00:00 ngày cuối cùng
                        var timeDiff = endTime.getTime() - startTime.getTime();
                        var daysDiff = Math.ceil(timeDiff / (1000 * 3600 * 24)) + 1; // Số ngày thuê là giá trị nguyên

                        // Tính tổng thành tiền
                        var total = parseFloat(${total}); // Lấy tổng thành tiền hiện tại
                        var totalPrice = total * daysDiff;

                        // Cập nhật tổng thành tiền
                        // Cập nhật giá trị của thẻ input total
                        document.getElementById("total-amount-input").value = totalPrice.toFixed(0) + " VND";
                        rentDayElement.textContent = daysDiff;
                    }
                });

        </script>


        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
