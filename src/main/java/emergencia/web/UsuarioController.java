package emergencia.web;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Usuario;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "usuarios", formBackingObject = Usuario.class)
@RequestMapping("/usuarios")
@Controller
public class UsuarioController {
	
	@Autowired
    private GenericConversionService conversionService;
    
	
}
