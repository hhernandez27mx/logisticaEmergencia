package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Poblacion;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "poblacions", formBackingObject = Poblacion.class)
@RequestMapping("/poblacions")
@Controller
public class PoblacionController {
}
