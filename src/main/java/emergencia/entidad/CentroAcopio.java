package emergencia.entidad;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import java.util.Set;
import emergencia.entidad.Suministro;
import java.util.HashSet;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;
import emergencia.entidad.InstEncargada;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooEntity(versionField = "version", table = "centro_acopio", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class CentroAcopio {

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Suministro> recSuministros = new HashSet<Suministro>();

    @NotNull
    @ManyToOne
    private InstEncargada instEncargada;
    
    @NotNull
    @ManyToOne
    private Direccion direccion;
}
