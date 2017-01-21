package ua.ibtsoftgroup.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConnectionDB {

	private Connection conn = null;

	public ConnectionDB() {
		super();
		try {
			this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/IBTdb", "root", "root");
			System.out.println("Successful connection.");

		} catch (SQLException ex) {
			System.out.println("Failed connection:" + ex);
		}
	}

	@Override
	protected void finalize() throws Throwable {
		if (conn != null) {
			try {
				conn.close();
				System.out.println("Close connection.");
			} catch (SQLException e) {
				System.out.println("Not close connection.");
				e.printStackTrace();
			}
		}
		super.finalize();
	}

	public List<Map<String, String>> SelectLocation() {

		List<Map<String, String>> outData = new ArrayList<Map<String, String>>();
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users");
			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("id", rs.getString("id"));
				map.put("firstName", rs.getString("firstName"));
				map.put("lastName", rs.getString("lastName"));
				map.put("birthday", rs.getString("birthday"));
				map.put("phone", rs.getString("phone"));
				map.put("email", rs.getString("email"));
				map.put("country", rs.getString("country"));
				map.put("city", rs.getString("city"));
				map.put("region", rs.getString("region"));

				outData.add(map);
			}
		} catch (SQLException e) {
			System.out.println("Access error:" + e);
		}
		return outData;
	}

	public List<Map<String, String>> SelectAllData() {

		List<Map<String, String>> outData = new ArrayList<Map<String, String>>();
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users");
			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("id", rs.getString("id"));
				map.put("firstName", rs.getString("firstName"));
				map.put("lastName", rs.getString("lastName"));
				map.put("birthday", rs.getString("birthday"));
				map.put("phone", rs.getString("phone"));
				map.put("email", rs.getString("email"));
				map.put("country", rs.getString("country"));
				map.put("city", rs.getString("city"));
				map.put("region", rs.getString("region"));

				outData.add(map);
			}
		} catch (SQLException e) {
			System.out.println("Access error:" + e);
		}
		return outData;
	}

	public boolean InsertData(Map<String, String> map) {

		Statement stmt = null;
		boolean result = false;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(
					"INSERT INTO `users` (firstName, lastName, birthday, phone,email, country, city, region) VALUES('"
							+ map.get("firstName") + "','" + map.get("lastName") + "','" + map.get("birthday") + "','"
							+ map.get("phone") + "','" + map.get("email") + "','" + map.get("country") + "','"
							+ map.get("city") + "','" + map.get("region") + "');");
			result = true;
		} catch (SQLException e) {
			result = false;
			System.out.println("Access error:" + e);
		}
		return result;
	}

}
