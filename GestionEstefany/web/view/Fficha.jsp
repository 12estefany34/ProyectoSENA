<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Registro Ficha</title>
    </head>
    <body>
        <h1>Agregar Ficha</h1>
    <div class="container">
            <div class="col-lg-6">
                <form action="../ControladorFicha">
                    Codigo ficha:<br>
                    <input class="form-control" type="number" name="txtcodficha"><br>
                    Cantidad Aprendices:<br>
                    <input class="form-control" type="number" name="txtcantapre"><br>
                    <div class="form-group">
                        <label> Nombre Programa:</label>
                        <br>
                        <select name="txtcodprod" class="custom-select" type="text">
                            <option value="0"></option>
                            <%ProgramaDao pro=new ProgramaDao();
                            List<Programa> lista = pro.listarpro();
                            %>
                            <% for(Programa li:lista){%>
                            <option value="<%=li.getCodprograma()%>"><%=li.getNombrepro()%></option>
                            <%}%>
                        </select>
                    </div>
                        <div class="form-group">
                            <label for="CodCateg">Seleciona aprendices:</label>
                            <br>
                            <select name="txtcodapre" class="custom-select" type="text">
                                <%AprendizDao ape= new AprendizDao();
                                List<Aprendiz> listar= ape.listadoA();%>
                        <% for(Aprendiz ca:listar){%>
                       
                        <option value="<%=ca.getId()%>"><%=ca.getCodapred()%><%=ca.getNombreap()%></option>
                         <%}%>
                            </select>
                   
                    <br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregarfi"><br>
                    
                    
                    
                    
                    
                </form>
             </div>
                           
            </div>
    </div>
    </body>
    </html>