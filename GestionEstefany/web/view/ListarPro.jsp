<%-- 
    Document   : ListarA
    Created on : 3/05/2023, 07:16:39 PM
    Author     : INSTRUCTOR
--%>

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
        <h1>PROGRAMAS REGISTRADOS EN EL SISTEMA</h1>
        <table class="table table-responsive">
            <thead>
                <tr>
                    <th class="text-center">Codigo de aprendiz</th>
                    <th class="text-center">Nombre de aprendiz</th>
                    
                   </tr>
                      
            </thead>
            
            <%
             ProgramaDao pdao = new ProgramaDao();  
             List<Programa>listar= pdao.listarpro();
             Iterator<Programa>it=listar.iterator();
             Programa po =null;
             while(it.hasNext()){
                 po=it.next();
                
            %>
            <tbody>
                <tr>
                    <td class="text-center"><%=po.getCodprograma()%></td>
                    <td class="text-center"><%=po.getNombrepro()%></td>
                   
                    <td class="text-center">
                        <a class="btn btn-danger" href="ControladorPrograma?accion=editar&codprograma=<%=po.getCodprograma()%>">EDITAR</a>
                        <a class="btn btn-warning" href="ControladorPrograma?accion=eliminar&codprograma=<%=po.getCodprograma()%>">ELIMINAR</a>
                        
                    </td>   
                </tr>
              <% } %>
                   </tbody>
            
                      
        </table>
        </div>
    </body>
</html>
