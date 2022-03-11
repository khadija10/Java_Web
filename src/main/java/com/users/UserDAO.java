package com.users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserDAO {
	
	public static Connection getConnection(){ 
		 Connection con=null; 
		 try{ 
		 Class.forName("com.mysql.jdbc.Driver"); 
		 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/consulaire_db", "root", "");
		 }catch(Exception e){System.out.println(e);} 
		 return con; 
		 }
	
	public static List<User> getAllUsers(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con = UserDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("select * from users");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				User u = new User();
				
				 u.setId(rs.getInt(1)); 
				 u.setNom(rs.getString(2));
				 u.setPrenom(rs.getString(3));
				 u.setTelephone(rs.getString(4));
				 u.setAdresse(rs.getString(5));
				 u.setEmail(rs.getString(6));
				 u.setPassword(rs.getString(7));  
				 u.setProfil(rs.getString(8));				 
				list.add(u);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
	
	public static int addUser(User u){ 
		 int status=0;
		 try{ 
		 Connection con=UserDAO.getConnection(); 
		 PreparedStatement ps=con.prepareStatement( "insert into users(nom,prenom,telephone,adresse,email,password,profil) values (?,?,?,?,?,?,?)"); 
		 ps.setString(1,u.getNom()); 
		 ps.setString(2,u.getPrenom()); 
		 ps.setString(3,u.getTelephone()); 
		 ps.setString(4,u.getAdresse());  
		 ps.setString(5,u.getEmail()); 
		 ps.setString(6,u.getPassword()); 
		 ps.setString(7,u.getProfil()); 
		 status=ps.executeUpdate(); 
		 con.close(); 
		 }catch(Exception ex){ex.printStackTrace();} 
		 return status; 
		 } 
	
	public static User getById(int id) {
   		User user = new User();
   		try{
			Connection con=UserDAO.getConnection(); 
   			PreparedStatement ps=con.prepareStatement("select * from users where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				user=new User(rs.getString("nom"),rs.getString("prenom"),rs.getString("adresse"),rs.getString("telephone"),rs.getString("email"),rs.getString("password"),rs.getString("profil"));
				user.setId(rs.getInt("id"));
			}
			
			con.close();
						
		}catch(Exception e){e.printStackTrace();}
   		return user;
   		
   	}
	
	public static int update(User u) {
		int status=0;
		try{
		 	Connection con=UserDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("update users set nom=?,prenom=?,telephone=?,adresse=?,email=?,password=?,profil=? where id=?");
   			ps.setString(1, u.getNom());
   			ps.setString(2, u.getPrenom());
   			ps.setString(3, u.getTelephone());
   			ps.setString(4, u.getAdresse());
   			ps.setString(5, u.getEmail());
   			ps.setString(6, u.getPassword());
   			ps.setString(7, u.getProfil());
   			ps.setInt(8, u.getId());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){ex.printStackTrace();} 
		return status;
	}
	
	public static int delete(int id){
		int status=0;
		try{
		 	Connection con=UserDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("delete from users where id=?");
							ps.setInt(1,id);
					status=ps.executeUpdate();
					con.close();
		}catch(Exception e){e.printStackTrace();}
		return status;
	}
	
	public static User logInUser(User user) {
		
		User u = new User();
		
		try {
			Connection con=UserDAO.getConnection(); 
			PreparedStatement ps=con.prepareStatement("select * from users where email=? and password=?");
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				u.setId(rs.getInt(1)); 
				 u.setNom(rs.getString(2));
				 u.setPrenom(rs.getString(3));
				 u.setTelephone(rs.getString(4));
				 u.setAdresse(rs.getString(5));
				 u.setEmail(rs.getString(6));
				 u.setPassword(rs.getString(7));  
				 u.setProfil(rs.getString(8));	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
		
	}

}

