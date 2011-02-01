// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.web;

import emergencia.entidad.Direccion;
import emergencia.entidad.Poblacion;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DireccionController_Roo_Controller {
    
    @Autowired
    private GenericConversionService DireccionController.conversionService;
    
    @RequestMapping(method = RequestMethod.POST)
    public String DireccionController.create(@Valid Direccion direccion, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("direccion", direccion);
            return "direccions/create";
        }
        direccion.persist();
        return "redirect:/direccions/" + encodeUrlPathSegment(direccion.getIdDireccion().toString(), request);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String DireccionController.createForm(Model model) {
        model.addAttribute("direccion", new Direccion());
        List dependencies = new ArrayList();
        if (Poblacion.countPoblacions() == 0) {
            dependencies.add(new String[]{"poblacion", "poblacions"});
        }
        model.addAttribute("dependencies", dependencies);
        return "direccions/create";
    }
    
    @RequestMapping(value = "/{idDireccion}", method = RequestMethod.GET)
    public String DireccionController.show(@PathVariable("idDireccion") Integer idDireccion, Model model) {
        model.addAttribute("direccion", Direccion.findDireccion(idDireccion));
        model.addAttribute("itemId", idDireccion);
        return "direccions/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String DireccionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("direccions", Direccion.findDireccionEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Direccion.countDireccions() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("direccions", Direccion.findAllDireccions());
        }
        return "direccions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String DireccionController.update(@Valid Direccion direccion, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("direccion", direccion);
            return "direccions/update";
        }
        direccion.merge();
        return "redirect:/direccions/" + encodeUrlPathSegment(direccion.getIdDireccion().toString(), request);
    }
    
    @RequestMapping(value = "/{idDireccion}", params = "form", method = RequestMethod.GET)
    public String DireccionController.updateForm(@PathVariable("idDireccion") Integer idDireccion, Model model) {
        model.addAttribute("direccion", Direccion.findDireccion(idDireccion));
        return "direccions/update";
    }
    
    @RequestMapping(value = "/{idDireccion}", method = RequestMethod.DELETE)
    public String DireccionController.delete(@PathVariable("idDireccion") Integer idDireccion, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        Direccion.findDireccion(idDireccion).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/direccions?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    @ModelAttribute("poblacions")
    public Collection<Poblacion> DireccionController.populatePoblacions() {
        return Poblacion.findAllPoblacions();
    }
    
    Converter<Direccion, String> DireccionController.getDireccionConverter() {
        return new Converter<Direccion, String>() {
            public String convert(Direccion direccion) {
                return new StringBuilder().append(direccion.getCalle()).append(" ").append(direccion.getNumero()).append(" ").append(direccion.getNumeroint()).toString();
            }
        };
    }
    
    Converter<Poblacion, String> DireccionController.getPoblacionConverter() {
        return new Converter<Poblacion, String>() {
            public String convert(Poblacion poblacion) {
                return new StringBuilder().append(poblacion.getNombre()).append(" ").append(poblacion.getLatitud()).append(" ").append(poblacion.getLongitud()).toString();
            }
        };
    }
    
    @PostConstruct
    void DireccionController.registerConverters() {
        conversionService.addConverter(getDireccionConverter());
        conversionService.addConverter(getPoblacionConverter());
    }
    
    private String DireccionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
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
