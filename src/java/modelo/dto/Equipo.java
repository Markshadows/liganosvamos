/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author M_arc
 */
@Entity
@Table(name = "equipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Equipo.findAll", query = "SELECT e FROM Equipo e")
    , @NamedQuery(name = "Equipo.findById", query = "SELECT e FROM Equipo e WHERE e.id = :id")
    , @NamedQuery(name = "Equipo.findByNombre", query = "SELECT e FROM Equipo e WHERE e.nombre = :nombre")
    , @NamedQuery(name = "Equipo.findByCorreo", query = "SELECT e FROM Equipo e WHERE e.correo = :correo")
    , @NamedQuery(name = "Equipo.findByRondaActual", query = "SELECT e FROM Equipo e WHERE e.rondaActual = :rondaActual")
    , @NamedQuery(name = "Equipo.findBySrc", query = "SELECT e FROM Equipo e WHERE e.src = :src")})
public class Equipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "correo")
    private String correo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "ronda_actual")
    private String rondaActual;
    @Size(max = 200)
    @Column(name = "src")
    private String src;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "equipo")
    private List<Jugador> jugadorList;
    @JoinColumn(name = "liga", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Liga liga;
    @JoinColumn(name = "usuario", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario usuario;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ganador")
    private List<Final> finalList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perdedor")
    private List<Final> finalList1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ganador")
    private List<Cuartos> cuartosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perdedor")
    private List<Cuartos> cuartosList1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ganador")
    private List<Octavos> octavosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perdedor")
    private List<Octavos> octavosList1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ganador")
    private List<Semifinal> semifinalList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perdedor")
    private List<Semifinal> semifinalList1;

    public Equipo() {
    }

    public Equipo(Integer id) {
        this.id = id;
    }

    public Equipo(Integer id, String nombre, String correo, String rondaActual) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.rondaActual = rondaActual;
    }

    public Equipo(Integer id, String nombre, String correo, String rondaActual, Liga liga, Usuario usuario, String src) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.rondaActual = rondaActual;
        this.liga = liga;
        this.usuario = usuario;
        this.src = src;
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getRondaActual() {
        return rondaActual;
    }

    public void setRondaActual(String rondaActual) {
        this.rondaActual = rondaActual;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    @XmlTransient
    public List<Jugador> getJugadorList() {
        return jugadorList;
    }

    public void setJugadorList(List<Jugador> jugadorList) {
        this.jugadorList = jugadorList;
    }

    public Liga getLiga() {
        return liga;
    }

    public void setLiga(Liga liga) {
        this.liga = liga;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @XmlTransient
    public List<Final> getFinalList() {
        return finalList;
    }

    public void setFinalList(List<Final> finalList) {
        this.finalList = finalList;
    }

    @XmlTransient
    public List<Final> getFinalList1() {
        return finalList1;
    }

    public void setFinalList1(List<Final> finalList1) {
        this.finalList1 = finalList1;
    }

    @XmlTransient
    public List<Cuartos> getCuartosList() {
        return cuartosList;
    }

    public void setCuartosList(List<Cuartos> cuartosList) {
        this.cuartosList = cuartosList;
    }

    @XmlTransient
    public List<Cuartos> getCuartosList1() {
        return cuartosList1;
    }

    public void setCuartosList1(List<Cuartos> cuartosList1) {
        this.cuartosList1 = cuartosList1;
    }

    @XmlTransient
    public List<Octavos> getOctavosList() {
        return octavosList;
    }

    public void setOctavosList(List<Octavos> octavosList) {
        this.octavosList = octavosList;
    }

    @XmlTransient
    public List<Octavos> getOctavosList1() {
        return octavosList1;
    }

    public void setOctavosList1(List<Octavos> octavosList1) {
        this.octavosList1 = octavosList1;
    }

    @XmlTransient
    public List<Semifinal> getSemifinalList() {
        return semifinalList;
    }

    public void setSemifinalList(List<Semifinal> semifinalList) {
        this.semifinalList = semifinalList;
    }

    @XmlTransient
    public List<Semifinal> getSemifinalList1() {
        return semifinalList1;
    }

    public void setSemifinalList1(List<Semifinal> semifinalList1) {
        this.semifinalList1 = semifinalList1;
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
        if (!(object instanceof Equipo)) {
            return false;
        }
        Equipo other = (Equipo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dto.Equipo[ id=" + id + " ]";
    }
    
}
