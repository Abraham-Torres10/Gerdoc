/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.logica;

import java.io.Serializable;
import java.util.List;
import org.gerdoc.dao.ProductoService;
import org.gerdoc.model.bd.Producto;

/**
 *
 * @author gerdoc
 */
public class ProductoListLogica  implements Serializable
{

    public ProductoListLogica() 
    {
    }
    
    public List<Producto>getProductoList( )
    {
        return new ProductoService( ).getProductoList( );
    }
     
}
