// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.web;

import emergencia.entidad.Persona;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.String;
import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PersonaController_Roo_Controller {
    
    @Autowired
    private GenericConversionService PersonaController.conversionService;
    
    @RequestMapping(method = RequestMethod.POST)
    public String PersonaController.create(@Valid Persona persona, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("persona", persona);
            return "personae/create";
        }
        persona.persist();
        return "redirect:/personae/" + encodeUrlPathSegment(persona.getIdPersona().toString(), request);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PersonaController.createForm(Model model) {
        model.addAttribute("persona", new Persona());
        return "personae/create";
    }
    
    @RequestMapping(value = "/{idPersona}", method = RequestMethod.GET)
    public String PersonaController.show(@PathVariable("idPersona") Integer idPersona, Model model) {
        model.addAttribute("persona", Persona.findPersona(idPersona));
        model.addAttribute("itemId", idPersona);
        return "personae/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PersonaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("personae", Persona.findPersonaEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Persona.countPersonae() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("personae", Persona.findAllPersonae());
        }
        return "personae/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PersonaController.update(@Valid Persona persona, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("persona", persona);
            return "personae/update";
        }
        persona.merge();
        return "redirect:/personae/" + encodeUrlPathSegment(persona.getIdPersona().toString(), request);
    }
    
    @RequestMapping(value = "/{idPersona}", params = "form", method = RequestMethod.GET)
    public String PersonaController.updateForm(@PathVariable("idPersona") Integer idPersona, Model model) {
        model.addAttribute("persona", Persona.findPersona(idPersona));
        return "personae/update";
    }
    
    @RequestMapping(value = "/{idPersona}", method = RequestMethod.DELETE)
    public String PersonaController.delete(@PathVariable("idPersona") Integer idPersona, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        Persona.findPersona(idPersona).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personae?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    Converter<Persona, String> PersonaController.getPersonaConverter() {
        return new Converter<Persona, String>() {
            public String convert(Persona persona) {
                return new StringBuilder().append(persona.getLocacion()).append(" ").append(persona.getCorreo()).append(" ").append(persona.getPerfil()).toString();
            }
        };
    }
    
    @PostConstruct
    void PersonaController.registerConverters() {
        conversionService.addConverter(getPersonaConverter());
    }
    
    @RequestMapping(value = "/{idPersona}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public String PersonaController.showJson(@PathVariable("idPersona") Integer idPersona) {
        return Persona.findPersona(idPersona).toJson();
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> PersonaController.createFromJson(@RequestBody String json) {
        Persona.fromJsonToPersona(json).persist();
        return new ResponseEntity<String>("Persona created", HttpStatus.CREATED);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public String PersonaController.listJson() {
        return Persona.toJsonArray(Persona.findAllPersonae());
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> PersonaController.createFromJsonArray(@RequestBody String json) {
        for (Persona persona: Persona.fromJsonArrayToPersonae(json)) {
            persona.persist();
        }
        return new ResponseEntity<String>("Persona created", HttpStatus.CREATED);
    }
    
    private String PersonaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
        String enc = request.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
