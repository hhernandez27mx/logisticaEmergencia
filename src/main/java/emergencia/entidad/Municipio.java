package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import emergencia.entidad.Estado;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idMunicipio", identifierColumn = "id_municipio")
public class Municipio {

    private String nombre;

    @OneToOne
    private Estado idEstado;
}
