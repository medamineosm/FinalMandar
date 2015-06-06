package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SerieBac {
	private String Intituler;
        private String Intituler_ar;
        private TypeBac typeBac;
	
        public SerieBac(String Intituler, String Intituler_ar,TypeBac typeBac) {
            this.Intituler = Intituler;
            this.Intituler_ar = Intituler_ar;
            this.typeBac = typeBac;
        }

    SerieBac() {
    }
        
        public TypeBac getTypeBac() {
            return typeBac;
        }

        public void setTypeBac(TypeBac typeBac) {
            this.typeBac = typeBac;
        }

	public String getIntituler() {
		return Intituler;
	}

	public void setIntituler(String intituler) {
		Intituler = intituler;
	}

        public String getIntituler_ar() {
            return Intituler_ar;
        }

        public void setIntituler_ar(String Intituler_ar) {
            this.Intituler_ar = Intituler_ar;
        }

    @Override
    public String toString() {
        return "SerieBac{" + "Intituler=" + Intituler + ", Intituler_ar=" + Intituler_ar + ", typeBac=" + typeBac + '}';
    }

        
        public static int GetIDSerieBac(String seriebac)
        {
            SerieBac sb = null;
            try {
                String sql = "select * from serie_baccalauréat where intitule=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, seriebac);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    return rs.getInt("id");
                }else{
                    return -1;
                }
            } catch (SQLException e) {
                System.err.println("Error GetSerieBacById()");
                e.printStackTrace();
                return -1;
            }}
        
	public static SerieBac GetSerieBacById(int id)
        {
            SerieBac sb = null;
            try {
                String sql = "select * from serie_baccalauréat where id = ?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    sb = new SerieBac(rs.getString("intitule"), rs.getString("intitule_ar"),TypeBac.GetTypeBacById(rs.getInt("id_type")));
                }
                return sb;
            } catch (SQLException e) {
                System.err.println("Error GetSerieBacById()");
                e.printStackTrace();
                return null;
            }}
            
    public static ArrayList<SerieBac> GetAllSerieBac()
        {
            ArrayList<SerieBac> sb = new ArrayList<>();
            try {
                String sql = "select * from serie_baccalauréat ";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    sb.add(new SerieBac(rs.getString("intitule"), rs.getString("intitule_ar"),TypeBac.GetTypeBacById(rs.getInt("id_type"))));
                }
                return sb;
            } catch (SQLException e) {
                System.err.println("Error GetSerieBacById()");
                e.printStackTrace();
                return sb;
            }
        }
    
     public static int InsertSerieBac(SerieBac tb)
        {
            try {
                String sql ="insert into serie_baccalauréat(intitule,intitule_ar,id_type)values(?,?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, tb.getIntituler());
                ps.setString(2, tb.getIntituler_ar());
                ps.setInt(3, TypeBac.InsertTypeBac(tb.getTypeBac()));
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id) from serie_Baccalauréat");
                
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
     public static int InsertSerieBacAdmin(SerieBac tb)
        {
            try {
                String sql ="insert into serie_baccalauréat(intitule,intitule_ar,id_type)values(?,?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, tb.getIntituler());
                ps.setString(2, tb.getIntituler_ar());
                ps.setInt(3, TypeBac.InsertTypeBacAdmin(tb.getTypeBac()));
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id) from serie_Baccalauréat");
                
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
