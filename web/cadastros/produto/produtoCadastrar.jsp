<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


<form name="cadastrarproduto" action="ProdutoCadastrar" method="POST">

    <table align="center" border="0">
        <thead>
            <tr>
                <th colspan="2" align="center">
                    Cadastro de Produto</th>
            </tr>
            <tr>
                <th colspan="2" align="center">${mensagem}</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID: </td>
                <td><input type="text" name="idproduto" 
                           id="idproduto" value="${produto.idProduto}"
                           readonly="readonly" /></td>
            </tr>
            
            <tr>
                <td>Nome: </td>
                <td><input type="text" name="nomeproduto" id="nomeproduto" 
                           value="${produto.nomeProduto}" size="50" 
                           maxlength="50" /></td>
            </tr>
            
            <tr>
                <td>Marca: </td>
                <td>
                    <select name="idmarca" id="idmarca">
                        <option value="">Selecione</option>
                        
                        <c:forEach var="marca" items="${marcas}">
                            <option value="${marca.idMarca}" 
                                    ${produto.marca.idMarca == marca.idMarca ? "selected" : ""}>
                                ${marca.nomeMarca}
                            </option>
                        </c:forEach>
                            
                    </select>
                </td>
            </tr>
            
            <tr>
                <td>Categoria: </td>
                <td>
                    <select name="idcategoria" id="idcategoria">
                        <option value="">Selecione</option>
                        
                        <c:forEach var="categoria" items="${categoria}">
                            <option value="${categoria.idCategoria}" 
                                    ${produto.categoria.idCategoria == categoria.idCategoria ? "selected" : ""}>
                                ${categoria.nomeCategoria}
                            </option>
                        </c:forEach>
                            
                    </select>
                </td>
            </tr>

            <tr>
                <td>Pre�o: </td>
                <td><input type="text" name="preco" id="preco" value="${produto.preco}" maxlength="50" /></td>
            </tr>
            
            <tr>
                <td>Descri��o: </td>
                <td><input type="text" name="descricao" id="descricao" 
                           value="${produto.descricao}" size="50" 
                           maxlength="50" /></td>
            </tr>

            <tr>                    
                <td colspan="2" align="center">
                    <input type="submit" name="cadastrar" id="cadastrar" 
                           value="Cadastrar" />
                    <input type="reset" name="limpar" id="limpar" 
                           value="Limpar" />
                </td>
            </tr>
        </tbody>
    </table>
</form>        
<%@ include file="/footer.jsp" %>
