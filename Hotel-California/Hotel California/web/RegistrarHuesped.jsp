<%-- 
    Document   : RegistrarHuesped
    Created on : 07-jun-2016, 23:30:35
    Author     : Johan Barahona
--%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page import="Logica.Parametros" %>

<%

    String valor = request.getParameter("txtHabitacion");
    String txtNombre = request.getParameter("txtNombre");
    String txtRut = request.getParameter("txtRut");
    String txtNombre2 = request.getParameter("txtNombre2");
    String txtRut2 = request.getParameter("txtRut2");
    String txtFecha = request.getParameter("txtFecha");

    if (valor != null || txtNombre != null || txtRut != null || txtNombre2 != null || txtRut2 != null || txtFecha != null) {
        for (Habitaciones aux : Habitaciones.habitaciones) {
            if (aux.getNumeroHabitacion().equals(valor)) {
                aux.setNombre1(txtNombre);
                aux.setAlojado(true);
                aux.setNombre2(txtNombre2);
                aux.setRut1(txtRut);
                aux.setRut2(txtRut2);
                aux.setFecha(txtFecha);
            }
        }
    }


%>

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
                <a href="index.jsp"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <%                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">
                <h1>Registro de Huespedes</h1>

                <%  out.println(Render.formRegHuesped2);
                    out.println("<tr><td><label for='Habitacion'>Número de Habitación</label></td><td><select name='txtHabitacion'>");

                    for (Habitaciones aux : Habitaciones.habitaciones) {
                        if (aux.isAlojado() == false) {
                            out.println("<option value='" + aux.getNumeroHabitacion() + "'>" + "Habitación Simple: " + aux.getTipo() + " - Número: " + aux.getNumeroHabitacion() + "</option>");
                        }
                    }
                    out.println("</select></td></tr>");
                    out.println(Render.formRegHuesped3);

                %>      

            </div>

        </div>
    </body>
</html>


