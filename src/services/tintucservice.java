package services;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.dbconnection;
import model.nguoidung;
import model.tintucmodel;

public class tintucservice {
	static private  Statement statement = null;
	static private ResultSet resultSet = null;
	static private PreparedStatement preparedStatement = null;

	
	static dbconnection db = new dbconnection();
	
	public static List<tintucmodel> Laysautin() {
		try {
			db.connectToDB();	//kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from " + db.database + ".tintuc ORDER BY idtintuc DESC LIMIT 6");
			List<tintucmodel> lstTT = new ArrayList<tintucmodel>();
			
			while(resultSet.next()) {
				tintucmodel tt = new tintucmodel();
				tt.setIdtintuc(resultSet.getInt("idtintuc"));
				tt.setTieude(resultSet.getString("tieude"));
				tt.setMotangan(resultSet.getString("motangan"));
				tt.setAnhdaidien(resultSet.getString("anhdaidien"));
				tt.setChitietbaiviet(resultSet.getString("chitietbaiviet"));
				tt.setNguoidang(resultSet.getString("nguoidang"));
				tt.setNgaydang(resultSet.getString("ngaydang"));
				
				lstTT.add(tt); //thêm vào List
			}
			
			return lstTT;
			
		} catch (Exception e) {
			System.out.println("Loi lay tin");
			return null;
		}finally {
			db.close(); //đóng kết nối
		}
	}
	
	public static List<tintucmodel> LayTin() {
		try {
			db.connectToDB();	//kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from " + db.database + ".tintuc");
			List<tintucmodel> lstTT = new ArrayList<tintucmodel>();
			
			while(resultSet.next()) {
				tintucmodel tt = new tintucmodel();
				tt.setIdtintuc(resultSet.getInt("idtintuc"));
				tt.setTieude(resultSet.getString("tieude"));
				tt.setMotangan(resultSet.getString("motangan"));
				tt.setAnhdaidien(resultSet.getString("anhdaidien"));
				tt.setChitietbaiviet(resultSet.getString("chitietbaiviet"));
				tt.setNguoidang(resultSet.getString("nguoidang"));
				tt.setNgaydang(resultSet.getString("ngaydang"));
				
				lstTT.add(tt); //Thêm vào List
			}
			
			return lstTT;
			
		} catch (Exception e) {
			System.out.println("Loi lay tin");
			return null;
		}finally {
			db.close(); //đóng kết nối
		}
	}

	public static tintucmodel LayTinTheoID(String id) {
	
	tintucmodel tt = new tintucmodel();		
	try {
		db.connectToDB();	//kết nối CSDL
		statement = db.connect.createStatement();			
		resultSet = statement.executeQuery("select * from " + db.database + ".tintuc "
				+ "where idtintuc =" + id);
		
		if(resultSet.next()) {
			tt.setIdtintuc(resultSet.getInt("idtintuc"));
			tt.setTieude(resultSet.getString("tieude"));
			tt.setMotangan(resultSet.getString("motangan"));
			tt.setAnhdaidien(resultSet.getString("anhdaidien"));
			tt.setChitietbaiviet(resultSet.getString("chitietbaiviet"));
			tt.setNguoidang(resultSet.getString("nguoidang"));
			tt.setNgaydang(resultSet.getString("ngaydang"));
							
		}			
	}catch(Exception e) {
		System.out.println("Loi lay tin tuc theo id");
		return null;
	}finally {
		db.close();
	}
	
	return tt;
}

	public static boolean LayTin(tintucmodel tt, HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return false;
	}	
	
public static boolean Themtintuc(tintucmodel tt) {
		
		try {
			db.connectToDB(); //kết nối CSDL
			String query = "INSERT INTO `" + db.database + "`.`tintuc` (`tieude`, `motangan`, `anhdaidien`, `chitietbaiviet`, `nguoidang`, `ngaydang` ) "
					+ "VALUES (?, ?, ?, ?, ?, ?);";
			
			preparedStatement = db.connect.prepareStatement(query);
			preparedStatement.setString(1, tt.getTieude());
			preparedStatement.setString(2, tt.getMotangan());
			preparedStatement.setString(3, tt.getAnhdaidien());
			preparedStatement.setString(4, tt.getChitietbaiviet());
			preparedStatement.setString(5, tt.getNguoidang());
			preparedStatement.setString(6, tt.getNgaydang());
			preparedStatement.execute();
			
			return true;
			
		}catch(Exception e) {
			System.out.println("Loi them tin tuc");
			return false;
		}finally {
			db.close(); //đóng CSDL
		}
	}

public static boolean Xoatintuc(String id) {
	
	try {
		db.connectToDB(); //kết nối CSDL
		String query = "Delete from `" 
		+ db.database + "`.`tintuc`  where idtintuc =" + id ;
		
		statement = db.connect.createStatement();
		 statement.execute(query);
		return true;
	}catch(Exception e) {
		System.out.println("Loi xoa tin tuc");
		return false;
	}finally {
		db.close(); //đóng CSDL
	}		
}

public static boolean Suatintuc(tintucmodel tt) {
	
	try {
		db.connectToDB(); //Mở kết nối CSDL
		String query = "UPDATE `cellon`.`tintuc` SET `tieude` = ?, `motangan` = ?, `anhdaidien` = ?, `chitietbaiviet` = ?, `nguoidang` = ?, `ngaydang` = ? WHERE (`idtintuc` = ?);";
		preparedStatement = db.connect.prepareStatement(query);
		preparedStatement.setString(1, tt.getTieude());
		preparedStatement.setString(2, tt.getMotangan());
		preparedStatement.setString(3, tt.getAnhdaidien());
		preparedStatement.setString(4, tt.getChitietbaiviet());
		preparedStatement.setString(5, tt.getNguoidang());
		preparedStatement.setString(6, tt.getNgaydang());
		preparedStatement.setInt(7, tt.getIdtintuc());
		preparedStatement.execute();
		
		return true;
		
	}catch(Exception e) {
		System.out.println("Loi sua tin tuc");
		return false;
	}finally {
		db.close(); //Đóng kết nối CSDL
	}
}
}
