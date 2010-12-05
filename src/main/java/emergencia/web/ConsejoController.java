package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Consejo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "consejoes", formBackingObject = Consejo.class)
@RequestMapping("/consejoes")
@Controller
public class ConsejoController {
}
