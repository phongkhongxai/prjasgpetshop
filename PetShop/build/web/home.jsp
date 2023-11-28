<%-- 
    Document   : home
    Created on : Jul 7, 2023, 10:34:22 PM
    Author     : truon
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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
            <div class="container">
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
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">Sản phẩm</a>
                            <div class="dropdown-content">
                                <c:forEach items="${listCC}" var="category">
                                    <a href="LoadController?category=${category.cid}" onclick="updateCategoryName('${category.cname}')">${category.cname}</a>
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
        <section class=" ">
            <div style="margin-bottom: 40px" class="">
                <image style="width: 100%; height: 500px" src="https://static.vecteezy.com/system/resources/previews/007/301/684/original/pet-shop-banner-design-template-cartoon-illustration-of-cats-dogs-house-food-vector.jpg"/>
            </div>
        </section>

        <div class="container" style="align-items: center">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><i class="material-icons"></i><a style="color: black; padding: 0px " href="LoadController">Home</a></li>
                                <li class="breadcrumb-item"><a style="color: black; padding: 0px " href="LoadController">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="page" id="categoryItem">${cname}</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div>
                <label>Sắp xếp</label>
                <select id="sortDropdown">
                    <option value="default">Mặc định</option>
                    <option value="nameAZ">Sắp xếp theo tên (A-Z)</option>
                    <option value="nameZA">Sắp xếp theo tên (Z-A)</option>
                    <option value="priceLow">Sắp xếp theo giá (Nhỏ -> Lớn)</option>
                    <option value="priceHigh">Sắp xếp theo giá (Lớn -> Nhỏ)</option> 
                </select>
            </div>

            <div class="row" style="text-align: center">
                <c:forEach items="${listP}" var="o">
                    <div class="col-12 col-md-6 col-lg-3 item-pro">
                        <div class="card">
                            <a href="DetailController?proid=${o.id}" title="View Product">
                                <img class="card-img-top" src="${o.image}" alt="Card image cap">
                            </a>
                            <div class="card-body">
                                <h4 name="tuananhbay" class="card-title show_txt"><a href="DetailController?proid=${o.id}" title="View Product"><span class="truncated-title">${o.name}</span></a></h4>
                                <p class="card-text show_txt">
                                    <span class="truncated-title">${o.title}</span>
                                </p>

                                <div class="row">
                                    <div  style="padding: 0px" class="col">
                                        <p class="" style=" color: purple; font-weight: bold; font-size: 18px;">
                                            <fmt:formatNumber value="${o.price}" pattern="#,###" /> ₫
                                        </p>
                                    </div>
                                    <div class="col button">
                                        <form action="AddCart" method="post">
                                            <input type="hidden" value="${o.id}" name="proId"/>
                                            <div class="button-wrapper">
                                                <div class="text">Buy Now</div>
                                                <button style="text-decoration: none;  top: 0; left: 0; width: 100%; height: 100%; border: none; background: none;" type="submit">
                                                    <span class="icon">
                                                        <svg viewBox="0 0 16 16" class="bi bi-cart2" fill="currentColor" height="16" width="16" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"></path>
                                                        </svg>
                                                    </span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>

        <footer  style="background-color:#ff9933; padding-top: 20px" class="text-light">
            <div class="container">
                <div class="row">
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
            
        </script>

        <script>
            var sortDropdown = document.getElementById("sortDropdown");

            // Check if a selected value is stored in local storage
            var selectedValue = localStorage.getItem("selectedSortValue");
            if (selectedValue) {
                sortDropdown.value = selectedValue; // Set the dropdown's value to the stored selected value
            }

            sortDropdown.addEventListener("change", function () {
                var selectedValue = this.value;
                var url = ""; // Set the appropriate URL for your sorting endpoint

                switch (selectedValue) {
                    case "default":
                        // Sort by default (do nothing or reload the original page)
                        url = "LoadController";
                        break;
                    case "nameAZ":
                        url = "LoadController?sort=name"; // Set the URL for sorting by name (A-Z)
                        break;
                    case "nameZA":
                        url = "LoadController?sort=name-desc"; // Set the URL for sorting by name (Z-A)
                        break;
                    case "priceLow":
                        url = "LoadController?sort=price"; // Set the URL for sorting by price (Low to High)
                        break;
                    case "priceHigh":
                        url = "LoadController?sort=price-desc"; // Set the URL for sorting by price (High to Low)
                        break;
                        // Add more cases for other sorting options if needed
                }

                if (url) {
                    localStorage.setItem("selectedSortValue", selectedValue); // Store the selected value in local storage
                    window.location.href = url;
                }
            });

        </script>
    </body>
</html>
