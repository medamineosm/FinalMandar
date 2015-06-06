package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class Etudiant  extends Tuteur{
	private Tuteur tuteur;
    private String CNE;
	private Date DateNaissance;
	private Ville ville;
	private Pays pays;
	private String Nationalite;
	private String Sexe;
	private String CIN;
	private String Photo;
	private Date DateCin;
	private boolean Handicap;
	private String NatureHandicap;
	private int Num_Carte_Handicap;
	private boolean Bourse;
    private String Nationalite_ar;
	private String NatureHandicap_ar;
    private Personne Pere;
    private Personne Mere;
    private Tuteur t;
    private String photo;
    
    public Etudiant()
        {
            super();
        }

    
    public Etudiant(String CNE, Date DateNaissance, Ville ville, Pays pays, String Nationalite, 
            String Sexe, String CIN, String Photo, Date DateCin, boolean Handicap, String NatureHandicap, 
            int Num_Carte_Handicap, boolean Bourse, String Nationalite_ar, String NatureHandicap_ar, 
            String Address, String Address_ar, String Telephone, String Email, String Nom, String Prenom, 
            String Profession, String Nom_ar, String Prenom_ar, String Profession_ar) {
        super(Address, Address_ar, Telephone, Email, Nom, Prenom, Profession, Nom_ar, Prenom_ar, Profession_ar);
        this.CNE = CNE;
        this.DateNaissance = DateNaissance;
        this.ville = ville;
        this.pays = pays;
        this.Nationalite = Nationalite;
        this.Sexe = Sexe;
        this.CIN = CIN;
        this.Photo = Photo;
        this.DateCin = DateCin;
        this.Handicap = Handicap;
        this.NatureHandicap = NatureHandicap;
        this.Num_Carte_Handicap = Num_Carte_Handicap;
        this.Bourse = Bourse;
        this.Nationalite_ar = Nationalite_ar;
        this.NatureHandicap_ar = NatureHandicap_ar;
    }

    public Etudiant(Tuteur tuteur,String CNE, Date DateNaissance, Ville ville, Pays pays, String Nationalite, String Sexe, String CIN, String Photo, Date DateCin, boolean Handicap, String NatureHandicap, int Num_Carte_Handicap, boolean Bourse, String Nationalite_ar, String NatureHandicap_ar, Personne Pere, Personne Mere, Tuteur t) {
        this.tuteur = tuteur;
        this.CNE = CNE;
        this.DateNaissance = DateNaissance;
        this.ville = ville;
        this.pays = pays;
        this.Nationalite = Nationalite;
        this.Sexe = Sexe;
        this.CIN = CIN;
        this.Photo = Photo;
        this.DateCin = DateCin;
        this.Handicap = Handicap;
        this.NatureHandicap = NatureHandicap;
        this.Num_Carte_Handicap = Num_Carte_Handicap;
        this.Bourse = Bourse;
        this.Nationalite_ar = Nationalite_ar;
        this.NatureHandicap_ar = NatureHandicap_ar;
        this.Pere = Pere;
        this.Mere = Mere;
        this.t = t;
    }
        
        public Tuteur getTuteur() {
            return tuteur;
        }

        public void setTuteur(Tuteur tuteur) {
            this.tuteur = tuteur;
        }
        
        public Personne getPere() {
            return Pere;
        }

        public void setPere(Personne Pere) {
            this.Pere = Pere;
        }

        public Personne getMere() {
            return Mere;
        }

        public void setMere(Personne Mere) {
            this.Mere = Mere;
        }

        public Tuteur getT() {
            return t;
        }

        public void setT(Tuteur t) {
            this.t = t;
        }

    	public String getCNE() {
    		return CNE;
    	}
    	public void setCNE(String cNE) {
    		CNE = cNE;
    	}
    	public Date getDateNaissance() {
    		return DateNaissance;
    	}
    	public void setDateNaissance(Date dateNaissance) {
    		DateNaissance = dateNaissance;
    	}
    	public Ville getVille() {
    		return ville;
    	}
    	public void setVille(Ville ville) {
                this.ville = ville;
    	}
    	public Pays getPays() {
    		return pays;
    	}
    	public void setPays(Pays pays) {
    		this.pays = pays;
    	}
    	public String getNationalite() {
    		return Nationalite;
    	}
    	public void setNationalite(String nationalite) {
    		Nationalite = nationalite;
    	}
    	public String getSexe() {
    		return Sexe;
    	}
    	public void setSexe(String sexe) {
    		Sexe = sexe;
    	}
    	public String getCIN() {
    		return CIN;
    	}
    	public void setCIN(String cIN) {
    		CIN = cIN;
    	}
    	public String getPhoto() {
    		return Photo;
    	}
    	public void setPhoto(String photo) {
    		Photo = photo;
    	}
    	public Date getDateCin() {
    		return DateCin;
    	}
    	public void setDateCin(Date dateCin) {
    		DateCin = dateCin;
    	}
    	public boolean isHandicap() {
    		return Handicap;
    	}
    	public void setHandicap(boolean handicap) {
    		Handicap = handicap;
    	}
    	public String getNatureHandicap() {
    		return NatureHandicap;
    	}
    	public void setNatureHandicap(String natureHandicap) {
    		NatureHandicap = natureHandicap;
    	}
    	public int getNum_Carte_Handicap() {
    		return Num_Carte_Handicap;
    	}
    	public void setNum_Carte_Handicap(int num_Carte_Handicap) {
    		Num_Carte_Handicap = num_Carte_Handicap;
    	}
    	public boolean isBourse() {
    		return Bourse;
    	}
    	public void setBourse(boolean bourse) {
    		Bourse = bourse;
    	}

        public String getNationalite_ar() {
            return Nationalite_ar;
        }

        public void setNationalite_ar(String Nationalite_ar) {
            this.Nationalite_ar = Nationalite_ar;
        }

        public String getNatureHandicap_ar() {
            return NatureHandicap_ar;
        }

        public void setNatureHandicap_ar(String NatureHandicap_ar) {
            this.NatureHandicap_ar = NatureHandicap_ar;
        }

        @Override
        public String toString() {
            return "Etudiant{" + "tuteur=" + tuteur + ", CNE=" + CNE + ", DateNaissance=" + DateNaissance + ", ville=" + ville + ", pays=" + pays + ", Nationalite=" + Nationalite + ", Sexe=" + Sexe + ", CIN=" + CIN + ", Photo=" + Photo + ", DateCin=" + DateCin + ", Handicap=" + Handicap + ", NatureHandicap=" + NatureHandicap + ", Num_Carte_Handicap=" + Num_Carte_Handicap + ", Bourse=" + Bourse + ", Nationalite_ar=" + Nationalite_ar + ", NatureHandicap_ar=" + NatureHandicap_ar + ", Pere=" + Pere + ", Mere=" + Mere + ", t=" + t + '}';
        }
        
        
        public static Etudiant GetEtudiantById(int id)
        {
            Etudiant etd = null;
            try {
                String sql ="select * from  etudiant where id_etudiant=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etd = new Etudiant(Tuteur.getTuteurByName(rs.getString("nom"), rs.getString("prenom")), rs.getString("CNE"), new Date(rs.getDate("date_naissance").getTime()), Ville.GetVilleById(rs.getInt("id_ville")), 
                            Pays.getPaysById(rs.getInt("id_ville")), rs.getString("nationalite"), rs.getString("sexe"), 
                            rs.getString("CIN"), rs.getString("photo"), new Date(rs.getDate("date_cin").getTime()),
                            rs.getBoolean("handicape"), rs.getString("nature_handicape"), Integer.parseInt(rs.getString("num_carte_handicape")), 
                            rs.getBoolean("bourse"), rs.getString("nationalite_ar"), rs.getString("nature_handicape_ar"),Personne.getPersonneParentId(rs.getInt("id_pere")),
                            Personne.getPersonneParentId(rs.getInt("id_mere")),Tuteur.getTuteurById(rs.getInt("id_tuteur")));
                
                    //System.out.println(Tuteur.getTuteurById(rs.getInt("id_tuteur")).getNom_ar());                    
                }
                return etd;
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return null;
            }
        }
	
        public static Etudiant GetEtudiantByCne(String cne)
        {
            Etudiant etd = null;
            try {
                String sql ="select * from  etudiant where CNE=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, cne);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etd = new Etudiant(Tuteur.getTuteurByName(rs.getString("nom"), rs.getString("prenom")),rs.getString("CNE"), new Date(rs.getDate("date_naissance").getTime()), Ville.GetVilleById(rs.getInt("id_ville")), 
                            Pays.getPaysById(rs.getInt("id_ville")), rs.getString("nationalite"), rs.getString("sexe"), 
                            rs.getString("CIN"), rs.getString("photo"), new Date(rs.getDate("date_cin").getTime()),
                            rs.getBoolean("handicape"), rs.getString("nature_handicape"), Integer.parseInt(rs.getString("num_carte_handicape")), 
                            rs.getBoolean("bourse"), rs.getString("nationalite_ar"), rs.getString("nature_handicape_ar"),Personne.getPersonneParentId(rs.getInt("id_pere")),
                            Personne.getPersonneParentId(rs.getInt("id_mere")),Tuteur.getTuteurById(rs.getInt("id_tuteur")));
                
                    //System.out.println(Tuteur.getTuteurById(rs.getInt("id_tuteur")).getNom_ar());                    
                }
                return etd;
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return null;
            }
        }
        
        public static boolean EtudiantIfExistByCne(String cne)
        {
            Etudiant etd = null;
            try {
                String sql ="select * from  etudiant where CNE=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, cne);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etd = new Etudiant(Tuteur.getTuteurByName(rs.getString("nom"), rs.getString("prenom")),rs.getString("CNE"), new Date(rs.getDate("date_naissance").getTime()), Ville.GetVilleById(rs.getInt("id_ville")), 
                            Pays.getPaysById(rs.getInt("id_ville")), rs.getString("nationalite"), rs.getString("sexe"), 
                            rs.getString("CIN"), rs.getString("photo"), new Date(rs.getDate("date_cin").getTime()),
                            rs.getBoolean("handicape"), rs.getString("nature_handicape"), Integer.parseInt(rs.getString("num_carte_handicape")), 
                            rs.getBoolean("bourse"), rs.getString("nationalite_ar"), rs.getString("nature_handicape_ar"),Personne.getPersonneParentId(rs.getInt("id_pere")),
                            Personne.getPersonneParentId(rs.getInt("id_mere")),Tuteur.getTuteurById(rs.getInt("id_tuteur")));
                
                }
                if(etd !=null)
                {
                    return true;
                }else{
                    return false;
                }
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return false;
            }
        }
        public static int GetIDEtudiant(Etudiant etd)
        {
            try{
                PreparedStatement ps = Connexion.getconOne().prepareCall("select id_etudiant from etudiant where "
                        + "nom=? and prenom=? and cin =? and cne=?");
                ps.setString(1, etd.getTuteur().getNom());
                ps.setString(2, etd.getTuteur().getPrenom());
                ps.setString(3,etd.getCIN());
                ps.setString(4,etd.getCNE() );
                ResultSet rs = ps.executeQuery();
                int x =-1;
                while(rs.next())
                {
                    x = rs.getInt("id_etudiant");
                }
                return x;
            }catch(SQLException e)
            {
                e.printStackTrace();
                return -1;
            }
        }
        
        public static HashMap<Integer,Etudiant> HashEtudiant()
        {
            HashMap<Integer,Etudiant> etds = new HashMap<>();
            try {
                String sql ="select * from  etudiant";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etds.put(rs.getInt("id_etudiant"),new Etudiant(Tuteur.getTuteurByName(rs.getString("nom"), rs.getString("prenom")),rs.getString("CNE"), new Date(rs.getDate("date_naissance").getTime()), Ville.GetVilleById(rs.getInt("id_ville")), 
                            Pays.getPaysById(rs.getInt("id_ville")), rs.getString("nationalite"), rs.getString("sexe"), 
                            rs.getString("CIN"), rs.getString("photo"), new Date(rs.getDate("date_cin").getTime()),
                            rs.getBoolean("handicape"), rs.getString("nature_handicape"), Integer.parseInt(rs.getString("num_carte_handicape")), 
                            rs.getBoolean("bourse"), rs.getString("nationalite_ar"), rs.getString("nature_handicape_ar"),Personne.getPersonneParentId(rs.getInt("id_pere")),
                            Personne.getPersonneParentId(rs.getInt("id_mere")),Tuteur.getTuteurById(rs.getInt("id_tuteur"))));
                
                }
                return etds;
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return null;
            }
        }
        
        public static ArrayList <Etudiant> GetAllEtudiantCharge()
        {
            ArrayList <Etudiant> etd = new ArrayList<>();
            try {
                String sql ="select * from  etudiant_charge ";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    etd.add(Etudiant.GetEtudiantByCne(rs.getString("cne")));
                }
                return etd;
            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return null;
            }
        }
        
        public static int InsertEtudiant(Etudiant e)
        {
            try{
                String sql = "INSERT INTO etudiant "
                        + "(CNE, nom, prenom, date_naissance, nationalite, sexe,"
                        + " cin, handicape, nature_handicape, num_carte_handicape, "
                        + "bourse, id_tuteur, id_mere, id_pere, id_ville, "
                        + "id_ville_naissance, nom_ar, prenom_ar, nationalite_ar,"
                        + " nature_handicape_ar, addresse, "
                        + "addresse_ar, date_cin,photo)"
                        + "values (?,?,?,?,?,?,?,?,?,?,"
                        + "?,?,?,?,?,?,?,?,?,?,"
                        + "?,?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1,e.getCNE());
                ps.setString(2,e.getT().getNom());
                ps.setString(3,e.getT().getPrenom());
                ps.setDate(4, new java.sql.Date(e.getDateNaissance().getTime()));
                ps.setString(5, e.getNationalite());
                ps.setString(6, e.getSexe());
                ps.setString(7, e.getCIN());
                ps.setBoolean(8, e.isHandicap());
                ps.setString(9, e.getNatureHandicap());
                ps.setInt(10, e.getNum_Carte_Handicap());
                ps.setBoolean(11, e.isBourse());
                ps.setInt(12, Tuteur.InsertTuteur(e.getTuteur()));
                ps.setInt(13,Tuteur.InsertParent(e.getMere()));
                ps.setInt(14,Tuteur.InsertParent(e.getPere()));
                ps.setInt(15,Ville.InsertVille(e.getVille()));
                ps.setInt(16, Ville.InsertVille(e.getVille()));
                ps.setString(17, e.getT().getNom_ar());
                ps.setString(18, e.getT().getPrenom_ar());
                ps.setString(19, e.getNationalite_ar());
                ps.setString(20, e.getNatureHandicap_ar());
                ps.setString(21, e.getT().getAddress());
                ps.setString(22, e.getT().getAddress_ar());
                ps.setDate(23,new java.sql.Date(e.getDateCin().getTime()));
                ps.setString(24, e.getPhoto());
                int row = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareCall("select max(id_etudiant) from  etudiant");
                ResultSet rss = pss.executeQuery();
                if(rss.next())
                {
                    return rss.getInt(1);
                }else{
                    return -1;
                }
            }catch(SQLException ee){
                ee.printStackTrace();
                return -1;
            }
        }
        public static int InsertEtudiantAdmin(Etudiant e)
        {
            try{
                String sql = "INSERT INTO etudiant "
                        + "(CNE, nom, prenom, date_naissance, nationalite, sexe,"
                        + " cin, handicape, nature_handicape, num_carte_handicape, "
                        + "bourse, id_tuteur, id_mere, id_pere, id_ville, "
                        + "id_ville_naissance, nom_ar, prenom_ar, nationalite_ar,"
                        + " nature_handicape_ar, addresse, "
                        + "addresse_ar, date_cin,photo)"
                        + "values (?,?,?,?,?,?,?,?,?,?,"
                        + "?,?,?,?,?,?,?,?,?,?,"
                        + "?,?,?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1,e.getCNE());
                ps.setString(2,e.getT().getNom());
                ps.setString(3,e.getT().getPrenom());
                ps.setDate(4, new java.sql.Date(e.getDateNaissance().getTime()));
                ps.setString(5, e.getNationalite());
                ps.setString(6, e.getSexe());
                ps.setString(7, e.getCIN());
                ps.setBoolean(8, e.isHandicap());
                ps.setString(9, e.getNatureHandicap());
                ps.setInt(10, e.getNum_Carte_Handicap());
                ps.setBoolean(11, e.isBourse());
                ps.setInt(12, Tuteur.InsertTuteurAdmin(e.getTuteur()));
                ps.setInt(13,Tuteur.InsertParentAdmin(e.getMere()));
                ps.setInt(14,Tuteur.InsertParentAdmin(e.getPere()));
                ps.setInt(15,Ville.InsertVilleAdmin(e.getVille()));
                ps.setInt(16, Ville.InsertVilleAdmin(e.getVille()));
                ps.setString(17, e.getT().getNom_ar());
                ps.setString(18, e.getT().getPrenom_ar());
                ps.setString(19, e.getNationalite_ar());
                ps.setString(20, e.getNatureHandicap_ar());
                ps.setString(21, e.getT().getAddress());
                ps.setString(22, e.getT().getAddress_ar());
                ps.setDate(23,new java.sql.Date(e.getDateCin().getTime()));
                ps.setString(24, e.getPhoto());
                int row = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareCall("select max(id_etudiant) from  etudiant");
                ResultSet rss = pss.executeQuery();
                if(rss.next())
                {
                    return rss.getInt(1);
                }else{
                    return -1;
                }
            }catch(SQLException ee){
                ee.printStackTrace();
                return -1;
            }
        }
}
