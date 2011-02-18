package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import emergencia.entidad.Estado;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idMunicipio", identifierColumn = "id_municipio")
@RooJson
public class Municipio {

	@NotNull
    private String nombre;
    
    private String cve_municipio;
    @OneToOne
    private Estado idEstado;
}
