// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.Usuario;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Usuario_Roo_Json {
    
    public String Usuario.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Usuario Usuario.fromJsonToUsuario(String json) {
        return new JSONDeserializer<Usuario>().use(null, Usuario.class).deserialize(json);
    }
    
    public static String Usuario.toJsonArray(Collection<Usuario> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Usuario> Usuario.fromJsonArrayToUsuarios(String json) {
        return new JSONDeserializer<List<Usuario>>().use(null, ArrayList.class).use("values", Usuario.class).deserialize(json);
    }
    
}
