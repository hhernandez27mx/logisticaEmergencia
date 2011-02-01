package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Column;
import emergencia.entidad.EnumSexo;
import javax.persistence.Enumerated;
import emergencia.entidad.Profesion;
import javax.persistence.ManyToOne;
import emergencia.entidad.Direccion;

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

    @NotNull
    @Column(name = "apellido_paterno")
    private String apellidoPaterno;

    @NotNull
    @Column(name = "apellido_materno")
    private String apellidoMaterno;

    @NotNull
    private String facebook;

    @Column(name = "foto")
    private byte[] foto;

    @NotNull
    @Enumerated
    private EnumSexo sexo;

    @NotNull
    @OneToOne
    private Profesion profesion;

    @NotNull
    @ManyToOne
    private Direccion domicilioParticular;

    @OneToOne
    private Direccion domicilioLaboral;

    @Column(name = "telefono_particular")
    private String telefonoParticular;

    @Column(name = "telefono_trabajo")
    private String telefonoTrabajo;

    @Column(name = "num_celular")
    private String numCelular;
}
