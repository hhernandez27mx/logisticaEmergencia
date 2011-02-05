package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import java.util.Set;

import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import emergencia.entidad.EmergenciaReqSuministros;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "emergencia", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class Emergencia {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "emergencia")
    private Set<EmergenciaReqSuministros> suministrosReq = new HashSet<EmergenciaReqSuministros>();
}
