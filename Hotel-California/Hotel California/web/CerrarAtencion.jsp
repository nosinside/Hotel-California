<%--
    Document   : CerrarAtencion
    Created on : 07-jun-2016, 23:30:18
    Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  

String txtArray = request.getParameter("txtArray");
String mensaje = "";
for(Habitaciones aux: Habitaciones.habitaciones){
    if(aux.getNumeroHabitacion().equals(txtArray)){
        mensaje = "<h3>Check Out realizado exitosamente</h3>";
        aux.setAlojado(false);
        aux.setReserva(false);
        aux.setNombre1("-");
        aux.setRut1("-");
        aux.setRut2("-");
        break;
    }
}


%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Check Out</title>
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

                <h2>Check Out</h2>
                <h4>Seleccione la habitación para realizar el Check Out</h4>
                
                    
                <%  
                        if(txtArray == null){
                            out.println("<form method='post'><label for='Habitacion'>Número de Habitación</label></td><td><select name='txtArray'>");
                        for(Habitaciones aux: Habitaciones.habitaciones){
                            if(aux.isAlojado()){
                                out.println("<p><option value='"+ aux.getNumeroHabitacion()+ "'>"+"Habitación Simple: "+aux.getTipo()+" - Número: "+ aux.getNumeroHabitacion() + "</option>");
                            }
                    }
                        out.println("</select></p>");
                        out.println("<p><input type='submit' value='Check Out' id=enviar required/></form></p>");
                        }
                        
                        
                    %>
                    
                    <%=mensaje%>
                    

            </div>
            
        </div>
    </body>
</html>
