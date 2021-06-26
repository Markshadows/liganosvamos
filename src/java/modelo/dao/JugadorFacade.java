
package modelo.dao;

import java.util.List;
import modelo.dto.Jugador;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless
public class JugadorFacade extends AbstractFacade<Jugador> {

    @PersistenceContext(unitName = "LigaNosVamosPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public JugadorFacade() {
        super(Jugador.class);
    }
    
    public long cantidadJugadores(Object idEquipo) {
        
        Query query = em.createQuery(
                "SELECT count(j) FROM Jugador j WHERE j.equipo.id = "+idEquipo);
        return (long)query.getSingleResult();
    }
    
    public List<Jugador> jugadoresPorEquipo(Object idEquipo) {
        
        Query query = em.createQuery(
                "SELECT j FROM Jugador j WHERE j.equipo.id = "+idEquipo);
        return query.getResultList();
    }
}
