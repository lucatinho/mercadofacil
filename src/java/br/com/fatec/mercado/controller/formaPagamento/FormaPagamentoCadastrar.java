package br.com.fatec.mercado.controller.formaPagamento;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.dao.FormaPagamentoDAO;
import br.com.fatec.mercado_lib.model.FormaPagamento;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phelipe
 */
@WebServlet(name = "FormaPagamentoCadastrar", urlPatterns = {"/FormaPagamentoCadastrar"})
public class FormaPagamentoCadastrar extends HttpServlet {

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
        int idFormaPagamento = Integer.parseInt(request.getParameter("idformaPagamento"));
        String nomeFormaPagamento = request.getParameter("nomeformaPagamento");
        String mensagem = null;
        
        FormaPagamento oFormaPagamento = new FormaPagamento();
        oFormaPagamento.setIdFormaPagamento(idFormaPagamento);
        oFormaPagamento.setNomeFormaPagamento(nomeFormaPagamento);
        
        try{
            GenericDAO dao =new FormaPagamentoDAO();
            if (dao.cadastrar(oFormaPagamento)){
                mensagem = "FormaPagamento cadastrado com sucesso!";
            }else{
                mensagem = "Problemas ao cadastrar FormaPagamento. Verifique os dados informados e tente novamente";
            }
            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("FormaPagamentoListar");
        
        }catch (Exception ex){
            System.out.println("Problemas no Servlet ao cadastrar FormaPagamento"+ex.getMessage());
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
