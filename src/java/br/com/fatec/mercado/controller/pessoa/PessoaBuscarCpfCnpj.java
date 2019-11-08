/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.pessoa;


import br.com.fatec.mercado_lib.dao.PessoaDAO;
import br.com.fatec.mercado_lib.model.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 *
 * @author jeffersonpasserini
 */
@WebServlet(name = "PessoaBuscarCpfCnpj", urlPatterns = {"/PessoaBuscarCpfCnpj"})
public class PessoaBuscarCpfCnpj extends HttpServlet {

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
        try{
            String cpfCnpj = request.getParameter("cpfcnpjpessoa");

            //limpa cpf cnpj
            cpfCnpj = cpfCnpj.replaceAll("[./-]", "");

            PessoaDAO oPessoaDAO = new PessoaDAO();
            Pessoa oPessoa = oPessoaDAO.carregarCpf(cpfCnpj);
            
            Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
            String jsonPessoa = gson.toJson(oPessoa);
            
            response.setCharacterEncoding("iso-8859-1");
            response.getWriter().write(jsonPessoa);
 
        } catch (Exception ex){
             System.out.println("Problemas ao validar cpf/cnpj"
                     + " Erro: " + ex.getMessage());
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
