package com.event.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//created by IT19111520

public class EventDBconnection {

	public static Connection getConnection () throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","hasitha");




		return conn;
	}
}
