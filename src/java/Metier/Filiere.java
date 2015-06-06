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
public class Filiere {
    private String libelle;
    private String libeller_ar;
    private boolean concour;

    public Filiere(String libelle, String libeller_ar, boolean concour) {
        this.libelle = libelle;
        this.libeller_ar = libeller_ar;
        this.concour = concour;
    }

    public Filiere() {
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public String getLibeller_ar() {
        return libeller_ar;
    }

    public void setLibeller_ar(String libeller_ar) {
        this.libeller_ar = libeller_ar;
    }

    public boolean isConcour() {
        return concour;
    }

    public void setConcour(boolean concour) {
        this.concour = concour;
    }
    
    public static ArrayList<Filiere> GetAllFiliere()
    {
        ArrayList<Filiere> LF= new ArrayList<>();
            try {
                String sql ="select * from  filiere";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    LF.add(new Filiere(rs.getString("libelle"), rs.getString("libeller_ar"), rs.getBoolean("concour")));
                }
                return LF;
            } catch (SQLException e) {
                System.err.println("Error");
                e.printStackTrace();
                return null;
            }
    }
    
    public static int GetFiliereById(String name)
    {
        Filiere LF= null;
            try {
                String sql ="select * from  filiere where libelle=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1,name);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    return rs.getInt("id_filiere");
                }
                return -1;
            } catch (SQLException e) {
                System.err.println("Error");
                e.printStackTrace();
                return -1;
            }
            
    }
    
    public static Filiere GetFiliereByID(int name)
    {
        Filiere LF= null;
            try {
                String sql ="select * from  filiere where id_filiere=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1,name);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    LF = new Filiere(rs.getString("libelle"), rs.getString("libeller_ar"), rs.getBoolean("concour"));
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
        return "Filiere{" + "libelle=" + libelle + ", libeller_ar=" + libeller_ar + ", concour=" + concour + '}';
    }
    public static int InsertFiliere(Filiere f)
    {
        try {
            String sql="INSERT INTO filiere"
                    + " (libelle, libeller_ar, concour) "
                    + "VALUES (?, ?, ?)";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ps.setString(1, f.getLibelle());
            ps.setString(2, f.getLibeller_ar());
            ps.setBoolean(3, f.isConcour());
            int rs = ps.executeUpdate();
            PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id_filiere) from filiere");
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
    
    public static int InsertFiliereAdmin(Filiere f)
    {
        try {
            String sql="INSERT INTO filiere"
                    + " (libelle, libeller_ar, concour) "
                    + "VALUES (?, ?, ?)";
            PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
            ps.setString(1, f.getLibelle());
            ps.setString(2, f.getLibeller_ar());
            ps.setBoolean(3, f.isConcour());
            int rs = ps.executeUpdate();
            PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id_filiere) from filiere");
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
