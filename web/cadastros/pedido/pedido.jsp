<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


<div class="container mt-3">
    <h2>Pedidos</h2>
    <p>Tabela com os pedidos a seguir:</p>  
    <input class="form-control" id="myInput" type="text" placeholder="Procurar..">
    <br>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>                    
                <th>Nome</th>
                <th>Produto</th>
                <th>Preco</th>
                <th colspan="2">Editar</th>
            </tr>
        </thead>                                 
        <tbody id="myTable">
            <c:forEach var="pedido" items="${pedidos}">
                <tr>
                    <td align="center">${pedido.idPedido}</td>                    
                    <td align="center">${pedido.nomePedido}</td>
                    <td align="center">${pedido.produto.nomeProduto}</td>
                    <td align="center">${pedido.preco}</td>
                    <td align="center"><a href="${pageContext.request.contextPath}/PedidoExcluir?idPedido=${pedido.idPedido}">Excluir</a></td>
                    <td align="center"><a href="${pageContext.request.contextPath}/PedidoCarregar?idPedido=${pedido.idPedido}">Alterar</a></td>
                </tr>                
            </c:forEach>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

<div align="center">
    <a href="index.jsp" type="button" class="btn btn-primary">Voltar à Página Inicial</a>
    <a href="${pageContext.request.contextPath}/PedidoNovo" type="button" class="btn btn-primary">Novo</a>
</div>     

<%@ include file="/footer.jsp" %>        


