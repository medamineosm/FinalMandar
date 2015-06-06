/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author PC
 */
public class Statistique {
    public static HashMap<Integer,Integer> NbreEtudiantByFiliere()
    {
        HashMap<Integer,Integer> list =new HashMap<>();
        try{
            String sql ="select count(etudiant.id_etudiant) as nombreEtudiant,filiere.id_filiere,filiere.libelle from etudiant,baccalaureat,inscription,filiere" +
                " where inscription.id_bac=baccalaureat.id_bac and inscription.id_filiere=filiere.id_filiere and" +
                " baccalaureat.id_etudiant=etudiant.id_etudiant group by filiere.libelle ";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                //System.out.println(rs.getInt("nombreEtudiant"));
                list.put(rs.getInt("id_filiere"), rs.getInt("nombreEtudiant"));
            }
               
            return list;
        }catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }
    
    public static HashMap<String,Integer> nbrEtudiantByEtat()
    {
        HashMap<String,Integer> list =new HashMap<>();
        try{
            String sql ="select count(etudiant.id_etudiant) as nombreEtudiant,inscription.etat_inscription from etudiant,inscription,baccalaureat where baccalaureat.id_bac=inscription.id_bac "
                    + "and baccalaureat.id_etudiant=etudiant.id_etudiant group by inscription.etat_inscription ";
            PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                //System.out.println(rs.getInt("nombreEtudiant"));
                list.put(rs.getString("etat_inscription"), rs.getInt("nombreEtudiant"));
            }
               
            return list;
        }catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }
}
