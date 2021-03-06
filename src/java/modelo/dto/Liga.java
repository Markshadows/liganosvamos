/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author M_arc
 */
@Entity
@Table(name = "liga")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Liga.findAll", query = "SELECT l FROM Liga l")
    , @NamedQuery(name = "Liga.findById", query = "SELECT l FROM Liga l WHERE l.id = :id")
    , @NamedQuery(name = "Liga.findByNombre", query = "SELECT l FROM Liga l WHERE l.nombre = :nombre")
    , @NamedQuery(name = "Liga.findByJuego", query = "SELECT l FROM Liga l WHERE l.juego = :juego")
    , @NamedQuery(name = "Liga.findByFInicio", query = "SELECT l FROM Liga l WHERE l.fInicio = :fInicio")
    , @NamedQuery(name = "Liga.findByFFin", query = "SELECT l FROM Liga l WHERE l.fFin = :fFin")
    , @NamedQuery(name = "Liga.findByEstado", query = "SELECT l FROM Liga l WHERE l.estado = :estado")})
public class Liga implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "juego")
    private String juego;
    @Basic(optional = false)
    @NotNull
    @Column(name = "f_inicio")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fInicio;
    @Basic(optional = false)
    @NotNull
    @Column(name = "f_fin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fFin;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "estado")
    private String estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "liga")
    private List<Equipo> equipoList;

    public Liga() {
    }

    public Liga(Integer id) {
        this.id = id;
    }

    public Liga(Integer id, String nombre, String juego, Date fInicio, Date fFin, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.juego = juego;
        this.fInicio = fInicio;
        this.fFin = fFin;
        this.estado = estado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getJuego() {
        return juego;
    }

    public void setJuego(String juego) {
        this.juego = juego;
    }

    public Date getFInicio() {
        return fInicio;
    }

    public void setFInicio(Date fInicio) {
        this.fInicio = fInicio;
    }

    public Date getFFin() {
        return fFin;
    }

    public void setFFin(Date fFin) {
        this.fFin = fFin;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @XmlTransient
    public List<Equipo> getEquipoList() {
        return equipoList;
    }

    public void setEquipoList(List<Equipo> equipoList) {
        this.equipoList = equipoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Liga)) {
            return false;
        }
        Liga other = (Liga) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dto.Liga[ id=" + id + " ]";
    }
    
}
