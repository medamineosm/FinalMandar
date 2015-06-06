/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
@WebServlet(name = "AuthenAdminServlet", urlPatterns = {"/AuthenAdminServlet"})
public class AuthenAdminServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("login").equals("admin") && request.getParameter("pass").equals("admin"))
        {
            request.getRequestDispatcher("/WEB-INF/ADMIN/Accueil.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

}
