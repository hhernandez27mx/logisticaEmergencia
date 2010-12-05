package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.CaSuministro;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "casuministroes", formBackingObject = CaSuministro.class)
@RequestMapping("/casuministroes")
@Controller
public class CaSuministroController {
}
