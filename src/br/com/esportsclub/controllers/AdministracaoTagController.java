package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Tag;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */

@Controller
@RequestMapping("/administracao/tags")
public class AdministracaoTagController {

    @Autowired
    private RepositorioTag repositorioTag;

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    private String adicionar(Model model) {

        model.addAttribute("tag", new Tag());

        return "administracao.tag.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    private String adicionar(@ModelAttribute("tag") @Valid Tag novaTag, BindingResult result, Model model){

        repositorioTag.save(novaTag);
        return "redirect:/administracao/tags";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model){
        List<Tag> tags = repositorioTag.findAll();
        model.addAttribute("tags", tags);


        return "administracao.tag.index.tiles";
    }
}
