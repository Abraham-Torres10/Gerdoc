<%-- 
    Document   : menu
    Created on : 15 oct. 2024, 13:06:30
    Author     : Usuario
--%>

<%@page import="org.gerdoc.logica.ProductoListLogica"%>
<%@page import="org.gerdoc.model.bd.Producto"%>
<%@page import="org.gerdoc.dao.ProductoService"%>
<%@page import="java.util.List"%>
<%@page import="org.gerdoc.model.MenuModelo"%>
<%@page import="org.gerdoc.logica.MenuLogica"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        
        
<%
String param1 = request.getParameter("param1");
List<MenuModelo>list = new MenuLogica( ).getMenuAdmin( param1 );
StringBuilder stringBuilder = null;

List<Producto>producto = new ProductoListLogica().getProductoList( );
if( producto == null || producto.size() == 0)
{
    out.print("<b>Sin datos</b>");
    return;
}
%>

    <ul class="nav">
            <%
                for( MenuModelo menuModelo : list)
                {
                    stringBuilder = new StringBuilder( );
            %>
            <li class="nav-item">
                <%
                    stringBuilder.append( "<a class=\""  );
                    stringBuilder.append( menuModelo.getClase( ) );
                    stringBuilder.append( "\"" );
                    if( menuModelo.isArialCurrent() )
                    {
                        stringBuilder.append( " aria-current=\"page\" " );
                    }
                    if( menuModelo.isArialDisabled())
                    {
                        stringBuilder.append( " aria-disabled=\"true\" " );
                    }
                    stringBuilder.append( " href=\""+ menuModelo.getHref( ) + "\">" );
                    stringBuilder.append( menuModelo.getName() );
                    stringBuilder.append( "</a>" );
                    
                %>
                <%=stringBuilder.toString() %>
            </li>
            <%
                }
            %>
    </ul>
            
<table class="table table-hover table-striped table-bordered"> 
    <thead>
        <tr>
        <th scope="col"><b>Id</b></th>
        <th scope="col"><b>Nombre</b></th>
        <th scope="col"><b>Precio</b></th>
        <th scope="col"><b>Marca</b></th>
        <th scope="col"><b>Clave</b></th>
        </tr>
    </thead>
    <tbody>
<%
    for( Producto productoo : producto)
    {
%>
        <tr>
            <th scope="col"><%=productoo.getId()%></th>
            <th scope="col"><%=productoo.getProducto()%></th>
            <th scope="col"><%=productoo.getPrecio()%></th>
            <th scope="col"><%=productoo.getMarca()%></th>
            <th scope="col"><%=productoo.getClave()%></th>
        </tr>    
<%
    }
%>
    </tbody>
</table>