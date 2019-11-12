<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


<c:forEach var="produto" items="${produtos}">
    <ul class="list-unstyled">
        <li class="media">
            <img class="mr-3" src="../tcc_v2/img/ps4.png" alt="Imagem de exemplo genérica">
            <div class="media-body">
                <h5 class="mt-0 mb-1"><td align="center">${produto.nomeProduto}</td></h5>
                <button type="button" class="btn btn-primary">ImgCarrinho</button>
            </div>
        </li>
    </ul>  
    <hr>

</c:forEach>

<div align="center">
    <a href="index.jsp" type="button" class="btn btn-primary">Voltar à Página Inicial</a>
    <a href="${pageContext.request.contextPath}/ProdutoNovo" type="button" class="btn btn-primary">Novo</a>
</div>     

<%@ include file="/footer.jsp" %>        


