package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConTest {

		public static void main(String[] args) {
			String url = "jdbc:mysql://localhost:3306/jsp_study";
			String id = "root";
			String pwd = "123456";
			Connection con;
			Statement st;
			try {
				Class.forName("org.mariadb.jdbc.Driver");
					con= DriverManager.getConnection(url,id,pwd);
					System.out.println("연결성공");
					st= con.createStatement();
					ResultSet rs = st.executeQuery("select * from user");
				    while(rs.next()) {
						System.out.print(rs.getString("user_no"));
						System.out.println(rs.getString("id"));
						System.out.println(rs.getString("password"));
						System.out.println(rs.getString("name"));
					}

			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
