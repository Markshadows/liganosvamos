package modelo.dto;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Cuartos.class)
public class Cuartos_ { 

    public static volatile SingularAttribute<Cuartos, Date> fecha;
    public static volatile SingularAttribute<Cuartos, String> justificativo;
    public static volatile SingularAttribute<Cuartos, Date> fechaExtra;
    public static volatile SingularAttribute<Cuartos, Equipo> ganador;
    public static volatile SingularAttribute<Cuartos, Integer> id;
    public static volatile SingularAttribute<Cuartos, Equipo> perdedor;

}