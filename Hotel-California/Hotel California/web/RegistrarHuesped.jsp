    <%-- 
    Document   : Cotizacion
    Created on : 07-jun-2016, 23:30:35
    Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Cotización</title>
    </head>
    <body>
        <div id="contenedor">
            <div id="cabecera">
                <a href="index.jsp.html"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <%
                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">
                <h1>Registro de Huespedes</h1>
                <p>Ingrese los datos para registrar al nuevo Huesped</p>
                <form method="post"></br>
                    <label for="habitacion">Numero Habitación</label>
                    <input name="txtNumero" type="number" required/></br>
                    <label for="Huesped">Nombre Huesped</label><input name="txtNombre" type="text" required/></br>
                    <label for="Rut">Rut Huesped</label><input name="txtRut" type="text" required/></br>
                    <label for="FechaIngreso">Fecha Ingreso</label><input name="txtFecha" type="date" required/></br>
                 <input type="submit" value="Asignar" id=enviar required/></br>
                </form>
            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
            
        </div>
    </body>
</html>

         
