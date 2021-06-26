package modelo.dto;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:01")
@StaticMetamodel(Jugador.class)
public class Jugador_ { 

    public static volatile SingularAttribute<Jugador, String> correo;
    public static volatile SingularAttribute<Jugador, Equipo> equipo;
    public static volatile SingularAttribute<Jugador, String> nombreApp;
    public static volatile SingularAttribute<Jugador, Integer> id;
    public static volatile SingularAttribute<Jugador, Integer> edad;

}