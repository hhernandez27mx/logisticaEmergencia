// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import java.lang.String;

privileged aspect Poblacion_Roo_ToString {
    
    public String Poblacion.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Scis: ").append(getScis() == null ? "null" : getScis().size()).append(", ");
        sb.append("Emergencia: ").append(getEmergencia()).append(", ");
        sb.append("InstEncargada: ").append(getInstEncargada()).append(", ");
        sb.append("Lugar: ").append(getLugar()).append(", ");
        sb.append("Dano: ").append(getDano()).append(", ");
        sb.append("Solucion: ").append(getSolucion()).append(", ");
        sb.append("SectorDescriptivo: ").append(getSectorDescriptivo()).append(", ");
        sb.append("NumEvacuados: ").append(getNumEvacuados()).append(", ");
        sb.append("NumRefugiados: ").append(getNumRefugiados()).append(", ");
        sb.append("IdPoblacion: ").append(getIdPoblacion());
        return sb.toString();
    }
    
}