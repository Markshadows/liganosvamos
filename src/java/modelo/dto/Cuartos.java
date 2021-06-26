/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dto;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author M_arc
 */
@Entity
@Table(name = "cuartos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cuartos.findAll", query = "SELECT c FROM Cuartos c")
    , @NamedQuery(name = "Cuartos.findById", query = "SELECT c FROM Cuartos c WHERE c.id = :id")
    , @NamedQuery(name = "Cuartos.findByJustificativo", query = "SELECT c FROM Cuartos c WHERE c.justificativo = :justificativo")
    , @NamedQuery(name = "Cuartos.findByFecha", query = "SELECT c FROM Cuartos c WHERE c.fecha = :fecha")
    , @NamedQuery(name = "Cuartos.findByFechaExtra", query = "SELECT c FROM Cuartos c WHERE c.fechaExtra = :fechaExtra")})
public class Cuartos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 200)
    @Column(name = "justificativo")
    private String justificativo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "fecha_extra")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaExtra;
    @JoinColumn(name = "ganador", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Equipo ganador;
    @JoinColumn(name = "perdedor", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Equipo perdedor;

    public Cuartos() {
    }

    public Cuartos(Integer id) {
        this.id = id;
    }

    public Cuartos(Integer id, Date fecha) {
        this.id = id;
        this.fecha = fecha;
    }

    public Cuartos(Equipo ganador, Equipo perdedor, Date fecha) {

        this.ganador = ganador;
        this.perdedor = perdedor;
        this.fecha = fecha;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJustificativo() {
        return justificativo;
    }

    public void setJustificativo(String justificativo) {
        this.justificativo = justificativo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Date getFechaExtra() {
        return fechaExtra;
    }

    public void setFechaExtra(Date fechaExtra) {
        this.fechaExtra = fechaExtra;
    }

    public Equipo getGanador() {
        return ganador;
    }

    public void setGanador(Equipo ganador) {
        this.ganador = ganador;
    }

    public Equipo getPerdedor() {
        return perdedor;
    }

    public void setPerdedor(Equipo perdedor) {
        this.perdedor = perdedor;
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
        if (!(object instanceof Cuartos)) {
            return false;
        }
        Cuartos other = (Cuartos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dto.Cuartos[ id=" + id + " ]";
    }

}
