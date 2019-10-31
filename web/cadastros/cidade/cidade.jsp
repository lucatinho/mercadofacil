<%-- 
    Document   : Cidade
    Created on : 13/05/2019, 19:54:57
    Author     : jeffersonpasserini
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>


        <h2>Cidades</h2>
        <table align="center" border="1">
            <thead>
                <tr>
                    <th colspan="6" align="center">Lista de Cidades</th>
                </tr>                        
                <tr>
                    <th align="center">ID</th>                    
                    <th align="center">Nome</th>
                    <th align="center">Estado</th>
                    <th align="center" colspan="2">Editar</th>
                </tr>
            </thead>                                 
            <tbody>
                <c:forEach var="cidade" items="${cidades}">                    
                    <tr>
                        <td align="center">${cidade.idCidade}</td>                    
                        <td align="center">${cidade.nomeCidade}</td>
                        <td align="center">${cidade.estado.siglaEstado}</td>
                        <td align="center"><a href=
"${pageContext.request.contextPath}/CidadeExcluir?idCidade=${cidade.idCidade}">
                               Excluir</a></td>
                        
                        <td align="center"><a href=
"${pageContext.request.contextPath}/CidadeCarregar?idCidade=${cidade.idCidade}">
                               Alterar</a></td>
                    </tr>                
                </c:forEach>
            </tbody>
        </table>
        <div align="center">        
            <a href="${pageContext.request.contextPath}/CidadeNovo">Novo</a>
            <a href="index.jsp">Voltar à Página Inicial</a>
        </div>        

<%@ include file="/footer.jsp" %>        


