package Controller;

import Metier.Bac;
import Metier.Etudiant;
import Metier.Filiere;
import Metier.Inscription;
import Metier.Institut;
import Metier.Pays;
import Metier.SerieBac;
import Metier.Tuteur;
import Metier.Ville;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "ModifierInscriptionServlet", urlPatterns = {"/ModifierInscriptionServlet"})
public class ModifierInscriptionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              response.setCharacterEncoding("UTF-8"); request.setCharacterEncoding("UTF-8");
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yy");
        Bac bac = new Bac();
        Pays p = new Pays(request.getParameter("Pays"),request.getParameter("Pays_ar"));
        Ville v = new Ville(request.getParameter("Ville"), request.getParameter("Ville_ar"), p);
        SerieBac serieBac = SerieBac.GetSerieBacById(Integer.parseInt(request.getParameter("serieBac")));
        Filiere f = Filiere.GetFiliereByID(Integer.parseInt(request.getParameter("filiere")));
        Institut inst = Institut.GetInstitutByID(Integer.parseInt(request.getParameter("institut")));
        
        Tuteur moi = new Tuteur();
        Tuteur Pere = new Tuteur();
        Tuteur Mere = new Tuteur();
        Tuteur tuteur = new Tuteur();
        Etudiant e = new Etudiant();
        e.setCNE(request.getParameter("cne"));
        moi.setNom(request.getParameter("nom"));
        moi.setNom_ar(request.getParameter("nom_ar"));
        moi.setPrenom(request.getParameter("prenom"));
        moi.setPrenom_ar(request.getParameter("prenom_ar"));
        e.setNationalite(request.getParameter("nationalite"));
        e.setNationalite_ar(request.getParameter("nationalite_ar"));
        e.setPays(p);
        e.setPhoto(request.getParameter("photo"));
        e.setSexe(request.getParameter("Sexe"));
        try {
            e.setDateNaissance(sdf.parse(request.getParameter("dateNaissance")));
        } catch (ParseException ex) {
            Logger.getLogger(validerInscriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        moi.setProfession(request.getParameter("profession"));
        moi.setProfession_ar(request.getParameter("profession_ar"));
        moi.setTelephone(request.getParameter("tel"));
        moi.setEmail(request.getParameter("email"));
        moi.setAddress(request.getParameter("adresse"));
        moi.setAddress_ar(request.getParameter("adresse_ar"));
        e.setCIN(request.getParameter("cin"));
        e.setVille(v);
        e.setHandicap(Boolean.parseBoolean(request.getParameter("Handicape")));
        e.setNatureHandicap(request.getParameter("NatureHandicape"));
        e.setNatureHandicap_ar(request.getParameter("NatureHandicape_ar"));
        e.setSexe(request.getParameter("Sexe"));
        try {
            e.setDateCin(sdf.parse(request.getParameter("DateCin")));
        } catch (ParseException ex) {
            Logger.getLogger(validerInscriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        e.setBourse(Boolean.parseBoolean(request.getParameter("Bourse")));
        e.setT(moi);
        
        Pere.setNom(request.getParameter("nomPere"));
        Pere.setNom_ar(request.getParameter("nom_arPere"));
        Pere.setPrenom(request.getParameter("prenomPere"));
        Pere.setPrenom_ar(request.getParameter("prenom_arPere"));
        Pere.setProfession(request.getParameter("professionPere"));
        Pere.setProfession_ar(request.getParameter("profession_arPere"));
        Pere.setAddress(request.getParameter("AddressPere"));
        Pere.setAddress_ar(request.getParameter("Address_arPere"));
        Pere.setEmail(request.getParameter("EmailPere"));
        Pere.setTelephone(request.getParameter("TelephonePere"));
        Mere.setNom(request.getParameter("nomMere"));
        Mere.setNom_ar(request.getParameter("nom_arMere"));
        Mere.setPrenom(request.getParameter("prenomMere"));
        Mere.setPrenom_ar(request.getParameter("prenom_arMere"));
        Mere.setProfession(request.getParameter("professionMere"));
        Mere.setProfession_ar(request.getParameter("profession_arMere"));
        Mere.setAddress(request.getParameter("AddressMere"));
        Mere.setAddress_ar(request.getParameter("Address_arMere"));
        Mere.setEmail(request.getParameter("EmailMere"));
        Mere.setTelephone(request.getParameter("TelephoneMere"));
        e.setPere(Pere);
        e.setMere(Mere);
        
        tuteur.setNom(request.getParameter("nomTuteur"));
        tuteur.setNom_ar(request.getParameter("nom_arTuteur"));
        tuteur.setPrenom(request.getParameter("prenomTuteur"));
        tuteur.setPrenom_ar(request.getParameter("prenom_arTuteur"));
        tuteur.setProfession(request.getParameter("professionTuteur"));
        tuteur.setProfession_ar(request.getParameter("profession_arTuteur"));
        tuteur.setAddress(request.getParameter("AddressTuteur"));
        tuteur.setAddress_ar(request.getParameter("Address_arTuteur"));
        tuteur.setEmail(request.getParameter("EmailTuteur"));
        tuteur.setTelephone(request.getParameter("TelephoneTuteur"));
        
        e.setTuteur(tuteur);
        bac.setAcademie(request.getParameter("Academie"));
        bac.setAcademie_ar(request.getParameter("Academie_ar"));
        bac.setLycee_Bac(request.getParameter("lycee"));
        bac.setLycee_Bac_ar(request.getParameter("lycee_ar"));
        bac.setMATH_EN(Float.parseFloat(request.getParameter("Math_en")));
        bac.setPHYS_EN(Float.parseFloat(request.getParameter("Phys_en")));
        bac.setNAT_EN(Float.parseFloat(request.getParameter("nat_en")));
        bac.setMOY_ER(Float.parseFloat(request.getParameter("moy_er")));
        bac.setMOY_EN(Float.parseFloat(request.getParameter("moy_en")));
        bac.setMention_Bac(request.getParameter("Mention"));
        bac.setProvince(request.getParameter("Province"));
        bac.setProvince_ar(request.getParameter("Province_ar"));
        bac.setSerie_Bac(serieBac);
        bac.setEtudiant(e);
        Inscription insc = new Inscription(new Date(), "attente", bac, inst, f, "attente");
        /*response.getWriter().println(Bac.InsertBac(bac));
        response.getWriter().println(Pays.InsertPays(p));
        response.getWriter().println(Tuteur.InsertTuteur(moi));
        response.getWriter().println(Tuteur.InsertParent(Pere));
        response.getWriter().println(Tuteur.InsertParent(Mere));
        response.getWriter().println(Etudiant.InsertEtudiant(e));
        response.getWriter().println(e);
        response.getWriter().println(Filiere.InsertFiliere(f));
        response.getWriter().println(Institut.InsertInstitut(inst));
        response.getWriter().println(insc);
        response.getWriter().println(Bac.InsertBac(bac));
        *///response.getWriter().println(Inscription.InsertInscription(insc));
           if(Inscription.InsertInscription(insc)!=-1 )
            {
                
                request.getSession().setAttribute("CurrentBac", bac);
                request.getSession().setAttribute("CurrentInscription",insc);
                response.getWriter().print("ok");
                request.getRequestDispatcher("/WEB-INF/ADMIN/Accueil.jsp").forward(request, response);
            }else{
                response.getWriter().print("Nok");
                //request.getRequestDispatcher("error.jsp").forward(request, response);
            }
           
                  
    }
}


