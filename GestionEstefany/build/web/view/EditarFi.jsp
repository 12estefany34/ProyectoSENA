

<%@page import="model.Ficha"%>
<%@page import="modeldao.FichaDao"%>
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
        <h1>Editar Ficha</h1>
        <%
            FichaDao fdao =new FichaDao();
            int idficha= Integer.parseInt((String)request.getAttribute(("idficha")));
            Ficha fi = new Ficha();
            fi= fdao.list(idficha);
        %>
   
        
                <form action="ControladorFicha">
                                     
                    Codigo de Ficha:<br>
                    <input class="form-control" type="number" name="txtcodficha" value="<%=fi.getCodficha()%>"><br>
                    Cantidad de Aprendices:<br>
                    <input class="form-control" type="text" name="txtcantapre" value="<%=fi.getCantapre()%>"><br>
                     Codigo de Programa:<br>
                    <input class="form-control" type="text" name="txtcodprod" value="<%=fi.getCodprod()%>"><br>
                     Codigo de Aprendices:<br>
                    <input class="form-control" type="text" name="txtCodapre" value="<%=fi.getCodapre()%>"><br>
                    <br>
                    <input class="form-control" type="number" name="txtid" value="<%=fi.getIdficha()%>"><br>
                    <input class="btn btn-danger" type="submit" name="accion" value="Actualizar"><br>

                </form>
               
            </div>
           
        </div>
       
    </body>
</html>
