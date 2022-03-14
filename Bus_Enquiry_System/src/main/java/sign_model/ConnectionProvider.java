package sign_model;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_enquiry_system","root","Sher@234");
			return con;
					}
		catch (Exception e) {
			System.out.println(e);
			return null;
		
		}
	}

}
