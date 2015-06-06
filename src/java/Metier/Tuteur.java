package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Tuteur extends Personne{

    

	private String Address;
	
	private String Telephone;
	private String Email;
        private String Address_ar;
        public Tuteur()
        {
            
        }
	
    public Tuteur(String Address, String Address_ar, String Telephone, String Email, String Nom, String Prenom, String Profession, String Nom_ar, String Prenom_ar, String Profession_ar) {
        super(Nom, Prenom, Profession, Nom_ar, Prenom_ar, Profession_ar);
        this.Address = Address;
        this.Address_ar = Address_ar;
        this.Telephone = Telephone;
        this.Email = Email;
    }
    public Tuteur(Tuteur t) {
        super(t.getNom(), t.getPrenom(), t.getProfession(), t.getNom_ar(), t.getPrenom_ar(), t.getProfession_ar());
        this.Address = t.getAddress();
        this.Address_ar = t.getAddress_ar();
        this.Telephone = t.getTelephone();
        this.Email = t.getEmail();
    }
    public Tuteur(String Address, String Address_ar, String Telephone, String Email,Personne p) {
        super(p.getNom(),p.getPrenom(),p.getProfession(),p.getNom_ar(),p.getPrenom_ar(),p.getProfession_ar());
        this.Address = Address;
        this.Address_ar = Address_ar;
        this.Telephone = Telephone;
        this.Email = Email;
    }
        
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String telephone) {
		Telephone = telephone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

    public String getAddress_ar() {
        return Address_ar;
    }

    public void setAddress_ar(String Address_ar) {
        this.Address_ar = Address_ar;
    }

    @Override
    public String toString() {
        return super.toString() +"Tuteur{" + "Address=" + Address + ", Telephone=" + Telephone + ", Email=" + Email + ", Address_ar=" + Address_ar + '}';
    }

    
    
	public static Tuteur getTuteurById(int id)
        {
            Tuteur t = null;
            try {
                String sql ="select * from tuteur where identifiant=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    t = new Tuteur(rs.getString("adresse"), rs.getString("adresse_ar"), rs.getString("tel"), rs.getString("email"), 
                            Personne.getPersonneTuteurByName(rs.getString("nom"),rs.getString("prenom")));
                }
                return t;
            } catch (SQLException e) {
                System.err.println("Error getTuteurByIdById()");
                return null;
            }
        }
        
        public static Tuteur getTuteurByName(String nom,String prenom)
        {
            Tuteur t = null;
            try {
                String sql ="select * from tuteur where nom=? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                while(rs.next())
                {
                    t = new Tuteur(rs.getString("adresse"), rs.getString("adresse_ar"), rs.getString("tel"), rs.getString("email"),
                            rs.getString("nom"), rs.getString("prenom"), rs.getString("profession"), rs.getString("nom_ar"), rs.getString("prenom_ar"), rs.getString("profession_ar"));
                }
                return t;
            } catch (SQLException e) {
                System.err.println("Error getTuteurByName()");
                e.printStackTrace();
                return null;
            }
        }
        
        
        public static int getIDTuteurByName(String nom,String prenom)
        {
            try {
                String sql ="select * from tuteur where nom=? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                if(rs.next())
                {
                    return rs.getInt("identifiant");
                }else{
                    return 0;
                }
                
            } catch (SQLException e) {
                System.err.println("Error getTuteurByName()");
                e.printStackTrace();
                return 0;
            }
        }
        
        public static int getIDParentByName(String nom,String prenom)
        {
            try {
                String sql ="select * from parent where nom=? and prenom=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, nom);
                ps.setString(2, prenom);
                ResultSet rs =  ps.executeQuery();
                if(rs.next())
                {
                    return rs.getInt("identifiant");
                }else{
                    return 0;
                }
                
            } catch (SQLException e) {
                System.err.println("Error getTuteurByName()");
                e.printStackTrace();
                return 0;
            }
        }

        public static int InsertParent(Personne p)
        {
            try {
                String sql ="insert into parent (nom,prenom,profession,nom_ar,prenom_ar,profession_ar)values(?,?,?,?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getPrenom());
                ps.setString(3, p.getProfession());
                ps.setString(4, p.getNom_ar());
                ps.setString(5, p.getPrenom_ar());
                ps.setString(6, p.getProfession_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(identifiant) from parent");
                
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
        
        public static int InsertParentAdmin(Personne p)
        {
            try {
                String sql ="insert into parent (nom,prenom,profession,nom_ar,prenom_ar,profession_ar)values(?,?,?,?,?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getPrenom());
                ps.setString(3, p.getProfession());
                ps.setString(4, p.getNom_ar());
                ps.setString(5, p.getPrenom_ar());
                ps.setString(6, p.getProfession_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(identifiant) from parent");
                
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
        
        public static int InsertTuteurAdmin(Tuteur p)
        {
            try {
                String sql ="insert into Tuteur (nom,prenom,profession,adresse,tel,email,"
                        + "nom_ar,prenom_ar,profession_ar,adresse_ar)values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getPrenom());
                ps.setString(3, p.getProfession());
                ps.setString(4, p.getAddress());
                ps.setString(5, p.getTelephone());
                ps.setString(6, p.getEmail());
                ps.setString(7, p.getNom_ar());
                ps.setString(8, p.getPrenom_ar());
                ps.setString(9, p.getProfession_ar());
                ps.setString(10, p.getAddress_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(identifiant) from tuteur");
                
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
        
     public   static int InsertTuteur(Tuteur p) {
          try {
                String sql ="insert into Tuteur (nom,prenom,profession,adresse,tel,email,"
                        + "nom_ar,prenom_ar,profession_ar,adresse_ar)values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, p.getNom());
                ps.setString(2, p.getPrenom());
                ps.setString(3, p.getProfession());
                ps.setString(4, p.getAddress());
                ps.setString(5, p.getTelephone());
                ps.setString(6, p.getEmail());
                ps.setString(7, p.getNom_ar());
                ps.setString(8, p.getPrenom_ar());
                ps.setString(9, p.getProfession_ar());
                ps.setString(10, p.getAddress_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(identifiant) from tuteur");
                
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
