/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

/**
 *
 * @author Johan Barahona
 */
public class Render {

    public static String barraNavegacion = "<a href='VerHabitaciones.jsp'>Ver Habitaciones</a> |\n"
            + "                <a href='RegistrarHuesped.jsp'>Registrar Huesped</a> |\n"
            + "                <a href='ReservaHabitacion.jsp'>Reservar Habitación</a> |\n"
            + "                <a href='ModificarCliente.jsp'>Modificar Cliente</a> |\n"
            + "                <a href='Cotizacion.jsp'>Cotización</a> |\n"
            + "                <a href='CerrarAtencion.jsp'>Check Out</a> |\n"
            + "                <a href='InformacionJSP.jsp'>Información</a>";

// para formulario RegistrarHuesped, dibujjo de formulario
    public static String formRegHuesped1 = "<table><form method='post'></br>\n"
            + "                    <label for='habitacion'>Numero Habitación</label>\n"
            + "                    <input name='txtNumero' type='number'/></br>\n"
            + "                    <label for='Huesped'>Nombre Huesped</label><input name='txtNombre' type='text'/></br>\n"
            + "                    <label for='Rut'>Rut Huesped</label><input name='txtRut' type='text'/></br>\n"
            + "                    <label for='FechaIngreso'>Fecha Ingreso</label><input name='txtFecha' type='date'/></br>\n"
            + "                 <input type='submit' value='Registrar' id=enviar required/></br><input type='submit' name='btnCancelar' value='cancelar'/></br>\n"
            + "                </form>";

    public static String formModiCli = "<table><form method='post'></br>\n"
            + "                    <label for='rut'>Rut Cliente</label>\n"
            + "                    <input name='txtRut' type='text'/></br>\n"
            + "                 <input type='submit' value='Modificar' id=enviar required/></br>\n"
            + "                </form>";

    public static String formModiClivalues = "<table><form method='post'></br>\n"
            + "                    <label for='Huesped'>Nombre Huesped</label><input name='txtNombre' type='text' requiered/></br>\n"
            + "                    <label for='Rut'>Rut Huesped</label><input name='txtRut2' type='text' requiered/></br>\n"
            + "                 <input type='submit' value='Asignar' id=enviar required/></br></br>\n"
            + "                </form>";

    public static String formRegHuesped2 = "<table><form method='post'>\n";
    
    public static String formRegRes3 = "<tr><td><label for='Huesped'>Nombre Huesped</label></td><td><input name='txtNombre' type='text' required/></td></tr>\n"
            + "                             <tr><td><label for='Rut'>Rut Huesped</label></td><td><input name='txtRut' type='text' required/></td></tr>\n"
            + "                             <tr><td><label for='Huesped2'>Nombre Huesped 2</label></td><td><input name='txtNombre2' type='text' requiered/></td></tr>\n"
            + "                             <tr><td><label for='RutHuesped2'>Rut Huesped 2</label></td><td><input name='txtRut2' type='text' requiered/></td></tr>\n"
            + "                             <tr><td></td><td><input type='submit' value='Reservar' id=enviar required/></td></tr>\n"
            + "                             </form></table>";

    public static String formRegHuesped3 = "<tr><td><label for='Huesped'>Nombre Huesped</label></td><td><input name='txtNombre' type='text' required/></td></tr>\n"
            + "                             <tr><td><label for='Rut'>Rut Huesped</label></td><td><input name='txtRut' type='text' required/></td></tr>\n"
            + "                             <tr><td><label for='Huesped2'>Nombre Huesped 2</label></td><td><input name='txtNombre2' type='text' requiered/></td></tr>\n"
            + "                             <tr><td><label for='RutHuesped2'>Rut Huesped 2</label></td><td><input name='txtRut2' type='text' requiered/></td></tr>\n"
            + "                             <tr><td><label for='FechaIngreso'>Fecha Ingreso</label></td><td><input name='txtFecha' type='date' required/></td></tr>\n"
            + "                             <tr><td></td><td><input type='submit' value='Registrar' id=enviar required/></td></tr>\n"
            + "                             </form></table>";

