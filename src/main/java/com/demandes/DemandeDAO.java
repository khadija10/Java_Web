package com.demandes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DemandeDAO {
	
	public static Connection getConnection(){ 
		 Connection con=null; 
		 try{ 
		 Class.forName("com.mysql.jdbc.Driver"); 
		 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/consulaire_db", "root", "");
		 }catch(Exception e){System.out.println(e);} 
		 return con; 
		 }
	
	
	public static List<Demande> getAllDemandes(){
		List<Demande> list=new ArrayList<Demande>();
		
		try{
			Connection con = DemandeDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("select * from nouvellesdemandes");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				Demande d = new Demande();
				
				 d.setId(rs.getInt(1)); 
				 d.setNom(rs.getString(2));
				 d.setPrenom(rs.getString(3));
				 d.setDatenaissance(rs.getString(4));
				 d.setLieunaissance(rs.getString(5));
				 d.setProfession(rs.getString(6));
				 d.setTaille(rs.getString(7));
				 d.setSexe(rs.getString(8));
				 d.setTypedocument(rs.getString(9));
				 d.setNumerodocument(rs.getString(10));
				 d.setDatedelivrance(rs.getString(11));
				 d.setAdresse(rs.getString(12));
				 d.setEmail(rs.getString(13));
				 d.setTelephone(rs.getString(14));
				 d.setDatedemande(rs.getString(15));
				 d.setPiece(rs.getString(16));
				 d.setPhoto(rs.getString(17));
				 d.setRecu(rs.getString(18));				 
				list.add(d);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
	
	public static int addDemande(Demande d){ 
		 int status=0;
		 try{ 
		Connection con = DemandeDAO.getConnection(); 
		 PreparedStatement ps=con.prepareStatement( "insert into nouvellesdemandes(nom,prenom,datenaissance,lieunaissance,profession,taille,sexe,typedocument,numerodocument,datedelivrance,adresse,email,telephone,datedemande,piece,photo,recu,id_user) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
		 ps.setString(1,d.getNom()); 
		 ps.setString(2,d.getPrenom()); 
		 ps.setString(3,d.getDatenaissance()); 
		 ps.setString(4,d.getLieunaissance()); 
		 ps.setString(5,d.getProfession()); 
		 ps.setString(6,d.getTaille()); 
		 ps.setString(7,d.getSexe()); 
		 ps.setString(8,d.getTypedocument()); 
		 ps.setString(9,d.getNumerodocument()); 
		 ps.setString(10,d.getDatedelivrance()); 
		 ps.setString(11,d.getAdresse());  
		 ps.setString(12,d.getEmail()); 
		 ps.setString(13,d.getTelephone()); 
		 ps.setString(14,d.getDatedemande()); 
		 ps.setString(15,d.getPiece()); 
		 ps.setString(16,d.getPhoto()); 
		 ps.setString(17,d.getRecu()); 
		 ps.setInt(18,d.getId_user()); 

		 status=ps.executeUpdate(); 
		 con.close(); 
		 }catch(Exception ex){ex.printStackTrace();} 
		 return status; 
		 } 
	
	public static Demande getById(int id) {
   		Demande d = new Demande();
   		try{
			Connection con=DemandeDAO.getConnection(); 
   			PreparedStatement ps=con.prepareStatement("select * from nouvellesdemandes where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				d = new Demande(rs.getInt("id_user"),rs.getString("nom"),rs.getString("prenom"),rs.getString("datenaissance"),rs.getString("lieunaissance"),rs.getString("profession"),rs.getString("taille"),rs.getString("sexe"),rs.getString("typedocument"),rs.getString("numerodocument"),rs.getString("datedelivrance"),rs.getString("adresse"),rs.getString("email"),rs.getString("telephone"),rs.getString("datedemande"),rs.getString("piece"),rs.getString("photo"),rs.getString("recu"));
				d.setId(rs.getInt("id"));
			}
			
			con.close();
						
		}catch(Exception e){e.printStackTrace();}
   		return d;
   		
   	}
	
	public static int updateDemande(Demande d) {
		int status=0;
		try{
		 	Connection con=DemandeDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("update nouvellesdemandes set nom=?,prenom=?,datenaissance=?,lieunaissance=?,profession=?,taille=?,sexe=?,typedocument=?,numerodocument=?,datedelivrance=?,adresse=?,email=?,telephone=?,datedemande=?,piece=?,photo=?,recu=?,id_user=? where id=?");
			ps.setString(1,d.getNom()); 
			 ps.setString(2,d.getPrenom()); 
			 ps.setString(3,d.getDatenaissance()); 
			 ps.setString(4,d.getLieunaissance()); 
			 ps.setString(5,d.getProfession()); 
			 ps.setString(6,d.getTaille()); 
			 ps.setString(7,d.getSexe()); 
			 ps.setString(8,d.getTypedocument()); 
			 ps.setString(9,d.getNumerodocument()); 
			 ps.setString(10,d.getDatedelivrance()); 
			 ps.setString(11,d.getAdresse());  
			 ps.setString(12,d.getEmail()); 
			 ps.setString(13,d.getTelephone()); 
			 ps.setString(14,d.getDatedemande()); 
			 ps.setString(15,d.getPiece()); 
			 ps.setString(16,d.getPhoto()); 
			 ps.setString(17,d.getRecu()); 
			 ps.setInt(18,d.getId_user()); 

			 
			 ps.setInt(19, d.getId());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){ex.printStackTrace();} 
		return status;
	}
	
	public static int delete(int id){
		int status=0;
		try{
		 	Connection con=DemandeDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("delete from nouvellesdemandes where id=?");
							ps.setInt(1,id);
					status=ps.executeUpdate();
					con.close();
		}catch(Exception e){e.printStackTrace();}
		return status;
	}
	
	public static Demande getByU(int id_user) {
   		Demande d = new Demande();
   		try{
			Connection con=DemandeDAO.getConnection(); 
   			PreparedStatement ps=con.prepareStatement("select * from nouvellesdemandes where id_user=?");
			ps.setInt(1,id_user);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				d = new Demande(rs.getInt("id_user"),rs.getString("nom"),rs.getString("prenom"),rs.getString("datenaissance"),rs.getString("lieunaissance"),rs.getString("profession"),rs.getString("taille"),rs.getString("sexe"),rs.getString("typedocument"),rs.getString("numerodocument"),rs.getString("datedelivrance"),rs.getString("adresse"),rs.getString("email"),rs.getString("telephone"),rs.getString("datedemande"),rs.getString("piece"),rs.getString("photo"),rs.getString("recu"));
				d.setId(rs.getInt("id"));
			}
			
			con.close();
						
		}catch(Exception e){e.printStackTrace();}
   		return d;
   		
   	}

}
