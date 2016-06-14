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
        mensaje = "<h3>Habitación borrada exitosamente</h3>";
        aux.setAlojado(false);
        aux.setReserva(false);
        aux.setNombre1("");
        aux.setRut1("");
        aux.setRut2("");
        break;
    }
}


%>
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
                  <%
                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">

                <h2>Cierres de atención</h2>
                <h4>Seleccione la habitación a cerrar</h4>
                
                    
                <%  
                        String retorno = null;
                        retorno = request.getParameter("txtArray");
                        if(retorno == null){
                            out.println("<form method='post'>");
                            out.println("<select name='txtArray'");
                            
                        for(Habitaciones aux: Habitaciones.habitaciones){
                            if(aux.isAlojado() == false){
                                out.println("<option value='"+ aux.getNumeroHabitacion() + "'" + ">Habitación numero: " +aux.getNumeroHabitacion()+ "</option>");}
                    }
                        out.println("</select>");
                        out.println("<input type='submit' value='Enviar' /></br></form>");
                        }
                        
                    %>
                    
                    <%=mensaje%>
                    

            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
        </div>
    </body>
</html>
