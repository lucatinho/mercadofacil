<jsp:include page="/header.jsp"/>
<div class="container">
    <center>
        <h2>Página Principal Cliente</h2>
    </center>
    <div class="list-group">

        <a href="${pageContext.request.contextPath}/ProdutocListar" class="list-group-item list-group-item-action">Lista de produtos</a>
        <a href="${pageContext.request.contextPath}/MercadocListar" class="list-group-item list-group-item-action">Lista de Mercados</a>

    </div>
</div>

<%@ include file="/footer.jsp" %>  