package Metier;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Bac {

	private SerieBac Serie_Bac;
	private String Mention_Bac;
	private String Lycee_Bac;
	private String Academie;
	private String Province;
        private String Lycee_Bac_ar;
	private String Academie_ar;
	private String Province_ar;
	private float MATH_EN;
	private float PHYS_EN;
	private float NAT_EN;
	private float MOY_ER;
	private float MOY_EN;
        private Etudiant etudiant;

        public Bac()
        {
            
        }
        public Bac(SerieBac Serie_Bac, String Mention_Bac, String Lycee_Bac, 
                String Academie, String Province, String Lycee_Bac_ar, String Academie_ar, 
                String Province_ar, float MATH_EN, float PHYS_EN, float NAT_EN, float MOY_ER, float MOY_EN,Etudiant etudiant) {
            this.Serie_Bac = Serie_Bac;
            this.Mention_Bac = Mention_Bac;
            this.Lycee_Bac = Lycee_Bac;
            this.Academie = Academie;
            this.Province = Province;
            this.Lycee_Bac_ar = Lycee_Bac_ar;
            this.Academie_ar = Academie_ar;
            this.Province_ar = Province_ar;
            this.MATH_EN = MATH_EN;
            this.PHYS_EN = PHYS_EN;
            this.NAT_EN = NAT_EN;
            this.MOY_ER = MOY_ER;
            this.MOY_EN = MOY_EN;
            this.etudiant = etudiant;
        }
        
        public Etudiant getEtudiant() {
            return etudiant;
        }

        public void setEtudiant(Etudiant etudiant) {
            this.etudiant = etudiant;
        }


        public String getLycee_Bac_ar() {
            return Lycee_Bac_ar;
        }

        public void setLycee_Bac_ar(String Lycee_Bac_ar) {
            this.Lycee_Bac_ar = Lycee_Bac_ar;
        }

        public String getAcademie_ar() {
            return Academie_ar;
        }

        public void setAcademie_ar(String Academie_ar) {
            this.Academie_ar = Academie_ar;
        }

        public String getProvince_ar() {
            return Province_ar;
        }

        public void setProvince_ar(String Province_ar) {
            this.Province_ar = Province_ar;
        }
	
	public SerieBac getSerie_Bac() {
		return Serie_Bac;
	}
	public void setSerie_Bac(SerieBac serie_Bac) {
		Serie_Bac = serie_Bac;
	}
	public String getMention_Bac() {
		return Mention_Bac;
	}
	public void setMention_Bac(String mention_Bac) {
		Mention_Bac = mention_Bac;
	}
	public String getLycee_Bac() {
		return Lycee_Bac;
	}
	public void setLycee_Bac(String lycee_Bac) {
		Lycee_Bac = lycee_Bac;
	}
	public String getAcademie() {
		return Academie;
	}
	public void setAcademie(String academie) {
		Academie = academie;
	}
	public String getProvince() {
		return Province;
	}
	public void setProvince(String province) {
		Province = province;
	}
	public float getMATH_EN() {
		return MATH_EN;
	}
	public void setMATH_EN(float mATH_EN) {
		MATH_EN = mATH_EN;
	}
	public float getPHYS_EN() {
		return PHYS_EN;
	}
	public void setPHYS_EN(float pHYS_EN) {
		PHYS_EN = pHYS_EN;
	}
	public float getNAT_EN() {
		return NAT_EN;
	}
	public void setNAT_EN(float nAT_EN) {
		NAT_EN = nAT_EN;
	}
	public float getMOY_ER() {
		return MOY_ER;
	}
	public void setMOY_ER(float mOY_ER) {
		MOY_ER = mOY_ER;
	}
	public float getMOY_EN() {
		return MOY_EN;
	}
	public void setMOY_EN(float mOY_EN) {
		MOY_EN = mOY_EN;
	}

    @Override
    public String toString() {
        return "Bac{" + "Serie_Bac=" + Serie_Bac + ", Mention_Bac=" + Mention_Bac + ", Lycee_Bac=" + Lycee_Bac + ", Academie=" + Academie + ", Province=" + Province + ", Lycee_Bac_ar=" + Lycee_Bac_ar + ", Academie_ar=" + Academie_ar + ", Province_ar=" + Province_ar + ", MATH_EN=" + MATH_EN + ", PHYS_EN=" + PHYS_EN + ", NAT_EN=" + NAT_EN + ", MOY_ER=" + MOY_ER + ", MOY_EN=" + MOY_EN + ", etudiant=" + etudiant + '}';
    }

    
	public static int GetIDBac(Bac b)
        {
            
            try {
                String sql ="select id_bac from  baccalaureat where id_etudiant=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, b.getEtudiant().getCNE());
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                  return rs.getInt("id_bac");
                }else{
                	return -1;
                }

            } catch (SQLException e) {
                System.err.println("Error GetEtudiantById()");
                e.printStackTrace();
                return -1;
            }
        } 
	public static Bac GetBacById(int id)
        {
            Bac bac = null;
            try {
                String sql="select * from baccalaureat where id_bac =?";
                PreparedStatement ps =  Connexion.getconOne().prepareCall(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    bac = new Bac(SerieBac.GetSerieBacById(rs.getInt("id_serie")), rs.getString("mention_bac"),
                            rs.getString("lycee"), rs.getString("academie"), rs.getString("province"),
                            rs.getString("lycee_ar"), rs.getString("academie_ar"), rs.getString("province_ar"),
                            rs.getFloat("math_EN"), rs.getFloat("phy_EN"), rs.getFloat("nat_EN"), 
                            rs.getFloat("moy_ER"), rs.getFloat("moy_EN"),Etudiant.GetEtudiantById(rs.getInt("id_etudiant")));
                }
                return bac;
            } catch (SQLException e) {
                System.err.println("Error GetBackById()");
                e.printStackTrace();
                return null;
            }
        }
         public static Bac GetBacByIdEtudiant(Etudiant etudiant)
         {
             Bac bac =null;
             try {
                int id_etudiant = Etudiant.GetIDEtudiant(etudiant);
                String sql="select * from baccalaureat where id_etudiant =?";
                PreparedStatement ps =  Connexion.getconOne().prepareCall(sql);
                ps.setInt(1, id_etudiant);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    bac = new Bac(SerieBac.GetSerieBacById(rs.getInt("id_serie")), rs.getString("mention_bac"),
                            rs.getString("lycee"), rs.getString("academie"), rs.getString("province"),
                            rs.getString("lycee_ar"), rs.getString("academie_ar"), rs.getString("province_ar"),
                            rs.getFloat("math_EN"), rs.getFloat("phy_EN"), rs.getFloat("nat_EN"), 
                            rs.getFloat("moy_ER"), rs.getFloat("moy_EN"),Etudiant.GetEtudiantById(rs.getInt("id_etudiant")));
                }
                return bac;
            } catch (SQLException e) {
                System.err.println("Error GetBackById()");
                e.printStackTrace();
                return null;
            }
         }
         
     public static int InsertBac(Bac b)
        {
            try {
                String sql ="insert into baccalaureat(mention_bac, moy_ER, "
                        + "moy_EN, math_EN, phy_EN, nat_EN, lycee, "
                        + "academie, province, id_serie, id_etudiant, "
                        + "lycee_ar, academie_ar, province_ar)"
                        + "values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,? )";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, b.getMention_Bac());
                ps.setFloat(2, b.getMOY_ER());
                ps.setFloat(3, b.getMOY_EN());
                ps.setFloat(4, b.getMATH_EN());
                ps.setFloat(5, b.getPHYS_EN());
                ps.setFloat(6, b.getNAT_EN());
                ps.setString(7, b.getLycee_Bac());
                ps.setString(8, b.getAcademie());
                ps.setString(9, b.getProvince());
                ps.setInt(10, SerieBac.InsertSerieBac(b.getSerie_Bac()));
                ps.setInt(11, Etudiant.InsertEtudiant(b.getEtudiant()));
                ps.setString(12, b.getLycee_Bac_ar());
                ps.setString(13, b.getAcademie_ar());
                ps.setString(14, b.getProvince_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id_bac) from Baccalaureat");
                
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
     public static int InsertBacAdmin(Bac b)
     {
         try {
                String sql ="insert into baccalaureat(mention_bac, moy_ER, "
                        + "moy_EN, math_EN, phy_EN, nat_EN, lycee, "
                        + "academie, province, id_serie, id_etudiant, "
                        + "lycee_ar, academie_ar, province_ar)"
                        + "values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,? )";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, b.getMention_Bac());
                ps.setFloat(2, b.getMOY_ER());
                ps.setFloat(3, b.getMOY_EN());
                ps.setFloat(4, b.getMATH_EN());
                ps.setFloat(5, b.getPHYS_EN());
                ps.setFloat(6, b.getNAT_EN());
                ps.setString(7, b.getLycee_Bac());
                ps.setString(8, b.getAcademie());
                ps.setString(9, b.getProvince());
                ps.setInt(10, SerieBac.InsertSerieBacAdmin(b.getSerie_Bac()));
                ps.setInt(11, Etudiant.InsertEtudiantAdmin(b.getEtudiant()));
                ps.setString(12, b.getLycee_Bac_ar());
                ps.setString(13, b.getAcademie_ar());
                ps.setString(14, b.getProvince_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id_bac) from Baccalaureat");
                
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
