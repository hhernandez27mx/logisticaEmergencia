// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import java.lang.String;

privileged aspect Profesion_Roo_ToString {
    
    public String Profesion.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("IdProfesion: ").append(getIdProfesion()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}