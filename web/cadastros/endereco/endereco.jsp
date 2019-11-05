<%-- 
    Document   : Endereco
    Created on : 13/05/2019, 19:54:57
    Author     : jeffersonpasserini
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


        <h2>Endereços</h2>
        <table align="center" border="1">
            <thead>
                <tr>
                    <th colspan="6" align="center">Lista de Endereços</th>
                </tr>                        
                <tr>
                    <th align="center">ID</th>                    
                    <th align="center">Nome da Rua</th>
                    <th align="center">Cidade</th>
                    <th align="center" colspan="2">Editar</th>
                </tr>
            </thead>                                 
            <tbody>
                <c:forEach var="endereco" items="${enderecos}">                    
                    <tr>
                        <td align="center">${endereco.idEndereco}</td>                    
                        <td align="center">${endereco.rua}</td>
                        <td align="center">${endereco.cidade.nomeCidade}</td>
                        <td align="center"><a href=
"${pageContext.request.contextPath}/EnderecoExcluir?idEndereco=${endereco.idEndereco}">
                               Excluir</a></td>
                        
                        <td align="center"><a href=
"${pageContext.request.contextPath}/EnderecoCarregar?idEndereco=${endereco.idEndereco}">
                               Alterar</a></td>
                    </tr>                
                </c:forEach>
            </tbody>
        </table>
        <div align="center">        
            <a href="${pageContext.request.contextPath}/EnderecoNovo">Novo</a>
            <a href="index.jsp">Voltar à Página Inicial</a>
        </div>        

<%@ include file="/footer.jsp" %>        


