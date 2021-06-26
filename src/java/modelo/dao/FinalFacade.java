/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import modelo.dto.Final;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author M_arc
 */
@Stateless
public class FinalFacade extends AbstractFacade<Final> {

    @PersistenceContext(unitName = "LigaNosVamosPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FinalFacade() {
        super(Final.class);
    }
    
}
