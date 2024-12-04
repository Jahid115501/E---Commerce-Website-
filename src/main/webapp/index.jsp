<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quick Shopping - Home</title>
    
    <%@ include file="components/common_css_js.jsp" %> <!-- Common CSS & JS -->

    <style>
        /* Navbar Adjustments */
        .navbar {
            margin-bottom: 0;
        }

        /* Search Bar Style */
        .search-bar-container {
            background-color: #f4f4f4;
            padding: 10px;
            text-align: center;
        }
        .search-bar {
            width: 60%;
            padding: 12px;
            margin: 0 auto;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 18px;
        }

        /* Product Section */
        .products-section {
            padding: 40px 20px;
            background-color: #fff;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 15px;
            padding: 15px;
            background: #fff;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        .product-card:hover {
            transform: translateY(-10px);
        }
        .product-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .product-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }
        .product-price {
            color: #1976D2;
            font-size: 16px;
            margin: 5px 0;
        }
        .btn-view {
            background-color: #1976D2;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
    </style>
</head>
<body>
    <%@ include file="components/navbar.jsp" %> <!-- Include Navbar -->

    <!-- Search Bar Section -->
    <div class="search-bar-container">
        <input type="text" class="search-bar" placeholder="Search for products...">
    </div>

    <!-- Featured Products -->
    <div class="products-section">
        <h2 style="text-align: center; margin-bottom: 20px;">Featured Products</h2>
        <div class="container">
            <div class="row">
                <!-- Product 1 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product1.jpg" alt="Product 1">
                        <div class="product-title">Smartphone</div>
                        <div class="product-price">29000TK</div>
                        <a href="product_details.jsp?id=1" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 2 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product2.jpg" alt="Product 2">
                        <div class="product-title">Laptop</div>
                        <div class="product-price">78000TK</div>
                        <a href="product_details.jsp?id=2" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 3 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product3.jpg" alt="Product 3">
                        <div class="product-title">Headphones</div>
                        <div class="product-price">1700TK</div>
                        <a href="product_details.jsp?id=3" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 4 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product4.jpg" alt="Product 4">
                        <div class="product-title">Smart Watch</div>
                        <div class="product-price">3000TK</div>
                        <a href="product_details.jsp?id=4" class="btn-view">View Details</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Product 5 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product5.jpg" alt="Product 5">
                        <div class="product-title">Gaming Console</div>
                        <div class="product-price">17000TK</div>
                        <a href="product_details.jsp?id=5" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 6 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product6.jpg" alt="Product 6">
                        <div class="product-title">Camera</div>
                        <div class="product-price">30000TK</div>
                        <a href="product_details.jsp?id=6" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 7 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product7.jpg" alt="Product 7">
                        <div class="product-title">Bluetooth Speaker</div>
                        <div class="product-price">4900TK</div>
                        <a href="product_details.jsp?id=7" class="btn-view">View Details</a>
                    </div>
                </div>
                <!-- Product 8 -->
                <div class="col-md-3">
                    <div class="product-card">
                        <img src="images/product8.jpg" alt="Product 8">
                        <div class="product-title">Tablet</div>
                        <div class="product-price">3000TK</div>
                        <a href="product_details.jsp?id=8" class="btn-view">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
