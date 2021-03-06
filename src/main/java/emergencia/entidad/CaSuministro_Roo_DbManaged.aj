// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.CentroAcopio;
import emergencia.entidad.Suministro;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect CaSuministro_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_centroacopio", referencedColumnName = "id_centroacopio")
    private CentroAcopio CaSuministro.centroAcopio;
    
    @ManyToOne
    @JoinColumn(name = "id_suministro", referencedColumnName = "id_suministro")
    private Suministro CaSuministro.suministro;
    
    public CentroAcopio CaSuministro.getCentroAcopio() {
        return this.centroAcopio;
    }
    
    public void CaSuministro.setCentroAcopio(CentroAcopio centroAcopio) {
        this.centroAcopio = centroAcopio;
    }
    
    public Suministro CaSuministro.getSuministro() {
        return this.suministro;
    }
    
    public void CaSuministro.setSuministro(Suministro suministro) {
        this.suministro = suministro;
    }
    
}
