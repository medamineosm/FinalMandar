/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Metier.Bac;
import Metier.Filiere;
import Metier.Institut;
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
@WebServlet(name = "PostulerServlet", urlPatterns = {"/PostulerServlet"})
public class PostulerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Bac b = (Bac)request.getSession().getAttribute("CurrentBac");
        Institut ecole = Institut.GetInstitutByID(Integer.parseInt(request.getParameter("institut")));
        Filiere f = Filiere.GetFiliereByID(Filiere.GetFiliereById(request.getParameter("filiere"))) ;
        response.getWriter().println(f);
        response.getWriter().println(ecole);
        
    }

}
