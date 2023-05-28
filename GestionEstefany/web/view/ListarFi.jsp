

<%@page import="model.Ficha"%>
<%@page import="modeldao.FichaDao"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Listar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>FICHAS REGISTRADAS EN EL SISTEMA</h1>
        <table class="table table-responsive">
            <thead>
                <tr>
                    <th class="text-center">IdFicha</th>
                    <th class="text-center">Codigo de Ficha</th>
                    <th class="text-center">Cantidad de Aprendices</th>
                    <th class="text-center">Codigo de Programa</th>
                    <th class="text-center">Codigo de Aprendices</th>
                    
                   </tr>
                      
            </thead>
            
            <%
             FichaDao daop = new FichaDao();
                    List<Ficha>listar=daop.listasFichas();
                    Iterator<Ficha>it=listar.iterator();
                    Ficha fich= null;
                    while(it.hasNext()){
                    fich=it.next();
                
            %>
            <tbody>
                <tr>
                    <td class="text-center"><%=fich.getIdficha()%></td>
                    <td class="text-center"><%=fich.getCodficha()%></td>
                    <td class="text-center"><%=fich.getCantapre()%></td>
                    <td class="text-center"><%=fich.getCodprod()%></td>
                    <td class="text-center"><%=fich.getCodapre()%></td>
                    
                   
                    <td class="text-center">
                        <a class="btn btn-danger" href="ControladorFicha?accion=editar&idficha=<%=fich.getIdficha()%>">EDITAR</a>
                        <a class="btn btn-warning" href="ControladorFicha?accion=eliminar&idficha=<%=fich.getIdficha()%>">ELIMINAR</a>
                        
                    </td>   
                </tr>
              <% } %>
                   </tbody>
            
                      
        </table>
        </div>
    </body>
</html>
