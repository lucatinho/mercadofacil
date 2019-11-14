<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<jsp:include page="/header.jsp"/>


<div class="container">
    <center>
        <h2>Página Principal Usuário</h2>
    </center>

    <div class="card-body">

        <c:forEach var="produto" items="${produtos}">


            <ul class="list-unstyled">
                <div class="card border-dark">
                    <br>
                    <li class="media">

                        <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        <img class="rounded float-left" src="../tcc_v2/img/128x128.jpg" alt="Vo mata o Java Scripto">
                        <div class="media-body">
                            <p class="text-center"><h2 class="mt-0 mb-1"><td align="center">&nbsp;&nbsp;${produto.nomeProduto}</td></h2></p>
                            <h5 class="mt-0 mb-1"><td align="center">&nbsp;&nbsp;&nbsp;R$ ${produto.preco}</td></h5>

                            <div class="float-right">

                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button type="button" class="btn btn-primary">-</button>
                                    <button type="button" class="btn btn-primary">0</button>
                                    <button type="button" class="btn btn-primary">+</button>
                                </div>

                                <a>&nbsp;&nbsp;&nbsp;&nbsp;</a>

                                <div class="float-right">
                                    <a href=""><img class="mr-3" src="../tcc_v2/img/carrinho.png" alt="Imagem de exemplo genérica"></a>
                                </div>
                                <br><br>
                            </div>
                    </li> 
                </div>
            </ul>  

        </c:forEach>            


</div>

</div>

<%@ include file="/footer.jsp" %>  