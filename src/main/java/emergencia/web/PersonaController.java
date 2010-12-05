package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Persona;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "personae", formBackingObject = Persona.class)
@RequestMapping("/personae")
@Controller
public class PersonaController {
}
