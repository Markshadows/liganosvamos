/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.List;
import modelo.dto.Equipo;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author M_arc
 */
@Stateless
public class EquipoFacade extends AbstractFacade<Equipo> {

    @PersistenceContext(unitName = "LigaNosVamosPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EquipoFacade() {
        super(Equipo.class);
    }

    public List<Equipo> equiposActivos() {

        Query query = em.createQuery(
                "SELECT a FROM Equipo a JOIN a.usuario u WHERE u.estado = 'Activo'");
        return query.getResultList();
    }

    public List<Equipo> equiposPorLiga(Object idLiga) {

        Query query = em.createQuery(
                "SELECT a FROM Equipo a WHERE a.liga.id = " + idLiga);
        return query.getResultList();
    }

    public Equipo miEquipo(Object idUsuario) {
        Equipo test;
        Query query = em.createQuery("SELECT u FROM Equipo u WHERE u.usuario.id = :idUsuario");
        query.setParameter("idUsuario", idUsuario);
        if (query.getResultList().isEmpty()) {
            test = null;
        } else {
            test = (Equipo) query.getSingleResult();
        }
        return test;
    }

}
