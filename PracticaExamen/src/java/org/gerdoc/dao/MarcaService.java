package org.gerdoc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.gerdoc.model.bd.Marca;

/**
 *
 * @author Usuario
 */
public class MarcaService  extends Conexion<Marca>
{

    public MarcaService() 
    {
    }
    
    
    public List<Marca> getMarcaList() 
    {
        List<Marca> marcaList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Marca marca = null;

        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            statement = connection.createStatement();
            if (statement == null) {
                return null;
            }
            resultSet = statement.executeQuery("SELECT * FROM MARCA;");
            if (resultSet == null) 
            {
                return null;
            }
            marcaList = new ArrayList<>();
            while (resultSet.next()) 
            {
                marca = new Marca();
                marca.setClave( resultSet.getInt(1));
                marca.setMarca(resultSet.getString(2));
                marcaList.add(marca);
            }
            resultSet.close();
            closeConnection(connection);
            return marcaList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) {
        List<Marca> list = new MarcaService().getMarcaList( );
        for(Marca marca:list)
        {
            System.out.println(marca.getMarca());
        }
    }
}
