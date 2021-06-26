package modelo.dto;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Administrador;
import modelo.dto.Equipo;
import modelo.dto.Tipo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:01")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> estado;
    public static volatile SingularAttribute<Usuario, Tipo> tipo;
    public static volatile ListAttribute<Usuario, Administrador> administradorList;
    public static volatile ListAttribute<Usuario, Equipo> equipoList;
    public static volatile SingularAttribute<Usuario, String> contrasena;
    public static volatile SingularAttribute<Usuario, Integer> id;
    public static volatile SingularAttribute<Usuario, String> nombre;

}