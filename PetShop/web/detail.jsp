<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Detail</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
            }

            .container {
                margin-top: 40px;
            }

            .product-card {
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                background-color: #fff;
                padding: 20px;
                display: flex;
            }

            .product-card-image {
                width: 300px;
            }

            .product-card-image img {
                width: 100%;
                height: auto;
            }

            .product-card-details {
                flex: 1;
                padding-left: 20px;
            }

            .product-card-title {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 20px;
            }

            .product-card-price {
                font-size: 28px;
                font-weight: bold;
                color: #ee4d2d;
                margin-bottom: 20px;
            }

            .product-card-description {
                margin-bottom: 20px;
            }

            .product-card-quantity {
                margin-bottom: 20px;
            }

            .product-card-quantity input[type="number"] {
                width: 80px;
                padding: 4px 8px;
                border-radius: 4px;
                border: 1px solid #e0e0e0;
                text-align: center;
            }

            .product-card-quantity .quantity-buttons {
                display: flex;
                align-items: center;
                margin-top: 4px;
            }

            .product-card-quantity .quantity-button {
                display: inline-block;
                width: 24px;
                height: 24px;
                background-color: #e0e0e0;
                border-radius: 4px;
                text-align: center;
                cursor: pointer;
                margin: 0 4px;
            }

            .product-card-quantity .quantity-button:hover {
                background-color: #ccc;
            }

            .product-card-buttons {
                display: flex;
                justify-content: space-between;
            }

            .product-card-button {
                padding: 12px 24px;
                font-size: 16px;
                font-weight: bold;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .product-card-button-primary {
                color: #fff;
                background-color: #ee4d2d;
                border: none;
            }

            .product-card-button-primary:hover {
                background-color: #c1381f;
            }

            .product-card-button-secondary {
                color: #ee4d2d;
                background-color: transparent;
                border: 1px solid #ee4d2d;
            }

            .product-card-button-secondary:hover {
                color: #fff;
                background-color: #ee4d2d;
                border-color: #ee4d2d;
            }

            .product-card-quantity input[type="tel"] {
                width: 70px;
                height: 30px;
                padding: 4px 8px;
                border-radius: 4px;
                border: 1px solid #e0e0e0;
                text-align: center;
            }
        </style>
        <style>
            li a, .dropbtn {
                display: inline-block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }


            li a:hover, .dropdown:hover .dropbtn {
                background-color: red;
                text-decoration: none;

            }

            li.dropdown {
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {background-color: #f1f1f1;}

            .dropdown:hover .dropdown-content {
                display: block;


            }

            .containe {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 35px;
            }

            .inpu {
                max-width: 190px;
                height: 100%;
                outline: none;
                font-size: 14px;
                font-weight: 500;
                background-color: #53535f;
                caret-color: #f7f7f8;
                color: #fff;
                padding: 7px 10px;
                border: 2px solid transparent;
                border-top-left-radius: 7px;
                border-bottom-left-radius: 7px;
                margin-right: 1px;
                transition: all .2s ease;
            }

            .inpu:hover {
                border: 2px solid rgba(255, 255, 255, 0.16);
            }

            .inpu:focus {
                border: 2px solid #a970ff;
                background-color: #0e0e10;
            }

            .search__btn {
                border: none;
                cursor: pointer;
                background-color: rgba(42, 42, 45, 1);
                border-top-right-radius: 7px;
                border-bottom-right-radius: 7px;
                height: 100%;
                width: 30px;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .search__btn:hover {
                background-color: rgba(54, 54, 56, 1);
            }

            .truncated-title {
                display: inline-block;
                width: 100%; /* Adjust the width as needed */
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }

            .item-pro{
                margin-bottom: 30px;

            }

            .button {
                --width: 100px;
                --height: 35px;
                --tooltip-height: 35px;
                --tooltip-width: 90px;
                --gap-between-tooltip-to-button: 18px;
                --button-color: #d543d5;
                --tooltip-color: #d543d5;
                width: var(--width);
                height: var(--height);
                background: var(--button-color);
                position: relative;
                text-align: center;
                border-radius: 0.45em;
                font-family: "Arial";
            }

            .text {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .button-wrapper,
            .text,
            .icon {
                overflow: hidden;
                position: absolute;
                width: 100%;
                height: 100%;
                left: 0;
                color: #fff;
            }
            .button{
                margin-right:  10px;

            }
            .text {
                top: 0;
            }

            .text,
            .icon {
                transition: top 0.5s;
            }

            .icon {
                color: #fff;
                top: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .icon svg {
                width: 24px;
                height: 24px;
            }

            .button:hover {
                background: #d543d5;
            }

            .button:hover .text {
                top: -100%;
            }

            .button:hover .icon {
                top: 0;
            }

            .button:hover:before {
                opacity: 1;
                visibility: visible;
            }

        </style>
    </head>

    <body>
        <nav style="background-color:#ff9933"    class="navbar navbar-expand-md">
            <div  class="container">
                <a class="navbar-brand" href="LoadController"><img style="width: 65px; height: 65px" src="logo.jpg"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="">
                            <c:if test="${not empty login_user}">
                                <a class="" href="#">Hello ${login_user.username}</a>
                            </c:if>
                        </li>
                        <li  class="">
                            <form style="padding: 10px" action="SearchController" method="get">

                                <div class="containe">
                                    <input style="background-color:white; color: black" value="${txs}" type="text" class="inpu" name="search" placeholder="Search...">
                                    <button type="submit" class="search__btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22">
                                        <path d="M18.031 16.6168L22.3137 20.8995L20.8995 22.3137L16.6168 18.031C15.0769 19.263 13.124 20 11 20C6.032 20 2 15.968 2 11C2 6.032 6.032 2 11 2C15.968 2 20 6.032 20 11C20 13.124 19.263 15.0769 18.031 16.6168ZM16.0247 15.8748C17.2475 14.6146 18 12.8956 18 11C18 7.1325 14.8675 4 11 4C7.1325 4 4 7.1325 4 11C4 14.8675 7.1325 18 11 18C12.8956 18 14.6146 17.2475 15.8748 16.0247L16.0247 15.8748Z" fill="#efeff1"></path>
                                        </svg>
                                    </button>
                                </div>
                            </form>

                        </li> 

                        <li  class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">Sản phẩm</a>
                            <div class="dropdown-content">
                                <c:forEach items="${listCC}" var="category">
                                    <a href="LoadController?category=${category.cid}">${category.cname}</a>
                                </c:forEach>
                            </div>
                        </li>

                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">Account</a>
                            <div class="dropdown-content">
                                <c:choose>
                                    <c:when test="${empty login_user}">
                                        <a href="login.jsp">Login</a>
                                        <a href="create.jsp">Sign-up</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="LogoutController">Logout</a>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>
                        <li class="">
                            <a href="cart.jsp">
                                <i class="fas fa-shopping-cart"></i>
                                <span class="badge badge-light">3</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

        <div class="container">

            <div class="product-card">
                <div class="product-card-image">
                    <img src="${detail.image}" alt="Product Image">
                </div>


                <div class="product-card-details">
                    <h3 class="product-card-title">${detail.name}</h3>
                    <p class="product-card-price">
                        <fmt:formatNumber value="${detail.price}" pattern="#,###" /> ₫
                    </p>
                    <p class="product-card-description">
                        <strong>Mô tả:</strong><br>
                        ${detail.title}
                    </p>
                    <p class="product-card-description">
                        <strong>Chi tiết sản phẩm:</strong><br> 
                        ${detail.description}
                    </p>
                    <div class="product-card-quantity">
                        <label for="quantity">Quantity:</label>
                        <div class="quantity-buttons">
                            <button class="quantity-button decrement">-</button>
                            <input style="" type="tel" name="quantity" value="1" min="1">
                            <button class="quantity-button increment">+</button>
                        </div>
                    </div>
                    <div class="product-card-buttons">
                        <a style="text-decoration: none" href="LoadController" class="product-card-button product-card-button-primary">
                            <i class="fas fa-shopping-cart"></i> Back
                        </a>

                        <form action="AddCartVip" method="post">

                            <input type="hidden" value="${detail.id}" name="proid"> 
                            <input style="display: none" type="tel" name="hiddenQuantity" value="1" min="1">

                            <button type="submit" style="text-decoration: none" class="product-card-button product-card-button-secondary">
                                <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                        </form>

                    </div>
                </div>

            </div>

        </div>
        <footer style="background-color:#ff9933" class="text-light">
            <div class="container">
                <div style="padding-top: 20px" class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>About us</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">
                            Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                        </p>
                    </div>

                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                        <h5>Informations</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                        </ul>
                    </div>

                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                        <h5>Others links</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                        </ul>
                    </div>

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5>Contact</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-home mr-2"></i> My company</li>
                            <li><i class="fa fa-envelope mr-2"></i> email@example.com</li>
                            <li><i class="fa fa-phone mr-2"></i> + 33 12 14 15 16</li>
                            <li><i class="fa fa-print mr-2"></i> + 33 12 14 15 16</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        <p class="float-left">
                            <a href="#">Back to top</a>
                        </p>

                    </div>
                </div>
            </div>
        </footer> 
        <script>
            const quantityInput = document.querySelector('input[name="quantity"]');
            const incrementButton = document.querySelector('.increment');
            const decrementButton = document.querySelector('.decrement');
            const hiddenQuantityInput = document.querySelector('input[name="hiddenQuantity"]');

            incrementButton.addEventListener('click', () => {
                const currentValue = parseInt(quantityInput.value);
                quantityInput.value = currentValue + 1;
                hiddenQuantityInput.value = quantityInput.value;
            });

            decrementButton.addEventListener('click', () => {
                const currentValue = parseInt(quantityInput.value);
                if (currentValue > 1) {
                    quantityInput.value = currentValue - 1;
                    hiddenQuantityInput.value = quantityInput.value;
                }
            });
        </script>  
    </body>

</html>
