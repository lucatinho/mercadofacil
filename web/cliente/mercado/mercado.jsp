<%-- 
    Document   : Cidade
    Created on : 13/05/2019, 19:54:57
    Author     : jeffersonpasserini
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>

        <h2>Mercados</h2>
        <table align="center" border="1">
            <thead>
                <tr>
                    <th colspan="6" align="center">Lista de Mercadoes</th>
                </tr>                        
                <tr>
                    <th align="center">ID</th>                    
                    <th align="center">Nome</th>
                    <th align="center">Cpf/Cnpj</th>
                    <th align="center">Cidade - UF</th>
                    <th align="center" colspan="2">Editar</th>
                </tr>
            </thead>                                 
            <tbody>
                <c:forEach var="mercado" items="${mercadoes}">                    
                    <tr>
                        <td align="center">${mercado.idMercado}</td>                    
                        <td align="center">${mercado.nome}</td>
                        <td align="center">${mercado.cpf}</td>
                        <td align="center">${mercado.cidade.nomeCidade}-${mercado.cidade.estado.siglaEstado}</td>
                        <td align="center">                        
                        <a href="${pageContext.request.contextPath}/MercadoExcluir?idMercado=${mercado.idMercado}"><button><c:out value="${mercado.situacao == 'A' ? 'Inativar': 'Ativar'}"/></button></a>                        
                        </td>
                        <td align="center">
                            <a href="${pageContext.request.contextPath}/MercadoCarregar?idMercado=${mercado.idMercado}"><button>Alterar</button></a>
                        </td>                        
                    </tr>                
                </c:forEach>
            </tbody>
        </table>
        <div align="center">        
            <a href="${pageContext.request.contextPath}/MercadoNovo">Novo Mercado</a>
            <a href="index.jsp">Voltar à Página Inicial</a>
        </div>        

<%@ include file="/footer.jsp" %>        


