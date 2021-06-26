package modelo.dto;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:01")
@StaticMetamodel(Octavos.class)
public class Octavos_ { 

    public static volatile SingularAttribute<Octavos, Date> fecha;
    public static volatile SingularAttribute<Octavos, String> justificativo;
    public static volatile SingularAttribute<Octavos, Date> fechaExtra;
    public static volatile SingularAttribute<Octavos, Equipo> ganador;
    public static volatile SingularAttribute<Octavos, Integer> id;
    public static volatile SingularAttribute<Octavos, Equipo> perdedor;

}