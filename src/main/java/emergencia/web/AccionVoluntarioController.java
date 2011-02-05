package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.AccionVoluntario;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "accionvoluntarios", formBackingObject = AccionVoluntario.class)
@RequestMapping("/accionvoluntarios")
@Controller
public class AccionVoluntarioController {
}
