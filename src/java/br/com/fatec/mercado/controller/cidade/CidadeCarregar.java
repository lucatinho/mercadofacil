/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.cidade;


import br.com.fatec.mercado_lib.dao.CidadeDAO;
import br.com.fatec.mercado_lib.dao.EstadoDAO;
import br.com.fatec.mercado_lib.dao.GenericDAO;
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
@WebServlet(name = "CidadeCarregar", urlPatterns = {"/CidadeCarregar"})
public class CidadeCarregar extends HttpServlet {

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
        int idCidade = Integer.parseInt(request.getParameter("idCidade"));
        String mensagem = null;
        try{
            //Gera lista de estado
            GenericDAO oEstadoDAO = new EstadoDAO();
            request.setAttribute("estados", oEstadoDAO.listar());
            //cria variavel no servidor para armazenar objeto de lombada
            GenericDAO oCidadeDAO = new CidadeDAO();
            request.setAttribute("cidade", oCidadeDAO.carregar(idCidade));
            
            //dispacha objeto de lombada para a pagina jsp
            request.getRequestDispatcher("/cadastros/cidade/cidadeCadastrar.jsp")
                    .forward(request, response);
        }
        catch(Exception ex){
            System.out.println("Problemas no Servlet ao Nova Cidade! "
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
