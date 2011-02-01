package emergencia.entidad;

import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;

@RooJavaBean
@RooToString
@RooEntity(identifierField = "idProfesion", identifierColumn = "id_profesion")
public class Profesion {
	@NotNull
	String nombre;
	
}
