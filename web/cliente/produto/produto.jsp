<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<!-- lista 2 produto-->
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
        <meta name="author" content="Nghia Minh Luong">
        <meta name="keywords" content="Default Description">
        <meta name="description" content="Default keyword">
        <title>Produtos</title>
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
                                <th>Todos os Produtos</th>
                                <th>Preco</th>
                                <th>Quantidade</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <c:forEach var="produto" items="${produtos}">
                            <tbody>
                                <tr>
                                    <td><a class="ps-product__preview" href="product-detail.html"><img class="mr-15" src="../tcc_v2/img/128x128.jpg" alt=""> ${produto.nomeProduto}</a></td>
                                    <td>R$${produto.preco}</td>
                                    <td>
                                        <div class="form-group--number">
                                            <button class="minus"  onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><span>-</span></button>
                                            <input class="form-control" min="0" name="quantity" value="1" type="number">
                                            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"><span>+</span></button>
                                        </div>
                                    </td>
                                    <td>$300</td>

                                </tr>
                            </tbody>
                        </c:forEach>
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
    <!-- JS Library-->
    <script type="text/javascript" src="plugins/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script type="text/javascript" src="plugins/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="plugins/gmap3.min.js"></script>
    <script type="text/javascript" src="plugins/imagesloaded.pkgd.js"></script>
    <script type="text/javascript" src="plugins/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="plugins/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="plugins/slick/slick/slick.min.js"></script>
    <script type="text/javascript" src="plugins/elevatezoom/jquery.elevatezoom.js"></script>
    <script type="text/javascript" src="plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script><script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <!-- Custom scripts-->
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>