// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.web;

import emergencia.entidad.CaSuministro;
import emergencia.entidad.CentroAcopio;
import emergencia.entidad.Suministro;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.String;
import java.util.Collection;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CaSuministroController_Roo_Controller {
    
    @Autowired
    private GenericConversionService CaSuministroController.conversionService;
    
    @RequestMapping(method = RequestMethod.POST)
    public String CaSuministroController.create(@Valid CaSuministro caSuministro, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("caSuministro", caSuministro);
            return "casuministroes/create";
        }
        caSuministro.persist();
        return "redirect:/casuministroes/" + encodeUrlPathSegment(caSuministro.getIdCaSuministro().toString(), request);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String CaSuministroController.createForm(Model model) {
        model.addAttribute("caSuministro", new CaSuministro());
        return "casuministroes/create";
    }
    
    @RequestMapping(value = "/{idCaSuministro}", method = RequestMethod.GET)
    public String CaSuministroController.show(@PathVariable("idCaSuministro") Integer idCaSuministro, Model model) {
        model.addAttribute("casuministro", CaSuministro.findCaSuministro(idCaSuministro));
        model.addAttribute("itemId", idCaSuministro);
        return "casuministroes/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String CaSuministroController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("casuministroes", CaSuministro.findCaSuministroEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) CaSuministro.countCaSuministroes() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("casuministroes", CaSuministro.findAllCaSuministroes());
        }
        return "casuministroes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String CaSuministroController.update(@Valid CaSuministro caSuministro, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("caSuministro", caSuministro);
            return "casuministroes/update";
        }
        caSuministro.merge();
        return "redirect:/casuministroes/" + encodeUrlPathSegment(caSuministro.getIdCaSuministro().toString(), request);
    }
    
    @RequestMapping(value = "/{idCaSuministro}", params = "form", method = RequestMethod.GET)
    public String CaSuministroController.updateForm(@PathVariable("idCaSuministro") Integer idCaSuministro, Model model) {
        model.addAttribute("caSuministro", CaSuministro.findCaSuministro(idCaSuministro));
        return "casuministroes/update";
    }
    
    @RequestMapping(value = "/{idCaSuministro}", method = RequestMethod.DELETE)
    public String CaSuministroController.delete(@PathVariable("idCaSuministro") Integer idCaSuministro, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        CaSuministro.findCaSuministro(idCaSuministro).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/casuministroes?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    @ModelAttribute("centroacopios")
    public Collection<CentroAcopio> CaSuministroController.populateCentroAcopios() {
        return CentroAcopio.findAllCentroAcopios();
    }
    
    @ModelAttribute("suministroes")
    public Collection<Suministro> CaSuministroController.populateSuministroes() {
        return Suministro.findAllSuministroes();
    }
    
    Converter<CentroAcopio, String> CaSuministroController.getCentroAcopioConverter() {
        return new Converter<CentroAcopio, String>() {
            public String convert(CentroAcopio centroAcopio) {
                return new StringBuilder().append(centroAcopio.getFechaInicio()).append(" ").append(centroAcopio.getFechaFin()).toString();
            }
        };
    }
    
    Converter<Suministro, String> CaSuministroController.getSuministroConverter() {
        return new Converter<Suministro, String>() {
            public String convert(Suministro suministro) {
                return new StringBuilder().append(suministro.getNombre()).append(" ").append(suministro.getRadio()).append(" ").append(suministro.getCategoria()).toString();
            }
        };
    }
    
    @PostConstruct
    void CaSuministroController.registerConverters() {
        conversionService.addConverter(getCentroAcopioConverter());
        conversionService.addConverter(getSuministroConverter());
    }
    
    @RequestMapping(value = "/{idCaSuministro}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public String CaSuministroController.showJson(@PathVariable("idCaSuministro") Integer idCaSuministro) {
        return CaSuministro.findCaSuministro(idCaSuministro).toJson();
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> CaSuministroController.createFromJson(@RequestBody String json) {
        CaSuministro.fromJsonToCaSuministro(json).persist();
        return new ResponseEntity<String>("CaSuministro created", HttpStatus.CREATED);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public String CaSuministroController.listJson() {
        return CaSuministro.toJsonArray(CaSuministro.findAllCaSuministroes());
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> CaSuministroController.createFromJsonArray(@RequestBody String json) {
        for (CaSuministro caSuministro: CaSuministro.fromJsonArrayToCaSuministroes(json)) {
            caSuministro.persist();
        }
        return new ResponseEntity<String>("CaSuministro created", HttpStatus.CREATED);
    }
    
    private String CaSuministroController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
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
