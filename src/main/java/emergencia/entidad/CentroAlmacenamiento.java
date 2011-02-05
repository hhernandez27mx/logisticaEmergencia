package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import emergencia.entidad.Direccion;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import emergencia.entidad.Emergencia;

@RooJavaBean
@RooToString
@RooEntity
public class CentroAlmacenamiento {

    @NotNull
    @ManyToOne
    private Direccion direccion;

    @NotNull
    @ManyToOne
    private Emergencia emergencia;
}
