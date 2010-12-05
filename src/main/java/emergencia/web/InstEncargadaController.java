package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.InstEncargada;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "instencargadas", formBackingObject = InstEncargada.class)
@RequestMapping("/instencargadas")
@Controller
public class InstEncargadaController {
}
