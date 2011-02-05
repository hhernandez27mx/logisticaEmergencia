package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import emergencia.entidad.Emergencia;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import emergencia.entidad.Suministro;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idEmerReqSum")
public class EmergenciaReqSuministros {

    @NotNull
    @ManyToOne
    private Emergencia emergencia;

    @NotNull
    private Integer cantidad;

    @NotNull
    @ManyToOne
    private Suministro suministro;
}
