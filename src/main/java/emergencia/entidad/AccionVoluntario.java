package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import emergencia.entidad.Emergencia;
import javax.persistence.OneToOne;
import emergencia.entidad.Voluntario;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idAccionVol")
public class AccionVoluntario {

    @NotNull
    @Size(max = 2000)
    private String comentarios;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date fechaInicio;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date fechaFin;

    @OneToOne
    private Emergencia emergencia;

    @NotNull
    @OneToOne
    private Voluntario voluntario;
}
