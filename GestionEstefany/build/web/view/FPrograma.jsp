<%-- 
    Document   : FPrograma
    Created on : 27/04/2023, 7:31:33 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <title>Registro</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
       <div class="container">
            <div class="col-lg-6">
                <h1>Registrar programa</h1>
                <form action="../ControladorPrograma">
                    Codigo programa:<br>
                    <input class="form-control" type="number" name="txtcodprograma"><br>
                    Nombre del programa: <br>
                    <input class="form-control" type="text" name="txtnombrepro"><br>
                     
                    <input class="btn btn-danger" type="submit" name="accion" value="AgregarPro">
                   
                </form>
            </div>

        </div>
</html>
