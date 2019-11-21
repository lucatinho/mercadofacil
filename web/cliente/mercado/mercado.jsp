<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!-- inicio lista mercado-->
<div class="album py-5 bg-light">
    <div class="container">

        <div class="row">
            <c:forEach var="mercado" items="${mercadoes}">
                <div class="col-sm-4">

                    <div class="card mb-4 box-shadow">

                        <img class="card-img-left" src="../tcc_v2/img/128x128.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">${mercado.nome}</h5>
                            <div class="d-flex justify-content-between align-items-center">
                                <center>
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/ProdutocListar" role="button">Entrar</a>
                                </center>
                            </div>
                        </div>

                    </div>

                </div>
            </c:forEach> 
        </div>
    </div>
</div>
<!-- fim lista mercado-->
<!-- lista 2 mercado-->
<hr>

<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link href="apple-touch-icon.png" rel="apple-touch-icon">
        <link href="favicon.png" rel="icon">
        <meta name="author" content="Nghia Minh Luong">
        <meta name="keywords" content="Default Description">
        <meta name="description" content="Default keyword">
        <title>Sky - Cart</title>
        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet">
        <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="plugins/ps-icon/style.css">
        <!-- CSS Library-->
        <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="plugins/owl-carousel/assets/owl.carousel.css">
        <link rel="stylesheet" href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
        <link rel="stylesheet" href="plugins/slick/slick/slick.css">
        <link rel="stylesheet" href="plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="plugins/Magnific-Popup/dist/magnific-popup.css">
        <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="plugins/revolution/css/settings.css">
        <link rel="stylesheet" href="plugins/revolution/css/layers.css">
        <link rel="stylesheet" href="plugins/revolution/css/navigation.css">
        <!-- Custom-->
        <link rel="stylesheet" href="css/style.css">
        <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
        <!--WARNING: Respond.js doesn't work if you view the page via file://-->
        <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->

    <main class="ps-main">
        <div class="ps-content pt-80 pb-80">
            <div class="ps-container">
                <div class="ps-cart-listing">
                    <table class="table ps-cart__table">
                        <thead>
                            <tr>
                                <th>All Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a class="ps-product__preview" href="product-detail.html"><img class="mr-15" src="images/product/cart-preview/1.jpg" alt=""> air jordan One mid</a></td>
                                <td>$150</td>
                                <td>
                                    <div class="form-group--number">
                                        <button class="minus"><span>-</span></button>
                                        <input class="form-control" type="text" value="2">
                                        <button class="plus"><span>+</span></button>
                                    </div>
                                </td>
                                <td>$300</td>
                                <td>
                                    <div class="ps-remove"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><a class="ps-product__preview" href="product-detail.html"><img class="mr-15" src="images/product/cart-preview/2.jpg" alt=""> The Crusty Croissant</a></td>
                                <td>$150</td>
                                <td>
                                    <div class="form-group--number">
                                        <button class="minus"><span>-</span></button>
                                        <input class="form-control" type="text" value="2">
                                        <button class="plus"><span>+</span></button>
                                    </div>
                                </td>
                                <td>$300</td>
                                <td>
                                    <div class="ps-remove"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><a class="ps-product__preview" href="product-detail.html"><img class="mr-15" src="images/product/cart-preview/3.jpg" alt="">The Rolling Pin</a></td>
                                <td>$150</td>
                                <td>
                                    <div class="form-group--number">
                                        <button class="minus"><span>-</span></button>
                                        <input class="form-control" type="text" value="2">
                                        <button class="plus"><span>+</span></button>
                                    </div>
                                </td>
                                <td>$300</td>
                                <td>
                                    <div class="ps-remove"></div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="ps-cart__actions">
                        <div class="ps-cart__promotion">
                            <div class="form-group">
                                <div class="ps-form--icon"><i class="fa fa-angle-right"></i>
                                    <input class="form-control" type="text" placeholder="Promo Code">
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="ps-btn ps-btn--gray">Continue Shopping</button>
                            </div>
                        </div>
                        <div class="ps-cart__total">
                            <h3>Total Price: <span> 2599.00 $</span></h3><a class="ps-btn" href="checkout.html">Process to checkout<i class="ps-icon-next"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

