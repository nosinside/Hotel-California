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
                <a href="index.jsp"><img src="Imagenes/logo.png"></a>
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
                    <tr><th>Numero</th><th>Estado</th><th>Nombre de Reservante</th><th>Rut Reservante</th><th>Tipo</th></tr>
                <%
                    String reserva = "";
                    String ocupado = "";
                    for(Habitaciones aux: Habitaciones.habitaciones){
                        if(aux.getTipo().equals("Single")){
                            if(aux.isAlojado()){
                            ocupado = "ocupado";
                        }else{
                                ocupado = "disponible";
                            }
                        if(aux.isReserva()){
                            reserva = "reservado";
                        }else{
                            reserva = "disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                        
                        out.println("<th>" + ocupado + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("<th>" + aux.getTipo()+"</th>");
                        out.println("</tr>");
                        }
                    }
                %>
                </table>
                
 <h3>Habitaciones Dobles</h3>
                <table border="1">
                    <tr><th>Numero</th><th>Estado</th><th>Nombre de Reservante</th><th>Rut Reservante</th><th>Nombre Acompañante</th><th>Tipo</th></tr>
                <%
                    String reserva1 = "";
                    String ocupado1 = "";
                    for(Habitaciones aux: Habitaciones.habitaciones){
                        if(aux.getTipo().equals("Doble")){
                            if(aux.isAlojado()){
                            ocupado1 = "ocupado";
                        }else{
                                ocupado1 = "Disponible";
                            }
                        if(aux.isReserva()){
                            reserva1 = "reservado";
                         }else{
                            reserva1 = "disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                        
                        out.println("<th>" + ocupado1 + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("<th>" + aux.getRut2()+"</th>");
                        out.println("<th>" + aux.getTipo()+"</th>");
                        out.println("</tr>");
                        }
                    }
                %>
               </table>
                <h3>Habitaciones PentHouse</h3>
                <table border="1">
                    <tr><th>Numero</th><th>Estado</th><th>Nombre de Reservante</th><th>Rut Reservante</th><th>Nombre Acompañante</th><th>Tipo</th></tr>
                <%
                    String reserva2 = "";
                    String ocupado2 = "";
                    for(Habitaciones aux: Habitaciones.habitaciones){
                        if(aux.getTipo().equals("Presidencial")){
                            if(aux.isAlojado()){
                            ocupado2 = "ocupado";
                        }else{
                                ocupado2 = "Disponible";
                            }
                        if(aux.isReserva()){
                            reserva2 = "reservado";
                         }else{
                            reserva2 = "disponible";
                        }
                        out.println("<tr>");
                        out.println("<th>" + aux.getNumeroHabitacion()+"</th>");
                       
                        out.println("<th>" + ocupado2 + "</th>");
                        out.println("<th>" + aux.getNombre1()+"</th>");
                        out.println("<th>" + aux.getRut1()+"</th>");
                        out.println("<th>" + aux.getRut2()+"</th>");
                        out.println("<th>" + aux.getTipo()+"</th>");
                        out.println("</tr>");
                        }
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