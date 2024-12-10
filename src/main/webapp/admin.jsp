<%@page import="com.mycompany.e.commercesite.entites.User"%>
<%
    User user = (User) session.getAttribute("current-user");
    if (user == null) {
        session.setAttribute("message", "You are not logged in! Please login first.");
        response.sendRedirect("login.jsp");
        return;
    } else {
        if (user.getUserType().equals("normal")) {
            session.setAttribute("message", "You are not admin! Do not access this page.");
            response.sendRedirect("login.jsp");
            return;
        }
    }
%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        <%@include file="components/common_css_js.jsp"%>
        <style>
            .admin .card {
                border: 1px solid #673ab7;
                transition: transform 0.3s ease, background-color 0.3s ease;
            }

            .admin .card:hover {
                background: #f5f5f5;
                transform: scale(1.05);
                cursor: pointer;
            }

            .modal-header {
                background: #673ab7;
                color: white;
            }

            .btn-primary {
                background: #673ab7;
                border: none;
            }

            .btn-primary:hover {
                background: #53279d;
            }

            /* Styling for cards */
            .card-body {
                padding: 2rem;
                text-align: center;
            }

            .card-body img {
                max-width: 100px;
            }

            .card-body h2 {
                margin-top: 1rem;
            }

            .card-body p {
                margin-top: 1rem;
                color: #6c757d;
            }

            .col-md-4, .col-md-6 {
                margin-bottom: 2rem;
            }
        </style>
    </head>
    <body class="admin">
        <%@include file="components/admin_navbar.jsp"%>

        <div class="container mt-4">
            <h2 class="text-center">Admin Dashboard</h2>
            <div class="row mt-3">

                <!-- Users -->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/team.png" alt="Users" class="img-fluid" style="max-width: 100px;">
                            <h2>7464</h2>
                            <h5 class="text-muted">USERS</h5>
                        </div>
                    </div>
                </div>

                <!-- Categories -->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/checklist.png" alt="Categories" class="img-fluid" style="max-width: 100px;">
                            <h2>3455</h2>
                            <h5 class="text-muted">CATEGORIES</h5>
                        </div>
                    </div>
                </div>

                <!-- Products -->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/brand-identity.png" alt="Products" class="img-fluid" style="max-width: 100px;">
                            <h2>1232</h2>
                            <h5 class="text-muted">PRODUCTS</h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Add Category -->
                <div class="col-md-4">
                    <div class="card text-center" data-toggle="modal" data-target="#add-category-modal">
                        <div class="card-body">
                            <img src="img/keys.png" alt="Add Category" class="img-fluid" style="max-width: 100px;">
                            <p class="mt-2">Click here to add a new category</p>
                            <h5 class="text-muted">ADD CATEGORY</h5>
                        </div>
                    </div>
                </div>

                <!-- Add Product -->
                <div class="col-md-4">
                    <div class="card text-center" data-toggle="modal" data-target="#add-product-modal">
                        <div class="card-body">
                            <img src="img/plus.png" alt="Add Product" class="img-fluid" style="max-width: 100px;">
                            <p class="mt-2">Click here to add a new product</p>
                            <h5 class="text-muted">ADD PRODUCT</h5>
                        </div>
                    </div>
                </div>

                <!-- View Orders -->
                <div class="col-md-4">
                    <div class="card text-center" onclick="location.href='viewOrders.jsp';">
                        <div class="card-body">
                            <img src="img/diagram.png" alt="View Orders" class="img-fluid" style="max-width: 100px;">
                            <p class="mt-2">Click here to view orders</p>
                            <h5 class="text-muted">VIEW ORDERS</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Add Category Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="addCategoryLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="addCategoryLabel">Add New Category</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="POST">
                            
                            <input type="hidden" name="operatin" value="addcategoy"> 
                            <div class="form-group">
                                <label for="categoryName">Category Name</label>
                                <input type="text" name="categoryName" class="form-control" id="catTitle" placeholder="Enter category title" required>
                            </div>
                            <div class="form-group">
                                <label for="categoryDescription">Category Description</label>
                                <textarea name="categoryDescription" class="form-control" id="catDescription" rows="3" placeholder="Enter category description" required></textarea>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Add Category</button>
                        </form>
                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Add Product Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="addProductLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="addProductLabel">Add New Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="POST">
                            
                            <input type="hidden" name="operatin" value="addproduct">
                            <div class="form-group">
                                <label for="productName">Product Name</label>
                                <input type="text" name="productName" class="form-control" id="productName" placeholder="Enter product name" required>
                            </div>
                            <div class="form-group">
                                <label for="productDescription">Product Description</label>
                                <textarea name="productDescription" class="form-control" id="productDescription" rows="3" placeholder="Enter product description" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="productImage">Product Image</label>
                                <input type="file" name="productImage" class="form-control-file" id="productImage">
                            </div>
                            <div class="form-group">
                                <label for="productPrice">Product Price</label>
                                <input type="number" name="productPrice" class="form-control" id="productPrice" placeholder="Enter product price" required>
                            </div>
                            <div class="form-group">
                                <label for="productCategory">Product Category</label>
                                <select class="form-control" name="productCategory" id="productCategory" required>
                                    <option value="1">Category 1</option>
                                    <option value="2">Category 2</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product</button>
                        </form>
                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
