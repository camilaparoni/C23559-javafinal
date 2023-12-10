package com.codoacodo.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Timestamp;


import com.codoacodo.connection.AdministradorDeConexiones;
import com.codoacodo.dto.Orador;
import java.sql.PreparedStatement;

public class OradorDAO {

        private static final String SQL_DELETE = "DELETE FROM oradores WHERE ID = ?";
	/*metodos del crud*/
	public Orador obtenerPorId(Long id) {
		String sql = "SELECT * FROM ORADORES WHERE ID="+id;
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		Orador prodFromDb = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			if(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
				Long idOrador = rs.getLong(1);//tomar la primer columna
				String nombre = rs.getString(2);
                                String apellido = rs.getString(3);
                                String mail = rs.getString(4);
                                String tema = rs.getString(5);
                                //Timestamp fechaAlta = rs.getTimestamp(6);
				/*Float precio = rs.getFloat(3);
				Date fecha = rs.getDate(4);
				String imagen = rs.getString(5);
				String codigo = rs.getString(6);
				String hechoEn = rs.getString(7);*/
				
				//campos crear un objeto????
				prodFromDb = new Orador(idOrador, nombre, apellido, mail, tema /*precio,fecha,imagen,codigo,hechoEn*/);
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return prodFromDb;
	}
	

	/*metodos del crud*/
	public List<Orador> listarOradores() {
		String sql = "SELECT * FROM ORADORES ";
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		List<Orador> list = new ArrayList<>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			while(rs.next()) {//
				// rs > sacando los datos
				Long idOrador = rs.getLong(1);//tomar la primer columna
				String nombre = rs.getString(2);
                                String apellido = rs.getString(3);
                                String mail = rs.getString(4);
                                String tema = rs.getString(5);
                                //Timestamp fechaAlta = rs.getTimestamp(6);
				/*Float precio = rs.getFloat(3);
				Date fecha = rs.getDate(4);
				String imagen = rs.getString(5);
				String codigo = rs.getString(6);
				String hechoEn = rs.getString(7);*/
				
				//campos crear un objeto????
				Orador prodFromDb = new Orador(idOrador, nombre, apellido, mail, tema/*precio,fecha,imagen,codigo,hechoEn*/);
				
				//agrego a la lista 
				list.add(prodFromDb);
			}			
			
			//cierro la conexion
			con.close();
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return list;
	}

	/*crear un producto en la db*/
	public void crearOrador(String nombre, String apellido, String mail, String tema /*Float precio, String imagen, String codigo, String hechoEn*/) {
		
		Connection con = AdministradorDeConexiones.getConnection();
		
		if(con != null) { 
			// insert en la db > SQL: INSERT INTO....
			
                        String sql = "INSERT INTO ORADORES (nombre, apellido, mail, tema, fechaAlta) ";
			sql += "VALUES('" + nombre + "','" + apellido + "','" + mail + "','" + tema + "', CURRENT_DATE)";
                        
                        /*
                        String sql = "INSERT INTO PRODUCTO (nombre, precio,fecha_creacion,imagen,codigo,hecho_en) ";
			sql += "VALUES('"+nombre+"',"+precio+",CURRENT_DATE,'"+imagen+"','"+codigo+"','"+hechoEn+"')";
                        */
                                
			//control de errores
			try {
				Statement st = con.createStatement();			
				st.execute(sql);
				
				//cierre de conexion
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void actualizarOrador(String id, String nombre, String apellido, String mail, String tema) {
		Connection con = AdministradorDeConexiones.getConnection();
		if(con != null) { 
			String sql = "UPDATE ORADORES "
					+ " set nombre='"+nombre+"',"
                                        + " apellido='"+apellido+"',"
					+ " mail='"+mail+"',"
					+ " tema='"+ tema +"'"
					+ " WHERE id = '"+id+"'";		
		
			try {
				Statement st = con.createStatement();			
				st.executeUpdate(sql);
				con.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	/*metodos del crud*/
	public List<Orador> buscar(String clave) {
		String sql = "SELECT * FROM ORADORES WHERE nombre LIKE '%"+clave+"%' ";
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		List<Orador> listado = new ArrayList<Orador>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			while(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
				Long idOrador = rs.getLong(1);//tomar la primer columna
				String nombre = rs.getString(2);
                                String apellido = rs.getString(3);
                                String mail = rs.getString(4);
                                String tema = rs.getString(5);
				/*Float precio = rs.getFloat(3);
				Date fecha = rs.getDate(4);
				String imagen = rs.getString(5);
				String codigo = rs.getString(6);
				String hechoEn = rs.getString(7);*/
				
				//campos crear un objeto????
				Orador prodFromDb = new Orador(idOrador,nombre, apellido, mail, tema);
				
				listado.add(prodFromDb);
			}	
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		
		return listado;
	}
        
        public int eliminarOrador(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try{
            conn = AdministradorDeConexiones.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, id);
            registros = stmt.executeUpdate();
        } catch(SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch(SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
    }
}
