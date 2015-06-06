package Controller;

import Metier.Etudiant;
import Metier.Etudiant_Charge;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "AuthentificationServlet", urlPatterns = {"/AuthentificationServlet"})
public class AuthentificationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cne = (String)request.getParameter("cne");
        request.getSession().setAttribute("CurrentEtudiant", Etudiant_Charge.GetEtudiantChargeByCne(cne));
        request.getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cne = (String)request.getParameter("cne");
        request.getSession().setAttribute("CurrentEtudiant", Etudiant_Charge.GetEtudiantChargeByCne(cne));
        request.getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }

}
