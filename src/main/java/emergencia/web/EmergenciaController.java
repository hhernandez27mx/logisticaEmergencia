package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Emergencia;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "emergencias", formBackingObject = Emergencia.class)
@RequestMapping("/emergencias")
@Controller
public class EmergenciaController {
}
