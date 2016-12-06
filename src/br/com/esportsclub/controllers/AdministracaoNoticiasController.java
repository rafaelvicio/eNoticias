package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Tag;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioJogo;
import br.com.esportsclub.repositorios.RepositorioNoticia;
import br.com.esportsclub.repositorios.RepositorioTag;
import br.com.esportsclub.repositorios.RepositorioUsuario;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by rafae on 01/12/2016.
 */

@Controller
@RequestMapping("/administracao/noticias")
public class AdministracaoNoticiasController {

    @Autowired
    private RepositorioNoticia repositorioNoticia;

    @Autowired
    private RepositorioUsuario repositorioUsuario;

    @Autowired
    private RepositorioJogo repositorioJogo;

    @Autowired
    private RepositorioTag repositorioTag;

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    private String adicionar(Model model) {

        model.addAttribute("jogos", repositorioJogo.findAll());
        model.addAttribute("noticia", new Noticia());
        model.addAttribute("tags", repositorioTag.findAll());

        return "administracao.noticia.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    private String adicionar(@ModelAttribute("noticia") @Valid Noticia novaNoticia, BindingResult result, Model model){
        if (result.hasErrors()) {
            return "noticia.cadastro.tiles";
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String nomeUsuario = auth.getName();
        Usuario usuario = repositorioUsuario.findByUsername(nomeUsuario);

        Date data = new Date();


        novaNoticia.setData(data);
        novaNoticia.setUsuario(usuario);

        Noticia noticiaSalva = repositorioNoticia.save(novaNoticia);

        List<Noticia> noticias = new ArrayList<Noticia>();

        noticias.add(noticiaSalva);

        for(Tag tag: novaNoticia.getTags()){
            tag.setNoticias(noticias);

            repositorioTag.save(tag);
        }

        return "redirect:/noticias/";
    }
}
