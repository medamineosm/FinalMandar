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

/**
 *
 * @author PC
 */
public class Institut {
    private String nom;
    private String ville;
    private String nom_ar;
    private String ville_ar;
    
    public Institut()
    {
        
    }

    public Institut(String nom, String ville, String nom_ar, String ville_ar) {
        this.nom = nom;
        this.ville = ville;
        this.nom_ar = nom_ar;
        this.ville_ar = ville_ar;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getNom_ar() {
        return nom_ar;
    }

    public void setNom_ar(String nom_ar) {
        this.nom_ar = nom_ar;
    }

    public String getVille_ar() {
        return ville_ar;
    }

    public void setVille_ar(String ville_ar) {
        this.ville_ar = ville_ar;
    }
    
    public static ArrayList<Institut> GetAllInstitut()
    {
        ArrayList<Institut> LF= new ArrayList<>();
            try {
                String sql ="select * from  institut";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    LF.add(new Institut(rs.getString("nom"), rs.getString("ville"), rs.getString("nom_ar"), rs.getString("ville_ar")));
                }
                return LF;
            } catch (SQLException e) {
                System.err.println("Error");
                e.printStackTrace();
                return null;
            }
    }
            public static int GetInstitutById(String name)
            {
                    try {
                        String sql ="select * from  institut where nom=?";
                        PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                        ps.setString(1,name);
                        ResultSet rs = ps.executeQuery();
                        if(rs.next())
                        {
                            return rs.getInt("id");
                        }
                        return -1;
                    } catch (SQLException e) {
                        System.err.println("Error");
                        e.printStackTrace();
                        return -1;
                    }

            }
            public static int GetIDInstitut(Institut b)
        {
            
            try {
                String sql ="select id from  institut where nom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, b.getNom());
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                  return rs.getInt("id");
                }else{
                	return -1;
                }

            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return -1;
            }
        } 
            public static Institut GetInstitutByID(int Name)
            {
                Institut LF= null;
                    try {
                        String sql ="select * from  institut where id=?";
                        PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                        ps.setInt(1,Name);
                        ResultSet rs = ps.executeQuery();
                        while(rs.next())
                        {
                            LF = new Institut(rs.getString("nom"), rs.getString("ville"), rs.getString("nom_ar"), rs.getString("ville_ar"));
                        }
                        return LF;
                    } catch (SQLException e) {
                        System.err.println("Error");
                        e.printStackTrace();
                        return null;
                    }

            }

    @Override
    public String toString() {
        return "Institut{" + "nom=" + nom + ", ville=" + ville + ", nom_ar=" + nom_ar + ", ville_ar=" + ville_ar + '}';
    }
    
    public static int InsertInstitut(Institut f)
    {
        try {
            String sql="INSERT INTO institut"
                    + " (nom, nom_ar,ville,ville_ar) "
                    + "VALUES (?, ?, ?,?)";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ps.setString(1, f.getNom());
            ps.setString(2, f.getNom_ar());
            ps.setString(3, f.getVille());
            ps.setString(4,f.getVille_ar());
            int rs = ps.executeUpdate();
            PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id) from institut");
            ResultSet rss = pss.executeQuery();
            if(rss.next())
            {
                return rss.getInt(1);
            }return -1;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }
    
    public static int InsertInstitutAdmin(Institut f)
    {
        try {
            String sql="INSERT INTO institut"
                    + " (nom, nom_ar,ville,ville_ar) "
                    + "VALUES (?, ?, ?,?)";
            PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
            ps.setString(1, f.getNom());
            ps.setString(2, f.getNom_ar());
            ps.setString(3, f.getVille());
            ps.setString(4,f.getVille_ar());
            int rs = ps.executeUpdate();
            PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id) from institut");
            ResultSet rss = pss.executeQuery();
            if(rss.next())
            {
                return rss.getInt(1);
            }return -1;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
