package Controller;

import Metier.Connexion;
import Metier.Inscription;
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
@WebServlet(name = "validerPreinscriptionServet", urlPatterns = {"/validerPreinscriptionServet"})
public class validerPreinscriptionServet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Inscription inscri = Inscription.getInscriptionByNumero(request.getParameter("id"));
        response.getWriter().print(Inscription.ValiderInscription(inscri));
    }

    
}
