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
public class Etudiant_Charge {

    private String cne;
    private String nom;
    private String nom_ar;
    private String prenom;
    private String prenom_ar;
    private String sexe;
    private String nationalite;
    private String nationalite_ar;
    private String cin;
    private SerieBac serieBac;
    private String province;
    private String province_ar;
    private String mention_Bac;

    public Etudiant_Charge(String cne, String nom, String nom_ar, String prenom, String prenom_ar, 
            String sexe, String nationalite, String nationalite_ar, String cin, SerieBac serieBac, 
            String province, String province_ar, String mention_Bac) {
        this.cne = cne;
        this.nom = nom;
        this.nom_ar = nom_ar;
        this.prenom = prenom;
        this.prenom_ar = prenom_ar;
        this.sexe = sexe;
        this.nationalite = nationalite;
        this.nationalite_ar = nationalite_ar;
        this.cin = cin;
        this.serieBac = serieBac;
        this.province = province;
        this.province_ar = province_ar;
        this.mention_Bac = mention_Bac;
    }
    public Etudiant_Charge(String cne, String nom, String nom_ar, String prenom, String prenom_ar, 
            String sexe, String nationalite, String nationalite_ar, String cin, String serieBac,String serieBac_ar,String typeBac,String typeBac_ar, 
            String province, String province_ar, String mention_Bac) {
        this.cne = cne;
        this.nom = nom;
        this.nom_ar = nom_ar;
        this.prenom = prenom;
        this.prenom_ar = prenom_ar;
        this.sexe = sexe;
        this.nationalite = nationalite;
        this.nationalite_ar = nationalite_ar;
        this.cin = cin;
        this.setSerieBac(serieBac, serieBac_ar, typeBac, typeBac_ar);
        this.province = province;
        this.province_ar = province_ar;
        this.mention_Bac = mention_Bac;
    }

    public Etudiant_Charge() {
    }

    public String getCNE() {
        return cne;
    }

    public void setCNE(String cne) {
        this.cne = cne;
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

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPrenom_ar() {
        return prenom_ar;
    }

    public void setPrenom_ar(String prenom_ar) {
        this.prenom_ar = prenom_ar;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getNationalite() {
        return nationalite;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public String getNationalite_ar() {
        return nationalite_ar;
    }

    public void setNationalite_ar(String nationalite_ar) {
        this.nationalite_ar = nationalite_ar;
    }

    public String getCIN() {
        return cin;
    }

    public void setCIN(String cin) {
        this.cin = cin;
    }

    public SerieBac getSerieBac() {
        return serieBac;
    }

    public void setSerieBac(SerieBac serieBac) {
        this.serieBac = serieBac;
    }
    public void setSerieBac(String intituler,String intituler_ar,String inti,String inti_ar) {
        this.serieBac = new SerieBac(intituler, intituler_ar, new TypeBac(inti, inti_ar));
    }
    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getProvince_ar() {
        return province_ar;
    }

    public void setProvince_ar(String province_ar) {
        this.province_ar = province_ar;
    }

    public String getMention_Bac() {
        return mention_Bac;
    }

    public void setMention_Bac(String mention_Bac) {
        this.mention_Bac = mention_Bac;
    }

    @Override
    public String toString() {
        return "Etudiant_Charge{" + "cne=" + cne + ", nom=" + nom + ", nom_ar=" + nom_ar + ", prenom=" + prenom + ", prenom_ar=" + prenom_ar + ", sexe=" + sexe + ", nationalite=" + nationalite + ", nationalite_ar=" + nationalite_ar + ", cin=" + cin + ", serieBac=" + serieBac + ", province=" + province + ", province_ar=" + province_ar + ", mention_Bac=" + mention_Bac + '}';
    }
    
    public static Etudiant_Charge GetEtudiantChargeByCne(String cne)
        {
         Etudiant_Charge etd = null;
            try {
                String sql ="select * from  etudiant_charge where cne=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, cne);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etd = new Etudiant_Charge(
                            rs.getString("cne"), rs.getString("nom"), rs.getString("nom_ar"), 
                            rs.getString("prenom"), rs.getString("prenom_ar"), 
                            rs.getString("sexe"), rs.getString("nationalite"),
                            rs.getString("nationalite_ar"), rs.getString("cin"), 
                            rs.getString("serie_bac"),rs.getString("serie_bac_ar"),
                            rs.getString("type_bac"),rs.getString("type_bac_ar"),
                            rs.getString("province"), rs.getString("province_ar"), rs.getString("mention_bac"));
                
                                        
                }
                return etd;
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return null;
            }
        }

    public static String insertEtudiantCharge(Etudiant_Charge etud) {
        
        try {
                String sql = "insert into etudiant_charge (cne,nom,prenom,sexe,"
                        + "nationalite,serie_bac,mention_bac,province,nom_ar,"
                        + "prenom_ar,nationalite_ar,serie_bac_ar,type_bac,"
                        + "type_bac_ar,province_ar,cin) values(?,?,?,?,"
                        + "?,?,?,?,?,"
                        + "?,?,?,?,"
                        + "?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1,etud.getCNE());
                ps.setString(2,etud.getNom());
                ps.setString(3,etud.getPrenom());
                ps.setString(4,etud.getSexe());
                ps.setString(5,etud.getNationalite());
                ps.setString(6,etud.getSerieBac().getIntituler());
                ps.setString(7,etud.getMention_Bac());
                ps.setString(8,etud.getProvince());
                ps.setString(9,etud.getNom_ar());
                ps.setString(10,etud.getPrenom_ar());
                ps.setString(11,etud.nationalite_ar);
                ps.setString(12,etud.getSerieBac().getIntituler_ar());
                ps.setString(13,etud.getSerieBac().getTypeBac().getIntituler());
                ps.setString(14,etud.getSerieBac().getTypeBac().getIntituler_ar());
                ps.setString(15,etud.getProvince_ar());
                ps.setString(16,etud.getCIN());
                
                int row = ps.executeUpdate();
                
                PreparedStatement pss = Connexion.getconOne().prepareCall("select max(cne) from  etudiant_charge");
                ResultSet rss = pss.executeQuery();
                if(rss.next())
                {
                    return rss.getString(1);
                }else{
                    return "errorSQL";
                }
            }catch(SQLException ee){
                ee.printStackTrace();
                return "errorSQL";
            }
    }
}
