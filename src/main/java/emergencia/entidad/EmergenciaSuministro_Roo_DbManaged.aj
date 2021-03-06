// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.Emergencia;
import emergencia.entidad.Suministro;
import java.lang.Integer;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect EmergenciaSuministro_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_emergencia", referencedColumnName = "id_emergencia")
    private Emergencia EmergenciaSuministro.emergencia;
    
    @ManyToOne
    @JoinColumn(name = "id_suministro", referencedColumnName = "id_suministro")
    private Suministro EmergenciaSuministro.suministro;
    
    @Column(name = "cantidad")
    @NotNull
    private Integer EmergenciaSuministro.cantidad;
    
    public Emergencia EmergenciaSuministro.getEmergencia() {
        return this.emergencia;
    }
    
    public void EmergenciaSuministro.setEmergencia(Emergencia emergencia) {
        this.emergencia = emergencia;
    }
    
    public Suministro EmergenciaSuministro.getSuministro() {
        return this.suministro;
    }
    
    public void EmergenciaSuministro.setSuministro(Suministro suministro) {
        this.suministro = suministro;
    }
    
    public Integer EmergenciaSuministro.getCantidad() {
        return this.cantidad;
    }
    
    public void EmergenciaSuministro.setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
}
