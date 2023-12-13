package com.codoacodo.dao;

import static com.codoacodo.dao.Conexion.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.codoacodo.model.Orador;
import java.sql.Timestamp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OradorDAO {
    
    static Logger logger = LoggerFactory.getLogger(OradorDAO.class);
    
    private static final String SQL_SELECT = "SELECT * FROM oradores";
    private static final String SQL_INSERT = "INSERT INTO jugador(nombre, apellido, fecha_nac) VALUES (?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE jugador SET nombre = ?, apellido = ?, fecha_nac = ? WHERE ID = ?";
    private static final String SQL_DELETE = "DELETE FROM jugador WHERE ID = ?";
    
    public List<Orador> selectOradores() {
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        Orador orador = null;
        List<Orador> oradores = new ArrayList();
            
        try {
            conn = getConexion();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(SQL_SELECT);
            //Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            while(rs.next()) {
                
                int idOrador = rs.getInt(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Timestamp fechaAlta = rs.getTimestamp(6);
                
                orador = new Orador(idOrador, nombre, apellido, mail, tema , fechaAlta);
                oradores.add(orador);
            }
            /*
        } catch(SQLException | NullPointerException | ClassNotFoundException |
                InstantiationException | IllegalAccessException ex) {
            */
            } catch(SQLException ex) {
                ex.printStackTrace(System.out);
                ex.getMessage();
            } finally {
                try {
                    close(rs);
                    close(stmt);
                    close(conn);
                } catch(SQLException ex) {
                    ex.printStackTrace();
                }
            }
        
        return oradores;
    }
}