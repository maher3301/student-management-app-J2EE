package tn.essat.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tn.essat.model.Etudiant;


public class GestionIMP implements IGestion {
	 private Connection cnx;
     public GestionIMP() {
    	 
    	 try {  Class.forName("com.mysql.cj.jdbc.Driver");
    		 this.cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/essat","root","");
    		 
     }catch(Exception e) {
    	 	 
     } 
 
   }
	@Override
	public List<Etudiant> getALLEtudiant() {
		
         List<Etudiant > etds =new ArrayList<Etudiant>();
         
         try { 
        	 PreparedStatement pre=this.cnx.prepareStatement("select * from etudiant");
             pre.executeQuery(); 
             ResultSet res=pre.executeQuery();
             
             while(res.next()) {
            	 int id=res.getInt("id");
            	 String prenom=res.getString("prenom");
            	 String nom=res.getString("nom");
            	 String groupe=res.getString("groupe");
            	 Etudiant et= new Etudiant(id,prenom,nom,groupe);
            	 etds.add(et); 
            	 
             }
           
         }catch (Exception e) {
        	 
        	 
         }
		return etds; 
	}

	@Override
	public void addEtudiant(Etudiant et) {
		// TODO Auto-generated method stub
		try { PreparedStatement pre=this.cnx.prepareStatement("insert into etudiant values (null,?,?,?)");
		      pre.setString(1, et.getPrenom());
		      pre.setString(2, et.getNom());
		      pre.setString(3, et.getGroupe());
		      pre.executeUpdate();

		
	} catch(Exception e)  {
		}
	}
	@Override
    public void deleteEtudiant(int id) {
        PreparedStatement pre = null;
        try {
            pre = this.cnx.prepareStatement("delete from etudiant where id=?");
            pre.setInt(1, id);
            pre.executeUpdate();
        } catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	@Override
	public void modifierEtudiant(Etudiant et) {
		 try {
	            PreparedStatement pre = this.cnx.prepareStatement("UPDATE etudiant SET prenom=?, nom=?, groupe=? WHERE id=?");
	            pre.setString(1, et.getPrenom());
	            pre.setString(2, et.getNom());
	            pre.setString(3, et.getGroupe());
	            pre.setInt(4, et.getId());
	            pre.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }		
	}
		
	

		
	

