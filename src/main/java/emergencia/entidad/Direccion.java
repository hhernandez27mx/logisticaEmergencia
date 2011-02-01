package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.validation.constraints.NotNull;
import emergencia.entidad.Poblacion;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idDireccion", identifierColumn = "id_direccion", identifierType = Integer.class)
public class Direccion {

    @NotNull
    private String calle;

    @NotNull
    private String numero;

    private String numeroint;

    private String cp;

    @NotNull
    private String colonia;

    @NotNull
    @OneToOne
    private Poblacion poblacion;
}