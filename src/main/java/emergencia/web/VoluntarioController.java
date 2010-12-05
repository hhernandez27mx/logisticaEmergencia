package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Voluntario;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "voluntarios", formBackingObject = Voluntario.class)
@RequestMapping("/voluntarios")
@Controller
public class VoluntarioController {
}
