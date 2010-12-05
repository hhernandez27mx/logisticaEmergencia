// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.Consejo;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Consejo_Roo_Json {
    
    public String Consejo.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Consejo Consejo.fromJsonToConsejo(String json) {
        return new JSONDeserializer<Consejo>().use(null, Consejo.class).deserialize(json);
    }
    
    public static String Consejo.toJsonArray(Collection<Consejo> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Consejo> Consejo.fromJsonArrayToConsejoes(String json) {
        return new JSONDeserializer<List<Consejo>>().use(null, ArrayList.class).use("values", Consejo.class).deserialize(json);
    }
    
}