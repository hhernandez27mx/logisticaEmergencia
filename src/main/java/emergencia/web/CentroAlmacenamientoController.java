package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.CentroAlmacenamiento;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "centroalmacenamientoes", formBackingObject = CentroAlmacenamiento.class)
@RequestMapping("/centroalmacenamientoes")
@Controller
public class CentroAlmacenamientoController {
}
