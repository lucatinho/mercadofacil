
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>

        <h2>Clientes</h2>
        <table align="center" border="1">
            <thead>
                <tr>
                    <th colspan="6" align="center">Lista de Clientes</th>
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
                <c:forEach var="cliente" items="${clientes}">                    
                    <tr>
                        <td align="center">${cliente.idCliente}</td>                    
                        <td align="center">${cliente.nome}</td>
                        <td align="center">${cliente.cpf}</td>
                        <td align="center">${cliente.cidade.nomeCidade}-${cliente.cidade.estado.siglaEstado}</td>
                        <td align="center">                        
                        <a href="${pageContext.request.contextPath}/ClienteExcluir?idCliente=${cliente.idCliente}"><button><c:out value="${cliente.situacao == 'A' ? 'Inativar': 'Ativar'}"/></button></a>                        
                        </td>
                        <td align="center">
                            <a href="${pageContext.request.contextPath}/ClienteCarregar?idCliente=${cliente.idCliente}"><button>Alterar</button></a>
                        </td>                        
                    </tr>                
                </c:forEach>
            </tbody>
        </table>
        <div align="center">        
            <a href="${pageContext.request.contextPath}/ClienteNovo">Novo Cliente</a>
            <a href="index.jsp">Voltar à Página Inicial</a>
        </div>        

<%@ include file="/footer.jsp" %>        


