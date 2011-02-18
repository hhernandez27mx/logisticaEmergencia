package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Estado;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "estadoes", formBackingObject = Estado.class)
@RequestMapping("/estadoes")
@Controller
public class EstadoController {
}
