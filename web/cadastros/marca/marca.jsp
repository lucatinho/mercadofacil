
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


        <div class="container mt-3">
            <h2>Marca</h2>
            <p>Tabela com as marcas a seguir:</p>  
            <input class="form-control" id="myInput" type="text" placeholder="Procurar..">
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th colspan="2">Editar</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <c:forEach var="marca" items="${marcas}">
                        <tr>
                            <td align="center">${marca.idMarca}</td>
                            <td align="center">${marca.nomeMarca}</td>
                            <td align="center">
                                <a href="${pageContext.request.contextPath}/MarcaExcluir?idMarca=${marca.idMarca}">Excluir</a></td>
                            <td align="center">
                                <a href="${pageContext.request.contextPath}/MarcaCarregar?idMarca=${marca.idMarca}">Alterar</a></td>
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
            <a href="${pageContext.request.contextPath}/MarcaNovo" type="button" class="btn btn-primary">Novo</a>
        </div>
        <%@ include file="/footer.jsp" %>
