package Logica;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;
public class HabitaciónDAO {

    public HabitaciónDAO() {
    }

    public static ArrayList<Habitaciones> getListadoPersonas() {
        ArrayList<Habitaciones> lista = new ArrayList<Habitaciones>();
        try {
            BD bd = new BD();
            bd.conectar();
            String query = "SELECT * FROM PERSONA";
            ResultSet result = bd.consulta(query);

            while (result.next()) {
                Habitaciones h = new Habitaciones();
                h.setNumeroHabitacion(result.getString("HB_NUMEROHABITACION"));
                h.setNombre1(result.getString("HB_NOMBRE"));
                h.setRut1(result.getString("HB_RUT"));
                h.setFono1(result.getString("HB_FONO"));
                h.setFecha(result.getString("HB_FECHA"));
                h.setTipo(result.getString("HB_TIPO"));
                lista.add(h);
            }
        } catch (SQLException err) {
            System.out.println("ERROR SQL");
        }
        return lista;
    }

    public void addPersona(Habitaciones h) {        
        
            BD bd = new BD();
            bd.conectar();                        
            String query = "INSERT INTO PERSONA VALUES('" + h.getNumeroHabitacion() + "','" + h.getNombre1() + "','"+h.getRut1()+"','"+h.getFono1()+"','"+h.getTipo()+"')";
            bd.ejecutar(query);
    }
    
    public void deletePersona(String id){
        BD bd = new BD();
        bd.conectar();
        String query = "DELETE FROM PERSONA WHERE id=" + id;
        bd.ejecutar(query);
    }
}
