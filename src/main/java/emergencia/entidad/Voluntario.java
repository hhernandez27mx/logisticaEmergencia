package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import javax.validation.constraints.NotNull;
import org.springframework.mail.MailSender;
import org.springframework.beans.factory.annotation.Autowired;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "voluntario", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class Voluntario {

    @NotNull
    private String nombre;

    @NotNull
    @Size(max = 200)
    private String correo;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date fechaNacimiento;

    
    @Size(max = 150)
    private String twitter;
}
