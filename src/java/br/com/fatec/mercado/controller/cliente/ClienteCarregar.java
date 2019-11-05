/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.cliente;


import br.com.fatec.mercado.controller.cliente.*;
import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.dao.MarcaDAO;
import br.com.fatec.mercado_lib.dao.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jeffersonpasserini
 */
@WebServlet(name = "ClienteCarregar", urlPatterns = {"/ClienteCarregar"})
public class ClienteCarregar extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=iso-8859-1");
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        String mensagem = null;
        try{
            //Gera lista de marca
            GenericDAO oMarcaDAO = new MarcaDAO();
            request.setAttribute("marcas", oMarcaDAO.listar());
            //cria variavel no servidor para armazenar objeto de lombada
            GenericDAO oClienteDAO = new ClienteDAO();
            request.setAttribute("cliente", oClienteDAO.carregar(idCliente));
            
            //dispacha objeto de lombada para a pagina jsp
            request.getRequestDispatcher("/cadastros/cliente/clienteCadastrar.jsp")
                    .forward(request, response);
        }
        catch(Exception ex){
            System.out.println("Problemas no Servlet ao Nova Cliente! "
                    + "Erro: " + ex.getMessage());
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
        processRequest(request, response);
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
        processRequest(request, response);
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
