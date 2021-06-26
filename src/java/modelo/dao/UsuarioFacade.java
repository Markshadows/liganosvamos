/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.List;
import modelo.dto.Usuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author M_arc
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {

    @PersistenceContext(unitName = "LigaNosVamosPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }

    public Usuario existeUsuario(String username, String password) {
        Usuario login;
        Query query = em.createQuery("SELECT u FROM Usuario u WHERE u.nombre = :nombre and u.contrasena = :contrasena"
                + " and u.estado = 'Activo'");
        query.setParameter("nombre", username);
        query.setParameter("contrasena", password);
        if (query.getResultList().isEmpty()) {
            login = null;
        } else {
            login = (Usuario) query.getSingleResult();
        }
        return login;
    }
  
}
