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
public class Ville {
    private String nom;
    private String nom_ar;
    private Pays pays;

    public Ville(String nom,String nom_ar, Pays pays) {
        this.nom = nom;
        this.nom_ar = nom_ar;
        this.pays = pays;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Pays getPays() {
        return pays;
    }

    public void setPays(Pays Pays) {
        this.pays = Pays;
    }

    public String getNom_ar() {
        return nom_ar;
    }

    public void setNom_ar(String nom_ar) {
        this.nom_ar = nom_ar;
    }

    @Override
    public String toString() {
        return "Ville{" + "nom=" + nom + ", nom_ar=" + nom_ar + ", pays=" + pays + '}';
    }
    
    public static Ville GetVilleById(int id)
    {
        try {
            Ville v = null;
            String sql = "select * from ville where id =?";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs =  ps.executeQuery();
            while(rs.next())
            {
                v = new Ville(rs.getString("nom"), rs.getString("nom_ar"),Pays.getPaysById(rs.getInt("id_pays")));
            }
            return v;
        } catch (SQLException e) {
            System.err.println("Error getVilleById()");
            return null;
        }
    }
    
    public static int InsertVille(Ville v)
        {
            try {
                String sql ="insert into ville(nom,nom_ar,id_pays)values(?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, v.getNom());
                ps.setString(2, v.getNom_ar());
                ps.setInt(3, Pays.InsertPays(v.getPays()));
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id) from ville");
                
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
    public static int InsertVilleAdmin(Ville v)
        {
            try {
                String sql ="insert into ville(nom,nom_ar,id_pays)values(?,?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, v.getNom());
                ps.setString(2, v.getNom_ar());
                ps.setInt(3, Pays.InsertPaysAdmin(v.getPays()));
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id) from ville");
                
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