    public static String formRenderHuesped = "<p>Seleccione que tipo de habitación registra el Huesped</p>\n"
            + "                <form id='comHuesped' method='post'>\n"
            + "                    <label>Single</label><input name='rbcheck' type='radio' value='1'/></br>\n"
            + "                    <label>Doble</label><input name='rbcheck' type='radio' value='2'/></br>\n"
            + "                    <label>Presidencial</label><input name='rbcheck' type='radio' value='3'/></br>\n"
            + "                    <p><input type='submit' value='Enviar'></p>\n"
            + "                </form>";
    public static String selectRegistroHuesped = "<select>\n"
            + "                    <% for(Habitaciones aux: Habitaciones.habitaciones){\n"
            + "                        out.println(\"<option value='\"+ aux.getNumeroHabitacion()+ \"'\" + \">\" + aux.getNumeroHabitacion() + \"</option>\");\n"
            + "                    }%>\n"
            + "                </select>";
    public static String Cotizacion
            = " <h1>Cotización</h1>\n"
            + "<p>Ingrese los datos para registrar la cotización:</p>"
            + "<form method='post'>"
            + "<label>Tipo Habitación:</br></label>"
            + "<select name= 'tipoH'>"
            + "<option value='20000'>Single</option>"
            + "<option value='50000'>Doble</option>"
            + "<option value='150000'>PentHouse</option>"
            + "</select>"
            + "</br>"
            + "<label>Cantidad de Días:</br></label>"
            + "<select name= 'dias'>"
            + "<option value='1'>1</option>"
            + "<option value='2'>2</option>"
            + "<option value='3'>3</option>"
            + "<option value='4'>4</option>"
            + "<option value='5'>5</option>"
            + "<option value='6'>6</option>"
            + "<option value='7'>7</option>"
            + "<option value='8'>8</option>"
            + "<option value='9'>9</option>"
            + "<option value='10'>10</option>"
            + "</select></br>"
            + "<p>"
            + " <input type='submit' value='Cotizar'/></br>"
            + "</p>"
            + "</form>";

    public static String infor = "                <h3>Uso de las tecnologías JSP (JavaServer Pages)</h3>\n"
            + "                \n"
            + "                <p>Las tecnologías JaveServer Pages (JSP) nos permiten crear contenido web que contengan componentes estáticos y dinámicos. Las tecnologías JSP permiten obtener todas las capacidades de Java Servlet entregando un acercamiento mas natural para crear contenido estático.</p>\n"
            + "                <h4>Que es una página JSP?</h4>\n"
            + "                <p>Una página JSP es un documento de texto que contiene dos tipos de texto: datos estáticos, que se pueden expresar en cualquier formato basado en texto (como HTML, SVG, WML y XML), y elementos JSP, que construyen contenido dinámico.</p>\n"
            + "                <p>La extensión recomendada para la fuente de una página JSP es .jsp. La página se puede componer de un archivo principal que incluye otros archivos, que pueden contener una pagina JSP completa o un fragmento. La extensión recomendada para un archivo fuente de una página JSP es .jspf</p>\n"
            + "                <p>Los elementos JSP es una página JSP puede ser expresada en dos sintaxis. estándar y XML, cada archivo puede usar sólo una sintaxis. Una página JSP en sintaxis XML es un documento XML y puede ser manipulado por herramientas y API's para documentos XML.</p>\n"
            + "                <h4>La construcción de una página JSP se compone de los siguientes elementos:</h4>\n"
            + "                <ul>\n"
            + "                    <li><p>Un directivo de página (<%pagina...%>) establece el tipo de contenido retornado por la página.</p></li>\n"
            + "                    <li><p>Directivas para la Tag Library (<%tablib...%>) importa librerias personalizadas.</p></li>\n"
            + "                    <li><p>jsp:useBean es un elemento estándar que crea un objeto que contiene una colección local e inicializa un identificador que apunta a ese objeto.</p></li>\n"
            + "                    <li><p>Lenguaje de expresiones para expresiones JSP (${}) recupera el valor de las propiedades del objeto. Los valores son usador para establecer un atributo personalizado y crear contenido dinámico.</p></li>\n"
            + "                    <li><p>Tags personalizados establecen variables (c:set), itera sobre una colección de nombres locales (c:forEach), e inserta texto HTML de manera condicionada en la respuesta (c:if,c:choose, c:when, c:otherwise).</p></li>\n"
            + "                    <li><p>jsp:setProperty es otro elemento estandar que establece el valor de la propiedad de un objeto.</p></li>\n"
            + "                    <li><p>Una funcion (f:equals) testea la calidad de un atriuto y el ítem actual de una colección. (Un operador == es usualmente utilizado para testear la calidad.</p></li>\n"
            + "                </ul>";

}
