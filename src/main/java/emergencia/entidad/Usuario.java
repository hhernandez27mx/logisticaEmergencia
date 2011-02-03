package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import emergencia.entidad.Perfil;
import javax.validation.constraints.NotNull;
import javax.persistence.OneToOne;
import java.util.Set;
import java.util.HashSet;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooDbManaged(automaticallyDelete = true)
@RooEntity(versionField = "version", table = "usuario")
public class Usuario {

    @NotNull
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Perfil> perfiles = new HashSet<Perfil>();
}
