package com.codoacodo.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {
        //Conexion a la base de datos
	public static Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/oradores";
		String username = "admin";
		String password = "admin";
		String driverName = "com.mysql.cj.jdbc.Driver";
		
		//control errores
		Connection con = null;
		try {
			Class.forName(driverName);//carga en memoria el Driver
			con = DriverManager.getConnection(url,username,password);
		}catch(Exception e) {
			e.printStackTrace();//muestra la excepción y el error
		}
		return con;
	}
	
	public static void main(String[] args) {
		Connection con = AdministradorDeConexiones.getConnection();
		if(con != null) {
			System.out.println("Conexion ok");
		}else {
			System.err.println("Conexion fail");
		}
	}
}
