package emergencia.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import emergencia.entidad.Perfil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "perfils", formBackingObject = Perfil.class)
@RequestMapping("/perfils")
@Controller
public class PerfilController {
}
