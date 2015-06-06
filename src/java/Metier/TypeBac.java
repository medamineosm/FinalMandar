package Metier;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TypeBac {
	
	private String Intituler;
        private String Intituler_ar;

        public TypeBac(String Intituler, String Intituler_ar) {
            this.Intituler = Intituler;
            this.Intituler_ar = Intituler_ar;
        }

    TypeBac() {
    }
        
        public String getIntituler_ar() {
            return Intituler_ar;
        }

        public void setIntituler_ar(String Intituler_ar) {
            this.Intituler_ar = Intituler_ar;
        }
	
	public String getIntituler() {
		return Intituler;
	}

	public void setIntituler(String intituler) {
		Intituler = intituler;
	}

    @Override
    public String toString() {
        return "TypeBac{" + "Intituler=" + Intituler + ", Intituler_ar=" + Intituler_ar + '}';
    }
	
        public static TypeBac GetTypeBacById(int id)
        {
            TypeBac tb = null;
            try {
                String sql = "select * from type_baccalauréat where id = ?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    tb =new TypeBac(rs.getString("intitule"), rs.getString("intitule_ar"));
                }
                return tb;
            } catch (SQLException e) {
                System.err.println("Error GetTypeBacById()");
                e.printStackTrace();
                return null;
            }
        }
        
         public static ArrayList<TypeBac> GetAllTypeBac()
        {
            ArrayList<TypeBac> tb = new ArrayList<>();
            try {
                String sql = "select * from type_baccalauréat";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    tb.add(new TypeBac(rs.getString("intitule"), rs.getString("intitule_ar")));
                }
                return tb;
            } catch (SQLException e) {
                System.err.println("Error GetTypeBacById()");
                e.printStackTrace();
                return null;
            }
        }
         public static int InsertTypeBacAdmin(TypeBac tb)
        {
            try {
                String sql ="insert into type_baccalauréat(intitule,intitule_ar)values(?,?)";
                PreparedStatement ps = Connexion.getconTwo().prepareStatement(sql);
                ps.setString(1, tb.getIntituler());
                ps.setString(2, tb.getIntituler_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconTwo().prepareStatement("select max(id) from type_Baccalauréat");
                
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
         public static int InsertTypeBac(TypeBac tb)
        {
            try {
                String sql ="insert into type_baccalauréat(intitule,intitule_ar)values(?,?)";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, tb.getIntituler());
                ps.setString(2, tb.getIntituler_ar());
                int rs = ps.executeUpdate();
                PreparedStatement pss = Connexion.getconOne().prepareStatement("select max(id) from type_Baccalauréat");
                
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
         
          public static int GetIDTypeBac(String typebac)
        {
            SerieBac sb = null;
            try {
                String sql = "select * from type_baccalauréat where intitule=?";
                PreparedStatement ps = Connexion.getconOne().prepareStatement(sql);
                ps.setString(1, typebac);
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
}
