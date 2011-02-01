package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.beans.factory.annotation.Value;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooEntity(versionField = "version", table = "suministro", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class Suministro {

    @Value("0")
    private Integer radio;

    @NotNull
    private String categoria;
    
    @NotNull
    private String nombre;
}
