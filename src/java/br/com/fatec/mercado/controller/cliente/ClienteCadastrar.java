/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.cliente;

import br.com.fatec.mercado_lib.dao.CidadeDAO;
import br.com.fatec.mercado_lib.dao.ClienteDAO;
import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.model.Cidade;
import br.com.fatec.mercado_lib.model.Cliente;
import br.com.fatec.mercado_lib.utils.Conversao;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jeffersonpasserini
 */
@WebServlet(name = "ClienteCadastrar", urlPatterns = {"/ClienteCadastrar"})
public class ClienteCadastrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=iso-8859-1");
        //pega dados do formulario
        int idCliente = Integer.parseInt(request.getParameter("idcliente"));
        int idPessoa = Integer.parseInt(request.getParameter("idpessoa"));
        String nome = request.getParameter("nomepessoa");
        String cpfCnpj = request.getParameter("cpfcnpjpessoa");
        Date dataNascimento = Conversao.converterData(request.getParameter("datanascimento"));
        int idCidade = Integer.parseInt(request.getParameter("idcidade"));
        String rua = request.getParameter("rua");

        //limpa cpf cnpj
        cpfCnpj = cpfCnpj.replaceAll("[./-]", "");

        String mensagem = null;

        try {
            //busca objeto de cidade
            GenericDAO oCidadeDAO = new CidadeDAO();
            Cidade oCidade = (Cidade) oCidadeDAO.carregar(idCidade);
            //gera objeto de cliente
            Cliente oCliente = new Cliente(idCliente,
                    rua,
                    "",
                    idPessoa,
                    cpfCnpj,
                    nome,
                    dataNascimento,
                    oCidade);

            GenericDAO dao = new ClienteDAO();
            if (dao.cadastrar(oCliente)) {
                mensagem = "Cliente cadastrada com sucesso!";
            } else {
                mensagem = "Problemas ao cadastrar Cliente. "
                        + "Verifique os dados informados "
                        + "e tente novamente!";
            }

            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("ClienteListar");

        } catch (Exception ex) {
            System.out.println("Problemas no Servlet ao cadastrar"
                    + " Usuário! Erro: " + ex.getMessage());
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ClienteCadastrar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ClienteCadastrar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
