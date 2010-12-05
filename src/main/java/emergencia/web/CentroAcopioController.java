package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.CentroAcopio;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "centroacopios", formBackingObject = CentroAcopio.class)
@RequestMapping("/centroacopios")
@Controller
public class CentroAcopioController {
}
