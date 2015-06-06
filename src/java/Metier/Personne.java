package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Personne {
	private String Nom;
	private String Prenom;
	private String Profession;
        private String Nom_ar;
	private String Prenom_ar;
	private String Profession_ar;
        public Personne()
        {
            
        }

    public Personne(String Nom, String Prenom, String Profession, String Nom_ar, String Prenom_ar, String Profession_ar) {
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.Profession = Profession;
        this.Nom_ar = Nom_ar;
        this.Prenom_ar = Prenom_ar;
        this.Profession_ar = Profession_ar;
    }
        
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}

    public String getNom_ar() {
        return Nom_ar;
    }

    public void setNom_ar(String Nom_ar) {
        this.Nom_ar = Nom_ar;
    }

    public String getPrenom_ar() {
        return Prenom_ar;
    }

    public void setPrenom_ar(String Prenom_ar) {
        this.Prenom_ar = Prenom_ar;
    }

    public String getProfession_ar() {
        return Profession_ar;
    }

    public void setProfession_ar(String Profession_ar) {
        this.Profession_ar = Profession_ar;
    }
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getProfession() {
		return Profession;
	}
	public void setProfession(String profession) {
		Profession = profession;
	}

    @Override
    public String toString() {
        return "Personne{" + "Nom=" + Nom + ", Prenom=" + Prenom + ", Profession=" + Profession + ", Nom_ar=" + Nom_ar + ", Prenom_ar=" + Prenom_ar + ", Profession_ar=" + Profession_ar + '}';
    }
	
        public static Personne getPersonneEtudiantByName(String nom,String prenom)
        {
            try {
                Personne p = null;
                String sql = "select * from etudiant where nom =? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    p = new Personne(rs.getString("nom"), rs.getString("prenom"), "etudiant", 
                            rs.getString("nom_ar"), rs.getString("prenom_ar"), "etudiant (ar)");
                }
                return p;
            } catch (SQLException e) {
                System.err.println("Error getPersonneEtudiantByName()");
                return null;
            }
        }
	
        public static Personne getPersonneTuteurByName(String nom,String prenom)
        {
            try {
                Personne p = null;
                String sql = "select * from tuteur where nom =? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    p = new Personne(rs.getString("nom"), rs.getString("prenom"), rs.getString("profession"), 
                            rs.getString("nom_ar"), rs.getString("prenom_ar"), rs.getString("profession_ar"));
                }
                return p;
            } catch (SQLException e) {
                System.err.println("Error getPersonneTuteurByName()");
                return null;
            }
        }

        public static Personne getPersonneParentByName(String nom,String prenom)
        {
            try {
                Personne p = null;
                String sql = "select * from parent where nom =? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    p = new Personne(rs.getString("nom"), rs.getString("prenom"), rs.getString("profession"), 
                            rs.getString("nom_ar"), rs.getString("prenom_ar"), rs.getString("profession_ar"));
                }
                return p;
            } catch (SQLException e) {
                System.err.println("Error getPersonneParentByName()");
                return null;
            }
        }
        
        public static Personne getPersonneParentId(int id)
        {
            try {
                Personne p = null;
                String sql = "select * from parent where identifiant=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    p = new Personne(rs.getString("nom"), rs.getString("prenom"), rs.getString("profession"), 
                            rs.getString("nom_ar"), rs.getString("prenom_ar"), rs.getString("profession_ar"));
                }
                return p;
            } catch (SQLException e) {
                System.err.println("Error getPersonneParentById()");
                return null;
            }
        }
}
