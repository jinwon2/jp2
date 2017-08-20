package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConTest {

		public static void main(String[] args) {
			
			Connection con;
			Statement st;
			try {
				con= DBConnector.getCon();
				st= con.createStatement();
				String sql = "select * from user";
				ResultSet rs = st.executeQuery(sql);
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
