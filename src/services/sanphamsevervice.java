package services;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connection.dbconnection;
import model.nguoidung;
import model.sanpham;
import model.tintucmodel;

public class sanphamsevervice {
	static private  Statement statement = null;
	static private ResultSet resultSet = null;
	static private PreparedStatement preparedStatement = null;
	static dbconnection db = new dbconnection();
	
	public static List<sanpham> sanphams()  {
		try {
			db.connectToDB(); //kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from " + db.database + ".sanpham");
			
			List<sanpham> lstSP = new ArrayList<sanpham>(); //Tạo danh sách
			
			while (resultSet.next()) {
				int Id = resultSet.getInt("idsanpham");
				String tensanpham = resultSet.getString("tensanpham");
				String anhdaidien = resultSet.getString("anhdaidien");
				String gia = resultSet.getString("gia");
				String chitiet = resultSet.getString("chitiet");
				
				sanpham sp = new sanpham(); //Tạo mới
				sp.setIdsanpham(Id);
				sp.setTensanpham(tensanpham);
				sp.setAnhdaidien(anhdaidien);
				sp.setGia(gia);
				sp.setChitiet(chitiet);
				
				lstSP.add(sp); //Thêm vào List
				
			}
			
			return lstSP; //Trả lại lstSPDT
		} catch (Exception e) {
			System.out.println("Loi lay san pham!");
		}finally {
			db.close();// đóng CSDL
		}
		return null;
	}
	
	public static List<sanpham> sanpham() throws Exception {
		try {
			db.connectToDB();	//kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from sanphamdientu");
			List<sanpham> lstSP = new ArrayList<sanpham>();
			
			while(resultSet.next()) {
				sanpham sp = new sanpham();
				sp.setIdsanpham(resultSet.getInt("idsanphamdientu"));
				sp.setTensanpham(resultSet.getString("tensanpham"));
				sp.setAnhdaidien(resultSet.getString("anhdaidien"));
				sp.setGia(resultSet.getString("gia"));
				sp.setChitiet(resultSet.getString("chitiet"));
				lstSP.add(sp); //thêm vào List
			}
			
			return lstSP;
			
		} catch (Exception error) {
			throw error;
		}finally {
			db.close(); //đóng
		}
	}

	public static sanpham LaySanPhamTheoID(String id) {
	
	sanpham sp = new sanpham();		
	try {
		db.connectToDB();	//kết nối CSDL
		statement = db.connect.createStatement();			
		resultSet = statement.executeQuery("select * from " + db.database + ".sanpham "
				+ "where idsanpham =" + id);
		if(resultSet.next()) {
			sp.setIdsanpham(resultSet.getInt("idsanpham"));
			sp.setTensanpham(resultSet.getString("tensanpham"));
			sp.setAnhdaidien(resultSet.getString("anhdaidien"));
			sp.setGia(resultSet.getString("gia"));
			sp.setChitiet(resultSet.getString("chitiet"));
							
		}			
	}catch(Exception e) {
		System.out.println("Loi lay sanpham theo id");
		return null;
	}finally {
		db.close();
	}
	
	return sp;
}
public static boolean Themsanpham(sanpham sp) {
		
		try {
			db.connectToDB(); //kết nối CSDL
			String query = "INSERT INTO `"+db.database+"`.`sanpham` (`tensanpham`, `anhdaidien`, `gia`, `chitiet`) VALUES (?,?,?,?);";
			preparedStatement = db.connect.prepareStatement(query);
			preparedStatement.setString(1, sp.getTensanpham());
			System.out.println(sp.getTensanpham());
			preparedStatement.setString(2, sp.getAnhdaidien());
			System.out.println(sp.getAnhdaidien());
			preparedStatement.setString(3, sp.getGia());
			System.out.println(sp.getGia());
			preparedStatement.setString(4, sp.getChitiet());
			System.out.println(sp.getChitiet());
			preparedStatement.execute();
			
			return true;
			
		}catch(Exception e) {
			System.out.println("Loi them san pham");
			return false;
		}finally {
			db.close(); //đóng CSDL
		}
	}

public static boolean Xoasanpham(String id) {
	
	try {
		db.connectToDB(); //kết nối CSDL
		String query = "Delete from `" 
		+ db.database + "`.`sanpham`  where idsanpham =" + id ;
		
		statement = db.connect.createStatement();
		 statement.execute(query);
		return true;
	}catch(Exception e) {
		System.out.println("Loi xoa san pham");
		return false;
	}finally {
		db.close(); //đóng CSDL
	}		
}

public static boolean Suasanpham(sanpham spdt) {
	
	try {
		db.connectToDB(); //Mở kết nối CSDL
		String query = "UPDATE `cellon`.`sanpham` SET `tensanpham` = ?, `anhdaidien` = ?, `gia` = ?, `chitiet` = ? WHERE (`idsanpham` = ?);";
		preparedStatement = db.connect.prepareStatement(query);
		preparedStatement.setString(1, spdt.getTensanpham());
		preparedStatement.setString(2, spdt.getAnhdaidien());
		preparedStatement.setString(3, spdt.getGia());
		preparedStatement.setString(4, spdt.getChitiet());
		preparedStatement.setInt(5, spdt.getIdsanpham());
		preparedStatement.execute();
		
		return true;
		
	}catch(Exception e) {
		System.out.println("Loi sua san pham");
		return false;
	}finally {
		db.close(); //Đóng kết nối CSDL
	}
}
}
