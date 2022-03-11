package com.demandes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RenouvellementDAO {

	public static Connection getConnection(){ 
		Connection con=null; 
		try{ 
			Class.forName("com.mysql.jdbc.Driver"); 

			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/consulaire_db", "root", "");
		}catch(Exception e){System.out.println(e);} 
		return con; 
	}

	public static int addReno(Renouvellement r){ 
		int status=0;
		try{ 
			Connection con = RenouvellementDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement( "insert into renouvellement(carte,recu,photo,id_demande,nouvelleAdresse,nouvelEmail,nouvoTelephone,date) values (?,?,?,?,?,?,?,?)"); 
			ps.setString(1,r.getCarte()); 
			ps.setString(2,r.getRecu()); 
			ps.setString(3,r.getPhoto()); 
			ps.setInt(4,r.getId_demande()); 
			ps.setString(5,r.getNouvelleAdresse()); 
			ps.setString(6,r.getNouvelEmail()); 
			ps.setString(7,r.getNouvoTelephone()); 
			ps.setString(8,r.getDate()); 
			status=ps.executeUpdate(); 
			con.close(); 
		}catch(Exception ex){ex.printStackTrace();} 
		return status; 
	} 
	public static List<Renouvellement> getAllReno(){
		List<Renouvellement> list=new ArrayList<Renouvellement>();

		try{
			Connection con = RenouvellementDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("select * from renouvellement");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Renouvellement r = new Renouvellement();
				r.setId(rs.getInt(1)); 
				r.setCarte(rs.getString(2));
				r.setRecu(rs.getString(3));
				r.setPhoto(rs.getString(4));
				r.setId_demande(rs.getInt(5));
				r.setNouvelleAdresse(rs.getString(6));
				r.setNouvelEmail(rs.getString(7));
				r.setNouvoTelephone(rs.getString(8));
				r.setDate(rs.getString(9));
							 
				list.add(r);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}

		return list;
	}
	
	public static int delete(int id){
		int status=0;
		try{
		 	Connection con=RenouvellementDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("delete from renouvellement where id=?");
							ps.setInt(1,id);
					status=ps.executeUpdate();
					con.close();
		}catch(Exception e){e.printStackTrace();}
		return status;
	}
	
	public static Renouvellement getByIdD(int id_demande) {
   		Renouvellement r = new Renouvellement();
   		try{
			Connection con=RenouvellementDAO.getConnection(); 
   			PreparedStatement ps=con.prepareStatement("select * from renouvellement where id_demande=?");
			ps.setInt(1,id_demande);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				r = new Renouvellement(rs.getInt("id_demande"),rs.getString("carte"),rs.getString("recu"),rs.getString("photo"),rs.getString("nouvelleAdresse"),rs.getString("nouvelEmail"),rs.getString("nouvoTelephone"),rs.getString("date"));
				r.setId(rs.getInt("id"));
			}
			
			con.close();
						
		}catch(Exception e){e.printStackTrace();}
   		return r;
   		
   	}
	
	public static Renouvellement getById(int id) {
   		Renouvellement r = new Renouvellement();
   		try{
			Connection con=RenouvellementDAO.getConnection(); 
   			PreparedStatement ps=con.prepareStatement("select * from renouvellement where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				r = new Renouvellement(rs.getInt("id_demande"),rs.getString("carte"),rs.getString("recu"),rs.getString("photo"),rs.getString("nouvelleAdresse"),rs.getString("nouvelEmail"),rs.getString("nouvoTelephone"),rs.getString("date"));
				r.setId(rs.getInt("id"));
			}
			
			con.close();
						
		}catch(Exception e){e.printStackTrace();}
   		return r;
   		
   	}
	
	public static int updateReno(Renouvellement r){ 
		int status=0;
		try{ 
			Connection con = RenouvellementDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement( "update renouvellement set carte=?,recu=?,photo=?,id_demande=?,nouvelleAdresse=?,nouvelEmail=?,nouvoTelephone=?,date=? where id=?"); 
			ps.setString(1,r.getCarte()); 
			ps.setString(2,r.getRecu()); 
			ps.setString(3,r.getPhoto()); 
			ps.setInt(4,r.getId_demande()); 
			ps.setString(5,r.getNouvelleAdresse()); 
			ps.setString(6,r.getNouvelEmail()); 
			ps.setString(7,r.getNouvoTelephone()); 
			ps.setString(8,r.getDate()); 
			ps.setInt(9, r.getId());
			status=ps.executeUpdate(); 
			con.close(); 
		}catch(Exception ex){ex.printStackTrace();} 
		return status; 
	} 
	


}
