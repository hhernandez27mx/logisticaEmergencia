package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Direccion;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "direccions", formBackingObject = Direccion.class)
@RequestMapping("/direccions")
@Controller
public class DireccionController {
}
