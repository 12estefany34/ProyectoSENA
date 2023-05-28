<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Aprendiz</title>
    </head>
    <body>
        <h1>DATOS PERSONALES</h1>
        <div class="container">
            <div class="col-lg-6">
                <form action="../ControladorAprendiz">
                    <label for="documento">Id</label>
                <input class="form-control" id="id" type="number" name="txtid">
                <br>
                <label for="documento">Documento</label>
                <input class="form-control" id="documento" type="number" name="txtdoc1">
                <br>
                <br>
                <label for="nombre">Nombre</label>
                <input class="form-control" id="nombre" type="text" name="txtNom1">
                <br>
                <br>
                <label for="apellido">Apellido</label>
                <input class="form-control" id="apellido" type="text" name="txtApe1">
                <br>
                <br>
                <label for="email">Email</label>
                <input class="form-control" id="email" type="text" name="txtemail1">
                <br>
                <br>
                <label for="telefono">Telefono</label>
                <input class="form-control" id="telefono" type="text" name="txttel1">
                <br>
                 <input class="btn btn-danger" type="submit" name="accion" value="Agregarapre"><br>
                </form>
               
            </div>
           
        </div>
       
    </body>
</html>