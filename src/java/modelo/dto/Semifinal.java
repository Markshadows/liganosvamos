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
@Table(name = "semifinal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Semifinal.findAll", query = "SELECT s FROM Semifinal s")
    , @NamedQuery(name = "Semifinal.findById", query = "SELECT s FROM Semifinal s WHERE s.id = :id")
    , @NamedQuery(name = "Semifinal.findByJustificativo", query = "SELECT s FROM Semifinal s WHERE s.justificativo = :justificativo")
    , @NamedQuery(name = "Semifinal.findByFecha", query = "SELECT s FROM Semifinal s WHERE s.fecha = :fecha")
    , @NamedQuery(name = "Semifinal.findByFechaExtra", query = "SELECT s FROM Semifinal s WHERE s.fechaExtra = :fechaExtra")
    , @NamedQuery(name = "Semifinal.findByTercero", query = "SELECT s FROM Semifinal s WHERE s.tercero = :tercero")})
public class Semifinal implements Serializable {

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
    @Basic(optional = false)
    @NotNull
    @Column(name = "tercero")
    private int tercero;
    @JoinColumn(name = "ganador", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Equipo ganador;
    @JoinColumn(name = "perdedor", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Equipo perdedor;

    public Semifinal() {
    }

    public Semifinal(Integer id) {
        this.id = id;
    }

    public Semifinal(Integer id, Date fecha, int tercero) {
        this.id = id;
        this.fecha = fecha;
        this.tercero = tercero;
    }

    public Semifinal(Date fecha, Equipo ganador, Equipo perdedor) {
        this.fecha = fecha;
        this.ganador = ganador;
        this.perdedor = perdedor;
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

    public int getTercero() {
        return tercero;
    }

    public void setTercero(int tercero) {
        this.tercero = tercero;
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
        if (!(object instanceof Semifinal)) {
            return false;
        }
        Semifinal other = (Semifinal) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dto.Semifinal[ id=" + id + " ]";
    }
    
}
