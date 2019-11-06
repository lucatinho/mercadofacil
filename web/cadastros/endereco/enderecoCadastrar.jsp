<%-- 
    Document   : enderecoCadastrar
    Created on : 03/09/2019, 19:50:23
    Author     : jeffersonpasserini
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


<form name="cadastrarendereco" action="EnderecoCadastrar" 
      method="POST">

    <table align="center" border="0">
        <thead>
            <tr>
                <th colspan="2" align="center">
                    Cadastro de Endereco</th>
            </tr>
            <tr>
                <th colspan="2" align="center">${mensagem}</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID: </td>
                <td><input type="text" name="idendereco" 
                           id="idendereco" value="${endereco.idEndereco}"
                           readonly="readonly" /></td>
            </tr>

            <tr>
                <td>CEP: </td>
                <td><input type="text" name="CEP" id="preco" value="${produto.CEP}" maxlength="50" /></td>
            </tr>

            <tr>
                <td>Nome da rua: </td>
                <td><input type="text" name="nomeendereco" id="nomeendereco" 
                           value="${endereco.rua}" size="50" 
                           maxlength="50" /></td>
            </tr>
            <tr>
                <td>Cidade: </td>
                <td>
                    <select name="idcidade" id="idcidade">
                        <option value="">Selecione</option>

                        <c:forEach var="cidade" items="${cidades}">
                            <option value="${cidade.idCidade}" 
                                    ${endereco.cidade.idCidade == cidade.idCidade ? "selected" : ""}>
                                ${cidade.nomeCidade}
                            </option>
                        </c:forEach>

                    </select>
                </td>
            </tr>
            <tr>                    
                <td colspan="2" align="center">
                    <input type="submit" name="cadastrar" id="cadastrar" 
                           value="Cadastrar" />
                    <input type="reset" name="limpar" id="limpar" 
                           value="Limpar" />
                </td>
            </tr>
            <tr>                        
                <td align="center" colspan="2"><h5><a href="/index.jsp">
                            Voltar à Página Inicial</a></h5></td>
            </tr>
        </tbody>
    </table>
</form>        

<%@ include file="/footer.jsp" %>
