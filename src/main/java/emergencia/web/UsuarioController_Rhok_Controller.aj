// 
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.web;


import org.springframework.core.convert.converter.Converter;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Collection;

import javax.annotation.PostConstruct;

import emergencia.entidad.Estado;
import emergencia.entidad.Municipio;


privileged aspect UsuarioController_Rhok_Controller {
    
	
    @ModelAttribute("estados")
    public Collection<Estado> UsuarioController.llenaEstados() {
        return Estado.findAllEstadoes();
    }
    
    Converter<Estado, String> UsuarioController.getEstadoConverter() {
        return new Converter<Estado, String>() {
            public String convert(Estado e) {
                return e.getNombre();
            }
        };
    }
    
    @RequestMapping("/buscaMunicipio")
    @ResponseBody
    public String UsuarioController.buscaJson(@RequestParam(value="estado")Long estado,@RequestParam(value="term",required=false)String term ) 
    {
    	System.out.println(estado+" "+term);
    	if(term==null || term.equals(""))
    		term="%";
    	else
    	  	term="%"+term+"%";	
        return Municipio.toJsonArray(Municipio.findLikeNombreMunicipios(term, estado) );
    }
    
    @PostConstruct
    void UsuarioController.registerConverters1() {
        conversionService.addConverter(getEstadoConverter());
       // conversionService.addConverter(getPerfilConverter());
        ///conversionService.addConverter(getUsuarioConverter());
    }
  
}
