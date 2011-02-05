package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Profesion;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "profesions", formBackingObject = Profesion.class)
@RequestMapping("/profesions")
@Controller
public class ProfesionController {
}
