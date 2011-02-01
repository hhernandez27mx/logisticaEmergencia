package emergencia.entidad;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.json.RooJson;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import emergencia.entidad.Municipio;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooEntity(versionField = "version", table = "poblacion", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class Poblacion {

    @NotNull
    private String nombre;

    @NotNull
    private String latitud;

    @NotNull
    private String longitud;

    @NotNull
    private String altitud;
    
    private int p_total;
    private int p_maculina;
    private int p_femenina;
    private int p_vhabitadas;
    
    @Column(name = "clave_carta")
    private String claveCarta;

    @OneToOne
    private Municipio idMunicipio;
}
