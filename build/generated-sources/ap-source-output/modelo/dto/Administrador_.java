package modelo.dto;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.dto.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-27T11:27:00")
@StaticMetamodel(Administrador.class)
public class Administrador_ { 

    public static volatile SingularAttribute<Administrador, String> nombreApellido;
    public static volatile SingularAttribute<Administrador, String> correo;
    public static volatile SingularAttribute<Administrador, Usuario> usuario;
    public static volatile SingularAttribute<Administrador, Integer> id;

}