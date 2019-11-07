<jsp:include page="/header.jsp"/>

<div class="container">
    <center>
        <h2>Página Principal ADM</h2>
    </center>
    <div class="list-group">
        
        <a href="${pageContext.request.contextPath}/CategoriaListar" class="list-group-item list-group-item-action">Categoria do Produto</a>
        <a href="${pageContext.request.contextPath}/CidadeListar" class="list-group-item list-group-item-action">Cidade</a>
        <a href="${pageContext.request.contextPath}/EstadoListar" class="list-group-item list-group-item-action">Estado</a>
        <a href="${pageContext.request.contextPath}/EnderecoListar" class="list-group-item list-group-item-action">Endereço</a>
        <a href="${pageContext.request.contextPath}/FormaPagamentoListar" class="list-group-item list-group-item-action">Forma de Pagamento</a>
        <a href="${pageContext.request.contextPath}/MarcaListar" class="list-group-item list-group-item-action">Marca</a>
        <a href="${pageContext.request.contextPath}/StatusPedidoListar" class="list-group-item list-group-item-action">Status do Pedido</a>
        <a href="${pageContext.request.contextPath}/PedidoListar" class="list-group-item list-group-item-action">Pedido</a>
        <a href="${pageContext.request.contextPath}/ProdutoListar" class="list-group-item list-group-item-action">Produto</a>
        
    </div>
</div>
        
<%@ include file="/footer.jsp" %>  