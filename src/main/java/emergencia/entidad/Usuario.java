package emergencia.entidad;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import emergencia.entidad.Perfil;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.OneToOne;

import java.util.Date;
import java.util.Set;
import java.util.HashSet;

import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@RooJavaBean
@RooToString
@RooDbManaged(automaticallyDelete = true)
@RooEntity(versionField = "version", table = "usuario")
public class Usuario {

	
    @NotNull
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Perfil> perfiles = new HashSet<Perfil>();
    
    @NotNull
    private String nombre;
    @NotNull
    private String contrasena;

    @NotNull
    private String correo;

 

    @Size(max = 150)
    private String twitter;

    @NotNull
    @Column(name = "apellido_paterno")
    private String apellidoPaterno;

    @NotNull
    @Column(name = "apellido_materno")
    private String apellidoMaterno;

   
    private String facebook;

  
 
    @Enumerated
    private EnumSexo sexo;

   
    @ManyToOne
    private Direccion domicilioParticular;

    
}