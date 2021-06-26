package modelo.dto;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Equipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Liga.class)
public class Liga_ { 

    public static volatile SingularAttribute<Liga, String> estado;
    public static volatile SingularAttribute<Liga, Date> fInicio;
    public static volatile ListAttribute<Liga, Equipo> equipoList;
    public static volatile SingularAttribute<Liga, Date> fFin;
    public static volatile SingularAttribute<Liga, Integer> id;
    public static volatile SingularAttribute<Liga, String> nombre;
    public static volatile SingularAttribute<Liga, String> juego;

}