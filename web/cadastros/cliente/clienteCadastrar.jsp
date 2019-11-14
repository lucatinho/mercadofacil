<%-- 
    Document   : clientecadastrar.jsp
    Created on : 03/11/2019, 22:12:20
    Author     : jeffersonpasserini
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<jsp:include page="/header.jsp"/>


        <form name="cadastrarcliente" action="ClienteCadastrar" 
              method="POST">
            
            <table align="center" border="0">
                <thead>
                    <tr>
                        <th colspan="2" align="center">
                            Cadastro de Cliente</th>
                    </tr>
                    <tr>
                        <th colspan="2" align="center">${mensagem}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cpf/Cnpj: </td>
                        <td><input type="text" name="cpfcnpjpessoa" id="cpfcnpjpessoa" 
                         value="${cliente.cpf}" /></td>
                    </tr>
                    <tr>
                        <td>Id Cliente: </td>
                        <td><input type="text" name="idcliente" 
                          id="idcliente" value="${cliente.idCliente}"
                          readonly="readonly" /></td>
                        <td>Id Pessoa: </td>
                        <td><input type="text" name="idpessoa" 
                          id="idpessoa" value="${cliente.idPessoa}"
                          readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Nome: </td>
                        <td><input type="text" name="nomepessoa" id="nomepessoa" 
                         value="${cliente.nome}" size="50" 
                         maxlength="50" /></td>
                    </tr>
                    <tr>
                        <td>Data Nascimento: </td>
                        <td><input type="date" name="datanascimento" id="datanascimento" 
                         value="${cliente.dataNascimento}" /></td>
                    </tr>
                    <tr>
                        <td>Rua: </td>
                        <td><input type="textarea" name="rua" id="rua" 
                         value="${cliente.rua}" size="100" 
                         maxlength="50" /></td>
                    </tr>
                    <tr>
                        <td>Estado: </td>
                        <td>
                            <select name="idestado" id="idestado" onchange="BuscarCidadesPorEstado()" >
                            <option value="">Selecione</option>
                            <c:forEach var="estado" items="${estados}">
                                <option value="${estado.idEstado}" 
                                    ${cliente.cidade.estado.idEstado == estado.idEstado ? "selected" : ""}>
                                    ${estado.nomeEstado}
                                </option>
                            </c:forEach>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Cidade:</td>
                        <td>
                            <select name="idcidade" id="idcidade">
                                <option value="">Selecione</option>
                                <c:forEach var="cidade" items="${cidades}">
                                    <option value="${cidade.idCidade}" 
                                        ${cliente.cidade.idCidade == cidade.idCidade ? "selected" : ""}>
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

<script type="text/javascript">
    cidade = '';
    function BuscarCidadesPorEstado() {
        $('#idcidade').empty(); //..limpa as cidades que porventura já tenham sido pesquisadas.
        idEst = $('#idestado').val();
        console.log("entrou buscar estado");
        if (idEst != 'null')
        {
            console.log("estado = "+idEst);
            url = "CidadeBuscarPorEstado?idestado="+idEst;
            //console.log(url);
            $.getJSON(url, function (result) {
                //alert(result);
                $.each(result, function (index, value) {
                    $('#idcidade').append(
                            '<option id="cidade_' + value.idCidade + '"value="' + value.idCidade + '">' + value.nomeCidade + '</option>'
                            );
                    if(cidade !== ''){
                        $('#cidade_'+cidade).prop({selected: true});
                    }else{
                        $('#cidade_').prop({selected: true});
                    }
                });
            }
            ).fail(function (obj, textStatus, error) {
                alert('Erro do servidor: ' + textStatus + ', ' + error);
            });
        }
    }
    
    function carregarPessoa(v) {
        //console.log("Entrou");
        var idM = v;
        //console.log("Usuario = " + idM);
        $(document).ready(function () {             
            $.getJSON('PessoaBuscarCpfCnpj', {cpfcnpjpessoa: idM}, function (respostaServlet) {
                console.log(respostaServlet);
                var id = respostaServlet.idPessoa;
                if (id!="0")
                {
                    $('#idpessoa').val(respostaServlet.idPessoa);
                    $('#nomepessoa').val(respostaServlet.nome);
                    var datanasc = respostaServlet.dataNascimento;
                    console.log(datanasc);
                    $('#datanascimento').val(datanasc);
                    $('#idestado').val(respostaServlet.cidade.estado.idEstado);
                    cidade = respostaServlet.cidade.idCidade;
                    BuscarCidadesPorEstado();
                }
            });
         });
         //document.getElementById("cpfcnpjpessoa").readOnly = true;
         //document.getElementById("nomepessoa").readOnly = true;
    }

</script>
