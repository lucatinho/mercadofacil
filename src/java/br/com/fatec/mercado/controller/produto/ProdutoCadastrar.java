/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.mercado.controller.produto;


import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.dao.MarcaDAO;
import br.com.fatec.mercado_lib.dao.ProdutoDAO;
import br.com.fatec.mercado_lib.model.Marca;
import br.com.fatec.mercado_lib.model.Produto;
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
@WebServlet(name = "ProdutoCadastrar", urlPatterns = {"/ProdutoCadastrar"})
public class ProdutoCadastrar extends HttpServlet {

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
        int idproduto = Integer.parseInt(request.getParameter("idproduto"));
        int idMarca = Integer.parseInt(request.getParameter("idmarca"));
        String nomeProduto = request.getParameter("nomeproduto");
        double preco = Double.parseDouble(request.getParameter("preco"));
        String descricao = request.getParameter("descricao");
        String mensagem = null;
        
        try{
            GenericDAO oMarcaDAO = new MarcaDAO();
            Marca oMarca = (Marca) oMarcaDAO.carregar(idMarca);
            
            Produto oProduto = new Produto();
            oProduto.setIdProduto(idproduto);
            oProduto.setNomeProduto(nomeProduto);
            oProduto.setMarca(oMarca);
            oProduto.setDescricao(descricao);
            oProduto.setPreco(preco);
               
            GenericDAO dao = new ProdutoDAO();
            if (dao.cadastrar(oProduto)){
                mensagem = "Produto cadastrado com sucesso!";                
            } else {
                mensagem = "Problemas ao cadastrar Produto. "
                    + "Verifique os dados informados "
                        + "e tente novamente!";
            }

            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("ProdutoListar");

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
