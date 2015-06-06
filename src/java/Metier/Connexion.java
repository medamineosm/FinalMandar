package Metier;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {
	 public static Connection connexionONE=null;
	 public static Connection connexionTWO=null;
	 public static Connection getconOne() throws SQLException
	    {
	        try {
	            if(connexionONE==null)
	            {
	            Class.forName("com.mysql.jdbc.Driver");
	            connexionONE= DriverManager.getConnection("jdbc:mysql://localhost/projetjspetudiants?useUnicode=true&characterEncoding=UTF-8","root","");
	            }
	            return connexionONE;
	            
	            
	        } catch (ClassNotFoundException ex) {
	            System.err.println("Erreur chargement classe : " +ex.getMessage());
	            
	        } catch(SQLException ex){
	            System.err.println("Erreur SQL : " +ex.getMessage());
	            
	        }
	        return null;
	    }  
	 public static Connection getconTwo() throws SQLException
	    {
	        try {
	            if(connexionTWO==null)
	            {
	            Class.forName("com.mysql.jdbc.Driver");
	            connexionTWO= DriverManager.getConnection("jdbc:mysql://localhost/projetjspetudiantsAdmin?useUnicode=true&characterEncoding=utf-8","root","");
	            }
	            return connexionTWO;
	            
	            
	        } catch (ClassNotFoundException ex) {
	            System.err.println("Erreur chargement classe : " +ex.getMessage());
	            
	        } catch(SQLException ex){
	            System.err.println("Erreur SQL : " +ex.getMessage());
	            
	        }
	        return null;
	    } 
}
