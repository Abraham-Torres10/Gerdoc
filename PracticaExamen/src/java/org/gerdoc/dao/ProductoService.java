/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.gerdoc.model.bd.Producto;

/**
 *
 * @author Usuario
 */
public class ProductoService  extends Conexion<Producto>
{

    public ProductoService() 
    {
    }
    
    
    public List<Producto> getProductoList() 
    {
        List<Producto> productoList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Producto producto = null;

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
            resultSet = statement.executeQuery("SELECT producto.Id_producto, producto.nombre AS Nombre, producto.Precio, " +
               "marca.nombre AS Marca, marca.clave " +
               "FROM PRODUCTO " +
               "INNER JOIN MARCA ON producto.clave = marca.Clave " +
               "WHERE marca.nombre = 'GERDOC';");
            if (resultSet == null) 
            {
                return null;
            }
            productoList = new ArrayList<>();
            while (resultSet.next()) 
            {
                producto = new Producto();
                producto.setId( resultSet.getInt(1));
                producto.setProducto(resultSet.getString(2));
                producto.setPrecio(resultSet.getDouble(3));
                producto.setMarca(resultSet.getString(4));
                producto.setClave(resultSet.getInt(5));
                productoList.add(producto);
            }
            resultSet.close();
            closeConnection(connection);
            return productoList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) {
        List<Producto> list = new ProductoService().getProductoList( );
        for(Producto producto:list)
        {
            System.out.println(producto.getProducto());
        }
    }
}
