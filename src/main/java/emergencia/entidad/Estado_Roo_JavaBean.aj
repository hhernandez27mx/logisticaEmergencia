// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import java.lang.String;

privileged aspect Estado_Roo_JavaBean {
    
    public String Estado.getNombre() {
        return this.nombre;
    }
    
    public void Estado.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}