package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.EmergenciaSuministro;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "emergenciasuministroes", formBackingObject = EmergenciaSuministro.class)
@RequestMapping("/emergenciasuministroes")
@Controller
public class EmergenciaSuministroController {
}
