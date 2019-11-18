<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<link rel="shortcut icon" href="img/favicon.ico">

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="css/cliente.css">


<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Mercado Facil</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/menus/menuADM.jsp">ADM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/menus/menuCliente.jsp">Usuario</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="category.html">Categorias <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.html">Produtos</a>
                </li>

            </ul>    

            <form class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Procurar...">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</nav>


<div class="card-deck">

    <c:forEach var="mercado" items="${mercadoes}">


        <div class="card">
            <img class="card-img-top" src="../tcc_v2/img/128x128.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">${mercado.nome}</h5>
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
               
    </c:forEach> 
 </div>

<div align="center">        
    <a href="${pageContext.request.contextPath}/MercadoNovo">Novo Mercado</a>
    <a href="index.jsp">Voltar à Página Inicial</a>
</div>        

<%@ include file="/footer.jsp" %>        