package br.com.fatec.mercado.controller.endereco;

import br.com.fatec.mercado_lib.dao.EnderecoDAO;
import br.com.fatec.mercado_lib.dao.CidadeDAO;
import br.com.fatec.mercado_lib.dao.GenericDAO;
import br.com.fatec.mercado_lib.model.Endereco;
import br.com.fatec.mercado_lib.model.Cidade;
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
@WebServlet(name = "EnderecoCadastrar", urlPatterns = {"/EnderecoCadastrar"})
public class EnderecoCadastrar extends HttpServlet {

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
        int idendereco = Integer.parseInt(request.getParameter("idendereco"));
        double CEP = Double.parseDouble(request.getParameter("CEP"));
        int idCidade = Integer.parseInt(request.getParameter("idcidade"));
        String rua = request.getParameter("rua");
        int numeroCasa = Integer.parseInt(request.getParameter("numerocasa"));
        String mensagem = null;
        
        try{
            GenericDAO oCidadeDAO = new CidadeDAO();
            Cidade oCidade = (Cidade) oCidadeDAO.carregar(idCidade);
            
            Endereco oEndereco = new Endereco();
            oEndereco.setIdEndereco(idendereco);
            oEndereco.setCEP(CEP);
            oEndereco.setCidade(oCidade);
            oEndereco.setRua(rua);
            oEndereco.setNumeroCasa(numeroCasa);
               
            GenericDAO dao = new EnderecoDAO();
            if (dao.cadastrar(oEndereco)){
                mensagem = "Endereco cadastrada com sucesso!";                
            } else {
                mensagem = "Problemas ao cadastrar Endereco. "
                    + "Verifique os dados informados "
                        + "e tente novamente!";
            }

            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("EnderecoListar");

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
