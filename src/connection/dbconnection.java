package connection;

import java.sql.*;


public class dbconnection {
	public  Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	final private String host = "192.168.64.2:3306";
	final private String user = "dev";
	final private String passwd = "dev";
	final public String database = "khanh_test";
	
	public  void connectToDB()  {
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");

			// Setup the connection with the DB
			connect = DriverManager.getConnection("jdbc:mysql://" + host + "/"
					+ database + "?" + "user=" + user + "&password=" + passwd);
			
			if(connect != null) {
				System.out.println("Ket noi CSDL thanh cong!");
			}

		} catch (Exception e) {
			System.out.println("Loi ket noi CSDL");
		}
	}
		

	// You need to close the resultSet
	public void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			if (statement != null) {
				statement.close();
			}

			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {

		}
	}
	
}
