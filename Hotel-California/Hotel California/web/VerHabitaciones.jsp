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
        <title>Welcome to the hotel California | Ver Habitaciones</title>
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

                <h2>Ver Habitaciones</h2>
                <h4>Lista de Habitaciones y su estado</h4>
                
                <h3>Habitaciones Singles</h3>
                <table border="1">
                    <tr><th>Numero</th><th>Ocupado</th><th>Estado reserva</th><th>Nombre de Reservante</th><th>Rut Reservante</th></tr>
                <%
                    String reserva = "";
                    String ocupado = "";
                    for(Habitaciones aux: Habitaciones.habitacionSimple){
                        if(aux.isAlojado() == true){
                            ocupado = "si";
                        }else{
                            ocupado ="no";
                        }
                        if(aux.isReserva() == true){
                            reserva = "Reservado";
                        }else{
                            reserva = "Disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                        out.println("<th>" + ocupado +"</th>");
                        out.println("<th>" + reserva + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("</tr>");
                    }
                %>
                </table>
                
                <h3>Habitaciones Dobles</h3>
                <table border="1">
                    <tr><th>Numero</th><th>Ocupado</th><th>Estado reserva</th><th>Nombre de Reservante</th><th>Rut Reservante</th><th>Nombre Acompañante</th></tr>
                <%
                    String reserva1 = "";
                    String ocupado1 = "";
                    for(Habitaciones aux: Habitaciones.habitacionDoble){
                        if(aux.isAlojado() == true){
                            ocupado1 = "si";
                        }else{
                            ocupado1 ="no";
                        }
                        if(aux.isReserva() == true){
                            reserva1 = "Reservado";
                        }else{
                            reserva1 = "Disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                        out.println("<th>" + ocupado1 +"</th>");
                        out.println("<th>" + reserva1 + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("<th>" + aux.getNombre2()+"</th>");
                        out.println("</tr>");
                    }
                %>
                </table>
                <h3>Habitaciones PentHouse</h3>
                <table border="1">
                    <tr><th>Numero</th><th>Ocupado</th><th>Estado reserva</th><th>Nombre de Reservante</th><th>Rut Reservante</th><th>Nombre Acompañante</th></tr>
                <%
                    String reserva2 = "";
                    String ocupado2 = "";
                    for(Habitaciones aux: Habitaciones.habitacionPentHouse){
                        if(aux.isAlojado() == true){
                            ocupado2 = "si";
                        }else{
                            ocupado2 ="no";
                        }
                        if(aux.isReserva() == true){
                            reserva2 = "Reservado";
                        }else{
                            reserva2 = "Disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                        out.println("<th>" + ocupado2 +"</th>");
                        out.println("<th>" + reserva2 + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("<th>" + aux.getNombre2()+"</th>");
                        out.println("</tr>");
                    }
                %>
                </table>
            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
        </div>
    </body>
</html>