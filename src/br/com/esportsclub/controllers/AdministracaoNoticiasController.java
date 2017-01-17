package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.infra.FileSaver;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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

    @Autowired
    private FileSaver fileSaver;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listar(Model model){
        List<Noticia> noticias = repositorioNoticia.findAllByOrderByIdDesc();
        model.addAttribute("noticias", noticias);

        return "administracao.noticia.index.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    private String adicionar(Model model) {

        model.addAttribute("jogos", repositorioJogo.findAll());
        model.addAttribute("noticia", new Noticia());
        model.addAttribute("tags", repositorioTag.findAll());

        return "administracao.noticia.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    private String adicionar(@ModelAttribute("noticia") @Valid Noticia novaNoticia, BindingResult result, Model model, MultipartFile imagem){
        if (result.hasErrors()) {
            return "noticia.cadastro.tiles";
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String nomeUsuario = auth.getName();
        Usuario usuario = repositorioUsuario.findByUsername(nomeUsuario);

        Date data = new Date();

        novaNoticia.setData(data);
        novaNoticia.setUsuario(usuario);

        //String path = fileSaver.write("imagens/noticia/", imagem);
        //usuario.setFoto(path);

        repositorioNoticia.save(novaNoticia);


        return "redirect:/noticias/";
    }

    @RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
    public String alterar(@PathVariable("id") Long id, Model model) {

        Noticia noticiaASerAlterada = repositorioNoticia.findOne(id);
        model.addAttribute("noticia", noticiaASerAlterada);

        model.addAttribute("jogos", repositorioJogo.findAll());
        model.addAttribute("tags", repositorioTag.findAll());

        return "administracao.noticia.alterar.tiles";
    }

    @RequestMapping(value = "/alterar", method = RequestMethod.POST)
    public String alterar(@ModelAttribute("noticia") @Valid Noticia noticia, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("noticias", repositorioNoticia.findAll());
            return "administracao.noticia.index.tiles";
        }
       repositorioNoticia.save(noticia);
        return "redirect:/administracao/noticias/";
    }

    @RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
    public String excluir(@PathVariable("id") Long id) {
        Noticia noticia = repositorioNoticia.findOne(id);
        repositorioNoticia.delete(noticia);
        return "redirect:/administracao/noticias/";
    }
}
