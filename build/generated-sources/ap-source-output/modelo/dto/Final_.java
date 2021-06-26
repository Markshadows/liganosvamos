package modelo.dto;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Final.class)
public class Final_ { 

    public static volatile SingularAttribute<Final, Date> fecha;
    public static volatile SingularAttribute<Final, String> justificativo;
    public static volatile SingularAttribute<Final, Date> fechaExtra;
    public static volatile SingularAttribute<Final, Equipo> ganador;
    public static volatile SingularAttribute<Final, Integer> id;
    public static volatile SingularAttribute<Final, Equipo> perdedor;

}