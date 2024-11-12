/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.logica;

import java.io.Serializable;
import java.util.List;
import org.gerdoc.dao.MarcaService;
import org.gerdoc.model.bd.Marca;

/**
 *
 * @author gerdoc
 */
public class MarcaListLogica  implements Serializable
{

    public MarcaListLogica() 
    {
    }
    
    public List<Marca>getMarcaList( )
    {
        return new MarcaService( ).getMarcaList( );
    }
     
}
