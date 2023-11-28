<%@page import="entity.Cart"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f7f7f7;
                padding: 20px;
            }

            .table-responsive {
                margin-top: 20px;
            }

            table.table {
                background-color: #fff;
                border-radius: 5px;
            }

            table.table th {
                background-color: #f8f9fa;
                font-weight: bold;
                text-transform: uppercase;
            }

            table.table td {
                vertical-align: middle;
            }

            .total-money {
                font-size: 18px;
                font-weight: bold;
                margin-top: 20px;
            }

            a {
                color: #007bff;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Cart Page</h2>

            <div class="table-responsive">
                <c:if test="${empty sessionScope.CART.getCart()}">
                    <p>No items in the cart.</p>
                </c:if>
                <c:if test="${not empty sessionScope.CART.getCart()}">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Sản Phẩm</th>
                                <th scope="col">Đơn Giá</th>
                                <th scope="col">Số Lượng</th>
                                <th scope="col">Xóa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="totalMoney" value="0" />
                            <c:forEach items="${sessionScope.CART.getCart()}" var="o">
                                <tr>
                                    <td>
                                        <div class="product">
                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                            <div class="product-details">
                                                <h5 class="product-name"><a href="#" class="text-dark">${o.name}</a></h5>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle"><strong>  <fmt:formatNumber value="${o.price}" pattern="#,###" /> ₫</strong></td>
                                    <td style="" class="align-middle">
                                        <div style="display: flex; align-items: center;">
                                            <form  style=""action="UpdateMinController" method="post">
                                                <input type="hidden" value="${o.id}" name="proid">
                                                <button type="submit" class="btn btn-subtract">-</button>
                                            </form>
                                            <strong style="padding-left: 5px; padding-right: 5px">${o.getQuantityOf()}</strong>
                                            <form action="UpdateCart" method="post"> 
                                                <input type="hidden" value="${o.id}" name="proid">
                                                <button type="submit" class="btn btn-add">+</button>
                                            </form>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <a href="#" class="text-danger">
                                            <form action="RemoveCart" method="post">
                                                <input type="hidden" value="${o.id}" name="proid">
                                                <button type="submit" class="btn btn-delete">Delete</button>
                                            </form>
                                        </a>
                                    </td>
                                </tr> 
                                <c:set var="totalMoney" value="${totalMoney + (o.price * o.getQuantityOf())}" />
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="">
                        <br>
                        <br>
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                        <div class="p-4">
                            <ul class="list-unstyled mb-4">
                                <li class="d-flex justify-content-between py-3 border-bottom">
                                    <strong class="text-muted">Tổng tiền hàng</strong>
                                    <strong>  <fmt:formatNumber value="${totalMoney}" pattern="#,###" /> ₫</strong>
                                </li>
                                <li class="d-flex justify-content-between py-3 border-bottom">
                                    <strong class="text-muted">Phí vận chuyển</strong>
                                    <strong>Free Ship <3</strong>
                                </li> 
                                <li class="d-flex justify-content-between py-3 border-bottom">
                                    <strong class="text-muted">Tổng thanh toán</strong>
                                    <h5 class="font-weight-bold"> <fmt:formatNumber value="${totalMoney}" pattern="#,###" /> ₫</h5>
                                </li>
                            </ul><a href="#checkOutModal" class="btn btn-dark rounded-pill py-2 btn-block" data-toggle="modal">Mua hàng</a>
                        </div>
                    </div> 
                    <div id="checkOutModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="CheckoutController" method="post">

                                    <div class="modal-header">						
                                        <h4 class="modal-title">Thanh toán</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">	
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input type="text" class="form-control" name="fullName" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="tel" class="form-control" name="phone" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input type="text" class="form-control" name="address" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" name="email" required>
                                        </div>					
                                        <div class="form-group">
                                            <label>Phương thức thanh toán</label>
                                            <input class="form-control" value="Thanh toán khi nhận hàng." readonly="">
                                        </div>	 
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" name="action" class="btn btn-success" value="Checkout" data-dismiss="false">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </c:if>


            </div>

            <a style="font-size: 34px" href="LoadController">Tiếp tục mua sắm</a>
        </div> 

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    </body>
</html>
