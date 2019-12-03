<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Mercado Facil | Sistema de compras</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicons -->
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="apple-touch-icon" href="images/icon.png">

        <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <!-- Stylesheets -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="css/plugins.css">
        <link rel="stylesheet" href="style.css">

        <!-- Cusom css -->
        <link rel="stylesheet" href="css/custom.css">

        <!-- Modernizer js -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    </head>

    <body>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

        <!-- Main wrapper -->
        <div class="wrapper" id="wrapper">
            <!-- Header -->
            <header id="wn__header" class="header__area header__absolute sticky__header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="images/logo/logo.png" alt="logo images">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-8 d-none d-lg-block">
                            <nav class="mainmenu__nav">
                                <ul class="meninmenu d-flex justify-content-start">
                                    <li class="drop with--one--item"><a href="index.html">Home</a></li>
                                    <li class="drop"><a href="#">Loja</a>
                                        <div class="megamenu mega03">
                                            <ul class="item item03">
                                                <li class="title">Shop</li>
                                                <li><a href="shop-grid.html">Lista de mercados</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="drop"><a href="#">Paginas</a>
                                        <div class="megamenu dropdown">
                                            <ul class="item item01">
                                                <li><a href="about.html">Sobre Nôs</a></li>
                                                <li class="label2"><a href="portfolio.html">Portfolio</a>
                                                    <ul>
                                                        <li><a href="portfolio.html">Portfolio</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                            <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                                <li class="shop_search"><a class="search__active" href="#"></a></li>
                                <li class="wishlist"><a href="#"></a></li>
                                <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                                    <div class="searchbar__content setting__block">
                                        <div class="content-inner">
                                            <div class="switcher-currency">
                                                <strong class="label switcher-label">
                                                    <span>Meu Perfil</span>
                                                </strong>
                                                <div class="switcher-options">
                                                    <div class="switcher-currency-trigger">
                                                        <div class="setting__menu">

                                                            <span><a href="#">Perfil</a></span>
                                                            <span><a href="#">Lista de Compras</a></span>
                                                            <span><a href="#">Login</a></span>
                                                            <span><a href="#">Criar Nova Conta</a></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Mobile Menu -->
                    <div class="row d-none">
                        <div class="col-lg-12 d-none">
                            <nav class="mobilemenu__nav">
                                <ul class="meninmenu">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="#">Paginas</a>
                                        <ul>
                                            <li><a href="about.html">Sobre Nôs</a></li>
                                            <li><a href="portfolio.html">Portfolio</a>
                                                <ul>
                                                    <li><a href="portfolio.html">Portfolio</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="shop-grid.html">Mercados</a>
                                        <ul>
                                            <li><a href="shop-grid.html">Lista de mercados</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- End Mobile Menu -->
                    <div class="mobile-menu d-block d-lg-none">
                    </div>
                    <!-- Mobile Menu -->
                </div>
            </header>
            <!-- //Header -->
            <!-- Start Search Popup -->
            <div class="brown--color box-search-content search_active block-bg close__top">
                <form id="search_mini_form" class="minisearch" action="#">
                    <div class="field__search">
                        <input type="text" placeholder="Top">
                        <div class="action">
                            <a href="#"><i class="zmdi zmdi-search"></i></a>
                        </div>
                    </div>
                </form>
                <div class="close__wrap">
                    <span>close</span>
                </div>
            </div>
            <!-- End Search Popup -->
            <!-- Start Slider area -->
            <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
                <!-- Start Single Slide -->
                <div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider__content">
                                    <div class="contentbox">
                                        <h2>Mercado <span>facil </span></h2>
                                        <h2>Escolha o seu <span>Mercado </span></h2>
                                        <h2>de <span>Preferencias </span></h2>
                                        <a class="shopbtn" href="#">Bora lá</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- End Single Slide -->
                <!-- Start Single Slide -->
                <div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider__content">
                                    <div class="contentbox">
                                        <h2>Mercado <span>facil </span></h2>
                                        <h2>Escolha o seu <span>Mercado </span></h2>
                                        <h2>de <span>Preferencias </span></h2>
                                        <a class="shopbtn" href="#">Bora lá</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
            </div>
            <!-- End Slider area -->
            <!-- Start BEst Seller Area -->
            <section class="wn__product__area brown--color pt--80  pb--30">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section__title text-center">
                                <h2 class="title__be--2">Novos <span class="color--theme">Mercados</span></h2>
                                <p>Mercados adicionados recentemente</p>
                            </div>
                        </div>
                    </div>
                    <!-- Start Single Tab Content -->
                    <div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/1.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">robin parrish</a></h4>
                                    <ul class="prize d-flex">
                                        <li>R$35.00</li>
                                        <li class="old_prize">R$35.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/3.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/4.jpg" alt="product image"></a>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">The Remainng</a></h4>
                                    <ul class="prize d-flex">
                                        <li>$35.00</li>
                                        <li class="old_prize">$35.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/5.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/6.jpg" alt="product image"></a>

                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Bowen Greenwood</a></h4>
                                    <ul class="prize d-flex">
                                        <li>$40.00</li>
                                        <li class="old_prize">$35.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/7.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/8.jpg" alt="product image"></a>

                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Lando</a></h4>
                                    <ul class="prize d-flex">
                                        <li>$35.00</li>
                                        <li class="old_prize">$50.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/9.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/10.jpg" alt="product image"></a>

                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doctor Wldo</a></h4>
                                    <ul class="prize d-flex">
                                        <li>$35.00</li>
                                        <li class="old_prize">$35.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/11.jpg" alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a>

                                </div>
                                <div class="product__content content--center content--center">
                                    <h4><a href="single-product.html">Ghost</a></h4>
                                    <ul class="prize d-flex">
                                        <li>$50.00</li>
                                        <li class="old_prize">$35.00</li>
                                    </ul>
                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">

                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                    </div>
                    <!-- End Single Tab Content -->
                </div>
            </section>
            <section class="wn__bestseller__area bg--white pt--80  pb--30">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section__title text-center">
                                <h2 class="title__be--2">TODOS os <span class="color--theme">Mercados</span></h2>
                                <p>"Aqui voce encontra a maior variedade mercados, esperamos que encontre o mercado que procura."</p>
                            </div>
                        </div>
                    </div>
                    <div class="row mt--50">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="product__nav nav justify-content-center" role="tablist">
                                <a class="nav-item nav-link active" data-toggle="tab" href="#nav-all" role="tab">TODOS</a>
                            </div>
                        </div>
                    </div>
                    <div class="tab__container mt--60">
                        <!-- Start Single Tab Content -->
                        
                            <div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                                
                                <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                                    <c:forEach var="mercado" items="${mercadoes}">
                                    <div class="single__product">
                                        
                                        <!-- Start Single Product -->
                                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                            <div class="product product__style--3">
                                                <div class="product__thumb">
                                                    <a class="first__img" href="single-product.html"><img src="images/books/1.jpg" alt="product image"></a>
                                                    <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a>

                                                </div>
                                                <div class="product__content content--center content--center">
                                                    <h4><a href="single-product.html">${mercado.nome}</a></h4>
                                                    <ul class="prize d-flex">
                                                        <li>$50.00</li>
                                                        <li class="old_prize">$35.00</li>
                                                    </ul>
                                                    <div class="action">
                                                        <div class="actions_inner">
                                                            <ul class="add_to_links">

                                                                <li><a class="wishlist" href="wishlist.html">IR</a></li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__hover--content">
                                                        <ul class="rating d-flex">
                                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                                            <li><i class="fa fa-star-o"></i></li>
                                                            <li><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Start Single Product -->
                                        
                                    </div>
                                        </c:forEach>             
                                </div>
                                                    
                            </div>
                        
                    </div>
                </div>
            </section>
            <!-- Footer Area -->
            <footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
                <div class="footer-static-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer__widget footer__menu">
                                    <div class="ft__logo">
                                        <a href="index.html">
                                            <img src="images/logo/3.png" alt="logo">
                                        </a>
                                        <p></p>
                                    </div>
                                    <div class="footer__content">
                                        <ul class="social__net social__net--2 d-flex justify-content-center">
                                            <li><a href="#"><i class="bi bi-facebook"></i></a></li>
                                            <li><a href="#"><i class="bi bi-google"></i></a></li>
                                            <li><a href="#"><i class="bi bi-twitter"></i></a></li>
                                            <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
                                            <li><a href="#"><i class="bi bi-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright__wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="copyright">
                                    <div class="copy__right__inner text-center">
                                        <p>Copyright <i class="fa fa-copyright"></i> <a href="https://freethemescloud.com/">EDJONSHON</a> All Rights
                                            Reserved</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- //Footer Area -->
            <!-- QUICKVIEW PRODUCT -->
            <div id="quickview-wrapper">
                <!-- Modal -->
            </div>
            <!-- END QUICKVIEW PRODUCT -->
        </div>
        <!-- //Main wrapper -->

        <!-- JS Files -->
        <script src="js/vendor/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/active.js"></script>

    </body>

</html>