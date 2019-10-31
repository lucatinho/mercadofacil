/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.cidade;


import br.com.fatec.mercado_lib.dao.CidadeDAO;
import br.com.fatec.mercado_lib.dao.EstadoDAO;
import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.model.Cidade;
import br.com.fatec.mercado_lib.model.Estado;
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
@WebServlet(name = "CidadeCadastrar", urlPatterns = {"/CidadeCadastrar"})
public class CidadeCadastrar extends HttpServlet {

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
        int idcidade = Integer.parseInt(request.getParameter("idcidade"));
        int idEstado = Integer.parseInt(request.getParameter("idestado"));
        String nomeCidade = request.getParameter("nomecidade");
        String mensagem = null;
        
        try{
            GenericDAO oEstadoDAO = new EstadoDAO();
            Estado oEstado = (Estado) oEstadoDAO.carregar(idEstado);
            
            Cidade oCidade = new Cidade();
            oCidade.setIdCidade(idcidade);
            oCidade.setNomeCidade(nomeCidade);
            oCidade.setEstado(oEstado);
               
            GenericDAO dao = new CidadeDAO();
            if (dao.cadastrar(oCidade)){
                mensagem = "Cidade cadastrada com sucesso!";                
            } else {
                mensagem = "Problemas ao cadastrar Cidade. "
                    + "Verifique os dados informados "
                        + "e tente novamente!";
            }

            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("CidadeListar");

        } catch (Exception ex){
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
