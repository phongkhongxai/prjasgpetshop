<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div style="" class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div style="margin-top: 20px" class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            <!--<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->
                            <a href="LoadController2" class="btn btn-primary"><i class="material-icons">home</i><span>Back to home</span></a>
                        </div>
                    </div>
                </div>
                <table style="margin-top: 20px" class="table table-striped table-hover">
                    <thead>
                        <tr> 
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o">
                            <tr> 
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>
                                    <img src="${o.image}">
                                </td>
                                <td style="padding-top: 50px; padding-left: 20px"> <fmt:formatNumber value="${o.price}" pattern="#,###" /> ₫</td>
                                <td style="padding-top: 50px; padding-left: 20px">
                                    <a href="#" onclick="populateUpdateModal('${o.id}', '${o.name}', '${o.image}', '${o.price}', '${o.title}', '${o.description}', '${o.quantity}', '${o.cateID}')" class="edit" data-toggle="modal" data-target="#updateEmployeeModal"><i class="material-icons" data-toggle="tooltip" title="Update">&#xE254;</i></a>
                                     
                                    <a  href="#" onclick="doDelete('${o.id}')" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddProController" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>ID</label>
                                <input name="proid" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="quantity" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="cateid" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCC}" var="o">
                                        <option name="cateid" value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <strong>${errorMessage}</strong>

                </div>

                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
                </form>
            </div>
        </div>



        <!-- Update Modal HTML -->
        <div id="updateEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="UpdateController" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Update Product</h4>
                            <button type="button" class="close" data-dismiss="modal" onclick="window.location.href = 'ManagerController'" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>ID</label>
                                <input name="proid" id="updateProId" type="text" class="form-control" required readonly="">
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" id="updateName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" id="updateImage" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" id="updatePrice" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" id="updateTitle" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" id="updateDescription" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="quantity" id="updateQuantity" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="cateid" id="updateCategoryId" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCC}" var="category">
                                        <option value="${category.cid}">${category.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <strong>${errorMessage}</strong>

                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Update">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            function doDelete(id) {
                if (confirm("Are you sure delete " + id + "?")) {
                    //                var url = "MainController?id=" + id + "&action=Delete";
                    //                window.location.href = url;
                    var url = "DeleteController?id=" + id;
                    window.location.href = url;
                }
            }

            function populateUpdateModal(proid, name, image, price, title, description, quantity, categoryId) {
                const modalInputs = {
                    updateProId: proid,
                    updateName: name,
                    updateImage: image,
                    updatePrice: price,
                    updateTitle: title,
                    updateDescription: description,
                    updateQuantity: quantity,
                    updateCategoryId: categoryId
                };

                for (const [id, value] of Object.entries(modalInputs)) {
                    document.getElementById(id).value = value;
                }
            }
            

        </script>
    </body>
</html>