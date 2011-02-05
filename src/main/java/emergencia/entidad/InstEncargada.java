package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import emergencia.entidad.Usuario;
import javax.validation.constraints.NotNull;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "inst_encargada", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class InstEncargada {

    @NotNull
    @OneToOne
    private Usuario reponsable;
}
