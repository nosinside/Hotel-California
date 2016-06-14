<%--
    Document   : Index
    Created on : 07-jun-2016, 23:30:18
    Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%><html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Inicio</title>
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
<%
    // Creando Habitaciones Vacias
    
    if(Habitaciones.habitaciones.size() < 1){
        for(int i = 0; i < 20; i++){
            
            // String numeroHabitacion, String nombre1, String rut1, String fono1
        Habitaciones h = new Habitaciones(Integer.toString(i+1));
        Habitaciones.habitaciones.add(h); 
    }
    }

    for(Habitaciones aux: Habitaciones.habitaciones){
        for(int i = 0; i < 10; i++){
            Habitaciones.habitaciones.get(i).setTipo("Single");
            Habitaciones.habitaciones.get(i).setAlojado(false);
        }
        for(int i = 10; i<19; i++){
            Habitaciones.habitaciones.get(i).setTipo("Doble");
            Habitaciones.habitaciones.get(i).setAlojado(false);
        }
        for(int i = 19; i<20; i++){
            Habitaciones.habitaciones.get(i).setTipo("Presidencial");
            Habitaciones.habitaciones.get(i).setAlojado(false);
        }
        }
    
%>
                <h1>Bienvenido</h1>
                <h4>A el Hotel California</h4>
                <h5>Reglas de negocio</h5>
                El Hotel California cuenta con 20 habitaciones, entre ellas 1 Presidencial, 9 Dobles y 10 Singles.</br>
                Incluye Desayuno y Cena.</br>
                La hora de corte del dia Hotel es a las 12Hrs.</br>

                Tarifas:
                <ul>
                <li>Presidencial $150.000/noche</li>
                <li>Doble $50.000/noche</li>
                <li>Single $20.000/noche</li>
                </ul>
                
                <p><b>Sistema Integrado de reserva de habitaciones, desarrollado por:</b></p>
                <ul><li>Ademir Monardes</li>
                    <li>Bastian Padilla</li>
                    <li>Darwin Vera</li>
                    <li>Johan Barahona</li>
                </ul>
                <p>Para el docente: Cristian Leiva</p>
                
            
            </div>
          
            
        </div>
    </body>
</html>

