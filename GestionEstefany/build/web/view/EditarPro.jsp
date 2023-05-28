

<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
      
        <div class="container">
            <div class="col-lg-6">
                <h1>Editar Programa</h1>
                <%
                    ProgramaDao pdao =new ProgramaDao();
                    int codprograma = Integer.parseInt((String)request.getAttribute(("codprograma")));
                    Programa p = new Programa();
                    p = pdao.list(codprograma);
                %>
   
        
                <form action="ControladorPrograma">
                    
                    Codigo del programa:<br>
                    <input class="form-control" type="number" name="txtcodprograma" value="<%=p.getCodprograma()%>"><br>
                    Nombre del programa:<br>
                    <input class="form-control" type="text" name="txtnombrepro" value="<%=p.getNombrepro()%>"><br>
                    <br>
                   
                    <input class="btn btn-danger" type="submit" name="accion" value="Actualizar"><br>

                </form>
               
            </div>
           
        </div>
       
    </body>
</html>
