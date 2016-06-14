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

String mensaje = "";



 
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
                <a href="index.jsp.html"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <%
                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">
                <h1>Registro de Huespedes</h1>
                
                    <%  out.println(Render.formRegHuesped2);
                        out.println("<tr><td><label for='Habitacion'>Número de Habitación</label></td><td><select name='txtHabitacion'>");
                        
                        for(Habitaciones aux: Habitaciones.habitaciones){
                            if(aux.isAlojado() == false){
                                out.println("<option value='"+ aux.getNumeroHabitacion()+ "'>"+"Habitación Simple: "+aux.getTipo()+" - Número: "+ aux.getNumeroHabitacion() + "</option>");
                            }
                    }
                        out.println("</select></td></tr>");
                        out.println(Render.formRegHuesped3);
                        
                    %>      
                    
            </div>
            
        </div>
    </body>
</html>

         
