

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="modelo.Individual"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
         <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
         <link rel="stylesheet" type="text/css" href="styles/st.css">
        
          <%
        String tipoForm= (String) request.getAttribute("tipoFormulario");
        Individual individual=null;
        if(tipoForm.equals("actualizar")){
        individual = (Individual) request.getAttribute("individual");
        }
    %>  
    </head>
    <body>
         <div class="container" style="margin-top: 5px; ">
        <jsp:include page="../includes/header.jsp"></jsp:include>
         </div>
        <div  class="cuerpo" style="margin:15px 300px 100px 300px;
                  border: activeborder 3px solid; padding: 20px 20px 20px">
            <h3 class="titulo" style="padding-bottom:10px"><%=tipoForm%> Individual</h3>
            <form action="IndividualCtrl" method="POST">
                    <div class="form-group item">
                        <label>Nombre:</label>
                        <input type="text" class="form-control" name="nombre" value="${individual.nombre}">
                    </div>    
                    <div class="form-group item">
                        <label>Telefono: </label>
                        <input type="text" class="form-control" name="id" value="${individual.id}" style="display:none">
                        <input type="text" class="form-control" name="telefono" value="${individual.telefono}">
                    </div>
                    <div class="form-group item">
                        <label>Direccion: </label>
                        <input type="text" class="form-control" name="direccion" value="${individual.direccion}">
                    </div>
                    <div class="form-group item">
                        <label>Dpi</label>
                        <input type="text" class="form-control" name="dpi" value="${individual.dpi}">
                    </div>
                    <input type="submit" class="btn btn-success  item" value="<%=tipoForm%>" name="accion" >
            </form>
        </div>
    </body>
</html>
