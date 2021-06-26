
package modelo.dao;

import java.util.List;
import modelo.dto.Liga;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless
public class LigaFacade extends AbstractFacade<Liga> {

    @PersistenceContext(unitName = "LigaNosVamosPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LigaFacade() {
        super(Liga.class);
    }
    
    public List<Liga> ligasActivas() {
        
        Query query = em.createQuery(
                "SELECT a FROM Liga a WHERE a.estado = 'Activo'");
        return query.getResultList();
    }
    
}
