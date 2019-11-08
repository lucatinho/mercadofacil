/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.mercado;

import br.com.fatec.mercado_lib.dao.CidadeDAO;
import br.com.fatec.mercado_lib.dao.EstadoDAO;
import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.dao.MercadoDAO;
import br.com.fatec.mercado_lib.model.Cidade;
import br.com.fatec.mercado_lib.model.Mercado;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jeffersonpasserini
 */
@WebServlet(name = "MercadoCarregar", urlPatterns = {"/MercadoCarregar"})
public class MercadoCarregar extends HttpServlet {

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
        int idMercado = Integer.parseInt(request.getParameter("idMercado"));
        String mensagem = null;
        try{
            //carrega dados mercado
            GenericDAO oMercadoDAO = new MercadoDAO();
            Mercado oMercado = (Mercado) oMercadoDAO.carregar(idMercado);
            request.setAttribute("mercado", oMercado );
            
            //Gera lista de estado
            GenericDAO oEstadoDAO = new EstadoDAO();
            request.setAttribute("estados", oEstadoDAO.listar());
            
            //Gera lista de cidade
            CidadeDAO oCidadeDAO = new CidadeDAO();
            List<Cidade> lstCidades = oCidadeDAO.listar(oMercado.getCidade().getEstado().getIdEstado());
            request.setAttribute("cidades", lstCidades );
            
            //dispacha objeto de lombada para a pagina jsp
            request.getRequestDispatcher("/cadastros/mercado/mercadoCadastrar.jsp")
                    .forward(request, response);
        }
        catch(Exception ex){
            System.out.println("Problemas no Servlet ao Novo mercado! "
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
