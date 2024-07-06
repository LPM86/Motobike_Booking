<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>Home</title>
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
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-Kw/8feRJfO4tH0x4R3RUEvoLWEmTLth7P/7bEjJJT11t3y3PTDjOX+eNcEJ+bo7ylEDyvq4pqRkX7g0H4QVc7A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <style>
        .filter {
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            text-align: center;
            display: flex;
            justify-content: center;
            max-width: 600px;
            margin: 0 auto;
        }

        .filter form {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .filter label {
            font-weight: bold;
        }

        .filter select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

        .filter input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .filter input[type="submit"]:hover {
            background-color: #0056b3;

        </style>
        <!--===============================================================================================-->
    </head>
    <body class="animsition">

        <!-- Header -->
        <header>
            <!-- Header desktop -->
            <div class="container-menu-desktop">
                <!-- Topbar -->
                <div class="top-bar">
                    <div class="content-topbar flex-sb-m h-full container">
                        <div class="left-top-bar">
                        </div>

                        <div class="right-top-bar flex-w h-full">
                            <c:if test="${sessionScope.account == null}">
                                <a href="login.jsp" class="flex-c-m trans-04 p-lr-25">
                                    Login
                                </a> 
                            </c:if>


                            <c:if test="${sessionScope.account != null}">
                                <a href="logout" class="flex-c-m trans-04 p-lr-25">
                                    Logout
                                </a> 
                            </c:if>

                        </div>
                    </div>
                </div>

                <div class="wrap-menu-desktop">
                    <nav class="limiter-menu-desktop container">

                        <!-- Logo desktop -->		
                        <a href="home" class="logo">
                            <img src="images/icons/logo-01.png" alt="IMG-LOGO">
                        </a>

                        <!-- Menu desktop -->
                        <div class="menu-desktop">
                            <ul class="main-menu">
                                <li class="active-menu">
                                    <a href="home">Home</a>
                                </li>


                                

                               

                               
                                <c:if test="${sessionScope.account.role == 1}">
                                    <li class="active-menu">
                                        <a href="listrequest">View Request</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.account.role == 1}">
                                    <li class="active-menu">
                                        <a href="listproduct">Manager Product</a>
                                    </li>
                                </c:if>

                            </ul>
                        </div>	

                        <div class="wrap-icon-header flex-w flex-r-m">
                            <c:if test="${sessionScope.account == null}">
                                <a href="login.jsp" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="${num}">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </a>
                            </c:if>
                            
                             <c:if test="${sessionScope.account.role == 2}">
                                <a href="cart.jsp" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="${num}">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </a>
                            </c:if>
                        </div>

                    </nav>
                </div>	
            </div>
        </header>