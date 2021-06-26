package modelo.dto;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Cuartos;
import modelo.dto.Final;
import modelo.dto.Jugador;
import modelo.dto.Liga;
import modelo.dto.Octavos;
import modelo.dto.Semifinal;
import modelo.dto.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Equipo.class)
public class Equipo_ { 

    public static volatile SingularAttribute<Equipo, String> rondaActual;
    public static volatile ListAttribute<Equipo, Jugador> jugadorList;
    public static volatile ListAttribute<Equipo, Cuartos> cuartosList1;
    public static volatile ListAttribute<Equipo, Final> finalList1;
    public static volatile SingularAttribute<Equipo, String> src;
    public static volatile SingularAttribute<Equipo, Liga> liga;
    public static volatile ListAttribute<Equipo, Semifinal> semifinalList1;
    public static volatile SingularAttribute<Equipo, String> nombre;
    public static volatile ListAttribute<Equipo, Octavos> octavosList;
    public static volatile ListAttribute<Equipo, Octavos> octavosList1;
    public static volatile SingularAttribute<Equipo, String> correo;
    public static volatile ListAttribute<Equipo, Cuartos> cuartosList;
    public static volatile SingularAttribute<Equipo, Usuario> usuario;
    public static volatile SingularAttribute<Equipo, Integer> id;
    public static volatile ListAttribute<Equipo, Semifinal> semifinalList;
    public static volatile ListAttribute<Equipo, Final> finalList;

}