package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idPerfil", identifierColumn = "id_perfil", identifierType = Integer.class)
public class Perfil {

    @NotNull
    @Column(unique = true)
    private String nombre;
}
