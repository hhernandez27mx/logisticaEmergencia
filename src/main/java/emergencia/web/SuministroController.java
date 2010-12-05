package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Suministro;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "suministroes", formBackingObject = Suministro.class)
@RequestMapping("/suministroes")
@Controller
public class SuministroController {
}
