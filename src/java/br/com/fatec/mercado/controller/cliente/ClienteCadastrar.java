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
import br.com.fatec.mercado_lib.model.Marca;
import br.com.fatec.mercado_lib.model.Cliente;
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
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=iso-8859-1");
        int idcliente = Integer.parseInt(request.getParameter("idcliente"));
        int idMarca = Integer.parseInt(request.getParameter("idmarca"));
        String nomePessoa = request.getParameter("nomepessoa");
        double CPF = Double.parseDouble(request.getParameter("CPF"));
        String descricao = request.getParameter("descricao");
        String mensagem = null;
        
        try{
            GenericDAO oMarcaDAO = new MarcaDAO();
            Marca oMarca = (Marca) oMarcaDAO.carregar(idMarca);
            
            Cliente oCliente = new Cliente();
            oCliente.setIdCliente(idcliente);
            oCliente.setNomePessoa(nomePessoa);
            oCliente.setCPF(CPF);
               
            GenericDAO dao = new ClienteDAO();
            if (dao.cadastrar(oCliente)){
                mensagem = "Cliente cadastrado com sucesso!";                
            } else {
                mensagem = "Problemas ao cadastrar Cliente. "
                    + "Verifique os dados informados "
                        + "e tente novamente!";
            }

            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("ClienteListar");

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
