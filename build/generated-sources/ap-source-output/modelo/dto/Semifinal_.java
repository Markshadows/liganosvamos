package modelo.dto;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Semifinal.class)
public class Semifinal_ { 

    public static volatile SingularAttribute<Semifinal, Date> fecha;
    public static volatile SingularAttribute<Semifinal, Integer> tercero;
    public static volatile SingularAttribute<Semifinal, String> justificativo;
    public static volatile SingularAttribute<Semifinal, Date> fechaExtra;
    public static volatile SingularAttribute<Semifinal, Equipo> ganador;
    public static volatile SingularAttribute<Semifinal, Integer> id;
    public static volatile SingularAttribute<Semifinal, Equipo> perdedor;

}