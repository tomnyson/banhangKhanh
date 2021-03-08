package services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.dbconnection;
import model.nguoidung;

public class nguoidungservice {
	
	//Táº¡o 1 Ä‘á»‘i tÆ°á»£ng káº¿t ná»‘i CSDL
	static dbconnection db = new dbconnection();
	static private Statement statement = null;
	static private PreparedStatement preparedStatement = null;
	private static ResultSet resultSet = null;
	
	public static List<nguoidung> LayNguoiDung()  {
		try {
			db.connectToDB(); //kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from " + db.database + ".nguoidung");
			
			List<nguoidung> lstND = new ArrayList<nguoidung>();
			
			while (resultSet.next()) {
				int Id = resultSet.getInt("idnguoidung");
				String hoten = resultSet.getString("hoten");
				String ho = resultSet.getString("ho");
				String ten = resultSet.getString("ten");
				String email = resultSet.getString("email");
				String matkhau = resultSet.getString("pass");
				String quyen = resultSet.getString("quyen");
				
				nguoidung nd = new nguoidung(); // tạo người dùng mới
				nd.setIdnguoidung(Id);
				nd.setHoten(hoten);
				nd.setHo(ho);
				nd.setTen(ten);
				nd.setEmail(email);
				nd.setMatkhau(matkhau);
				nd.setQuyen(quyen);
				
				lstND.add(nd); //đưa vào list
				
			}
			
			return lstND; //trả về list
		} catch (Exception e) {
			System.out.println("Loi lay nguoi dung!");
		}finally {
			db.close();// kết nối CSDL
		}
		return null;
	}
	
	// idnguoidung
	public static nguoidung LayNguoiDungTheoID(String id) {
		
		try {
			db.connectToDB(); //Má»Ÿ
			statement = db.connect.createStatement();
			resultSet = statement
					.executeQuery("select * from " + db.database + ".nguoidung "
							+ " where idnguoidung = " + id);
			if(resultSet.next()) {
				nguoidung nd = new nguoidung();
				nd.setIdnguoidung(resultSet.getInt("idnguoidung"));
				nd.setHoten(resultSet.getString("hoten"));
				nd.setHo(resultSet.getString("ho"));
				nd.setTen(resultSet.getString("ten"));
				nd.setEmail(resultSet.getString("email"));
				nd.setMatkhau(resultSet.getString("pass"));
				nd.setQuyen(resultSet.getString("quyen"));
				
				return nd;
			}else {
				return null;
			}
				
			
		}catch(Exception e) {
			System.out.println("Loi lay nguoi dung theo id");
			return null;
		}finally {
			db.close();
		}
		
		
	}
	
	//đăng nhập bằng database
	public static nguoidung DangNhap(String email)  {
		try {
			db.connectToDB(); //Kết nối CSDL
			statement = db.connect.createStatement();
			resultSet = statement.executeQuery("select * from " + db.database 
							+ ".nguoidung where email= '" + email + "'");	
			
			nguoidung nd = new nguoidung();
		
			if(resultSet.next()) {
				nd.setIdnguoidung(resultSet.getInt("idnguoidung"));
				nd.setHoten(resultSet.getString("hoten"));
				nd.setHo(resultSet.getString("ho"));
				nd.setTen(resultSet.getString("ten"));
				nd.setEmail(resultSet.getString("email"));
				nd.setMatkhau(resultSet.getString("pass"));
				nd.setQuyen(resultSet.getString("quyen"));
				return nd;
			}else {
				return null;
			}
		} catch (Exception e) {
			System.out.println("Loi cau lenh dang nhap!");
			return null;
		}finally {
			System.out.println("Closed connection!");
			db.close(); //Kết nối CSDL
			
		}
	}
	
	
	public static boolean DangKy(nguoidung nd) {
		
		try {
			db.connectToDB(); //kết nối CSDL
			String query = "INSERT INTO `" + db.database + "`.`nguoidung` (`hoten`, `ho`, `ten`, `email`, `pass`) "
					+ "VALUES (?, ?, ?, ?, ?);";
			
			preparedStatement = db.connect.prepareStatement(query);
			preparedStatement.setString(1, nd.getHoten());
			preparedStatement.setString(2, nd.getHo());
			preparedStatement.setString(3, nd.getTen());
			preparedStatement.setString(4, nd.getEmail());
			preparedStatement.setString(5, nd.getMatkhau());
			preparedStatement.execute();
			
			return true;
			
		}catch(Exception e) {
			System.out.println("Loi dang ky");
			return false;
		}finally {
			db.close(); //Kết nối CSDL
		}
	}
	
	
	public static boolean Xoa(String id) {
		
		try {
			db.connectToDB(); //kết nối CSDL
			String query = "Delete from `" 
			+ db.database + "`.`nguoidung`  where idnguoidung =" + id ;
			
			statement = db.connect.createStatement();
			 statement.execute(query);
			return true;
		}catch(Exception e) {
			System.out.println("Loi xoa nguoi dung");
			return false;
		}finally {
			db.close(); //kết nối CSDL
		}		
	}
	
	
public static boolean Sua(nguoidung nd) {
		
		try {
			db.connectToDB(); //Mở kết nối CSDL
			String query = "UPDATE `cellon`.`nguoidung` SET `hoten` = ?,`pass` = ?, `quyen` = ? WHERE (`idnguoidung` = ?);";
			
			preparedStatement = db.connect.prepareStatement(query);
			preparedStatement.setString(1, nd.getHoten());
			preparedStatement.setString(2, nd.getMatkhau());
			preparedStatement.setString(3, nd.getQuyen());
			
			preparedStatement.setInt(4, nd.getIdnguoidung());
			preparedStatement.execute();
			
			return true;
			
		}catch(Exception e) {
			System.out.println("Loi sua nguoi dung");
			return false;
		}finally {
			db.close(); //Đóng kết nối CSDL
		}
	}
	
}
