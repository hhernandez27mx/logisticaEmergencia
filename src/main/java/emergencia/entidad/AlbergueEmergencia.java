package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import emergencia.entidad.Direccion;
import javax.validation.constraints.NotNull;
import javax.persistence.OneToOne;
import emergencia.entidad.Emergencia;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idAlbEmer")
public class AlbergueEmergencia {

    @NotNull
    @OneToOne
    private Direccion direccion;

    @NotNull
    @OneToOne
    private Emergencia emergencia;
}
