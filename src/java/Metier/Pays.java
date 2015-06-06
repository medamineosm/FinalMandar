/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author PC
 */
public class Pays {
    private String nom;
    private String nom_ar;

    public Pays(String nom, String nom_ar) {
        this.nom = nom;
        this.nom_ar = nom_ar;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNom_ar() {
        return nom_ar;
    }

    public void setNom_ar(String nom_ar) {
        this.nom_ar = nom_ar;
    }

    @Override
    public String toString() {
        return "Pays{" + "nom=" + nom + ", nom_ar=" + nom_ar + '}';
    }
    
    public static Pays getPaysById(int id)
    {
        try {
            Pays p = null;
            String sql = "select * from pays where id= ?";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs =  ps.executeQuery();
            while(rs.next())
            {
                p = new Pays(rs.getString("nom"), rs.getString("nom_ar"));
            }
            return p;
        } catch (SQLException e) {
            System.err.println("Error getPaysById()");
            return null;
        }
    }
    
    public static int InsertPays(Pays p)
        {
            try {
                String sql ="insert into pays(nom,nom_ar)values(?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getNom_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id) from pays");
                
                ResultSet rss =  pss.executeQuery();
                if(rss.next())
                {
                    return rss.getInt(1);
                }else{
                    return -1;
                }
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return -1;
            }
        }
    public static int InsertPaysAdmin(Pays p)
        {
            try {
                String sql ="insert into pays(nom,nom_ar)values(?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getNom_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id) from pays");
                
                ResultSet rss =  pss.executeQuery();
                if(rss.next())
                {
                    return rss.getInt(1);
                }else{
                    return -1;
                }
                
            } catch (SQLException e) {
                System.err.println("Error)");
                e.printStackTrace();
                return -1;
            }
        }
}
