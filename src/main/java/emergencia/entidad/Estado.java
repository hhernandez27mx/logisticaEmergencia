package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idEstado", identifierColumn = "id_estado")
@RooJson
public class Estado {

    @NotNull
    private String nombre;

    @Column(name = "nombre_abreviado")
    private String nombreAbreviado;
}
