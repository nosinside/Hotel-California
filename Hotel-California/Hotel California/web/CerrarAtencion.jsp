<%--
    Document   : CerrarAtencion
    Created on : 07-jun-2016, 23:30:18
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
        <title>Welcome to the hotel California | Cerrar atención</title>
    </head>
    <body>
        <div id="contenedor">
            <div id="cabecera">
                <a href="index.jsp.html"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <a href="VerListaClientes.jsp">Ver Clientes</a> |
                <a href="RegistrarHuesped.jsp">Registrar Huesped</a> |
                <a href="ReservaHabitacion.jsp">Reservar Habitación</a> |
                <a href="ModificarCliente.jsp">Modificar Cliente</a> |
                <a href="CerrarAtencion.jsp">Cerrar Atención</a> |
                <a href="Cotizacion.jsp">Generar Cotización</a> |
                <a href="InformacionJSP.jsp">Información</a>
            </div>
            <div id="cuerpo">

                <h2>Cierres de atención</h2>
                <h4>Seleccione la habitación a cerrar</h4>
                <!--                    // Implementar select que invoque a arraylist
                                    </br> // Implementar boton Enviar-->

            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
        </div>
    </body>
</html>
