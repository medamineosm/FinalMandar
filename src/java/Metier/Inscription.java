/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author PC
 */
public class Inscription {
    private String numero;
    private Date date_inscription;
    private String etat_inscription;
    private Bac bac;
    private Institut institut;
    private Filiere filiere;
    private String resultat;

    public Inscription(String numero,Date date_inscription, String etat_inscription, Bac bac, Institut institut, Filiere filiere, String resultat) {
        this.numero = numero;
        this.date_inscription = date_inscription;
        this.etat_inscription = etat_inscription;
        this.bac = bac;
        this.institut = institut;
        this.filiere = filiere;
        this.resultat = resultat;
    }
    public Inscription(Date date_inscription, String etat_inscription, Bac bac, Institut institut, Filiere filiere, String resultat) {
        this.numero = "DOS"+(lastNumero()+1);
        this.date_inscription = date_inscription;
        this.etat_inscription = etat_inscription;
        this.bac = bac;
        this.institut = institut;
        this.filiere = filiere;
        this.resultat = resultat;
    }
    
    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public Date getDate_inscription() {
        return date_inscription;
    }

    public void setDate_inscription(Date date_inscription) {
        this.date_inscription = date_inscription;
    }

    public String isEtat_inscription() {
        return etat_inscription;
    }

    public void setEtat_inscription(String etat_inscription) {
        this.etat_inscription = etat_inscription;
    }

    public Bac getBac() {
        return bac;
    }

    public void setBac(Bac bac) {
        this.bac = bac;
    }

    public Institut getInstitut() {
        return institut;
    }

    public void setInstitut(Institut institut) {
        this.institut = institut;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }

    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }
    public static int InsertInscription(Inscription insc)
    {
        try {
                String sql ="INSERT INTO inscription "
                        + "(numero, date_inscription, etat_inscription, id_bac, id_institut, id_filiere, resultat) "
                        + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, insc.getNumero());
                ps.setDate(2, new java.sql.Date(insc.getDate_inscription().getTime()));
                ps.setString(3, insc.isEtat_inscription());
                ps.setInt(4, Bac.InsertBac(insc.getBac()));
                ps.setInt(5,Institut.InsertInstitut(insc.getInstitut()));
                ps.setInt(6,Filiere.InsertFiliere(insc.getFiliere()));
                ps.setString(7,insc.getResultat());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(numero) from inscription");
                
                ResultSet rss =  pss.executeQuery();
                if(rss.next())
                {
                    return Integer.parseInt(rss.getString(1).substring(3));
                }else{
                    return -1;
                }
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return -1;
            }
    }
    
    public static int lastNumero()
    {
        try{
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(numero) from inscription");
                
                ResultSet rss =  pss.executeQuery();
                if(rss.next())
                {
                    return Integer.parseInt(rss.getString(1).substring(3));
                }else{
                    return -1;
                }
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return -1;
            }
    }

    public static ArrayList<Inscription> getAllInscription()
    {
        ArrayList listInscri = new ArrayList<>();
        try{
             PreparedStatement pss = Connexion.getconOne().prepareStatement("select * from inscription");
                
                ResultSet rss =  pss.executeQuery();
                while(rss.next())
                {
                     listInscri.add(new Inscription(rss.getString("numero"),new Date(rss.getDate("date_inscription").getTime() ), 
                             rss.getString("etat_inscription"), Bac.GetBacById(rss.getInt("id_bac")),
                             Institut.GetInstitutByID(rss.getInt("id_institut")), 
                             Filiere.GetFiliereByID(rss.getInt("id_filiere")), rss.getString("resultat")));
                }
                return listInscri;
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return null;
            }
    }
    @Override
    public String toString() {
        return "Inscription{" + "numero=" + numero + ", date_inscription=" + date_inscription + ", etat_inscription=" + etat_inscription + ", bac=" + bac + ", institut=" + institut + ", filiere=" + filiere + ", resultat=" + resultat + '}';
    }
    public static int ValiderInscription(Inscription insc)
    {
        insc.setEtat_inscription("valide");
        try {
            String sql ="INSERT INTO inscription "
                        + "(numero, date_inscription, etat_inscription, id_bac, id_institut, id_filiere, resultat) "
                        + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, insc.getNumero());
                ps.setDate(2, new java.sql.Date(insc.getDate_inscription().getTime()));
                ps.setString(3, insc.isEtat_inscription());
                ps.setInt(4, Bac.InsertBacAdmin(insc.getBac()));
                ps.setInt(5,Institut.InsertInstitutAdmin(insc.getInstitut()));
                ps.setInt(6,Filiere.InsertFiliereAdmin(insc.getFiliere()));
                ps.setString(7,insc.getResultat());
                int rs = ps.executeUpdate();
                if(rs!=0)
                {
                    PreparedStatement x = Connexion.getconOne().prepareStatement("UPDATE inscription "
                    + "SET etat_inscription = 'valide' WHERE numero = ?");
                    x.setString(1, insc.getNumero());
                    int n = x.executeUpdate();
                }
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(numero) from inscription");
                
                ResultSet rss =  pss.executeQuery();
                if(rss.next())
                {
                    return Integer.parseInt(rss.getString(1).substring(3));
                }else{
                    return -1;
                }
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return -1;
            }
    
    }
    public static Inscription getInscriptionByNumero(String numero)
    {
        Inscription Inscri = null;
        try{
             PreparedStatement pss = Connexion.getconOne().prepareStatement("select * from inscription where numero=?");
                pss.setString(1, numero);
                ResultSet rss =  pss.executeQuery();
                while(rss.next())
                {
                     Inscri =new Inscription(rss.getString("numero"),new Date(rss.getDate("date_inscription").getTime() ), 
                             rss.getString("etat_inscription"), Bac.GetBacById(rss.getInt("id_bac")),
                             Institut.GetInstitutByID(rss.getInt("id_institut")), 
                             Filiere.GetFiliereByID(rss.getInt("id_filiere")), rss.getString("resultat"));
                }
                return Inscri;
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return null;
            }
    }
}
