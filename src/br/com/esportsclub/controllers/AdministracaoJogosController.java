package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Jogo;
import br.com.esportsclub.repositorios.RepositorioJogo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by rafae on 13/01/2017.
 */

@Controller
@RequestMapping("/administracao/jogos")
public class AdministracaoJogosController {

    @Autowired
    private RepositorioJogo repositorioJogo;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listarJogos(Model model){
        List<Jogo> jogos = repositorioJogo.findAll();
        model.addAttribute("jogos", jogos);

        return "administracao.jogo.index.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    private String adicionarJogo(Model model) {
        model.addAttribute("jogo", new Jogo());
        return "administracao.jogo.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    private String adicionar(@ModelAttribute("noticia") @Valid Jogo novaJogo, BindingResult result, Model model){
        if (result.hasErrors()) {
            return "administracao.jogo.cadastro.tiles";
        }

        repositorioJogo.save(novaJogo);
        return "redirect:/administracao/jogos/";
    }

    @RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
    public String alterar(@PathVariable("id") Long id, Model model) {
        Jogo jogoASerAlterado = repositorioJogo.findOne(id);
        model.addAttribute("jogo", jogoASerAlterado);

        return "administracao.jogo.alterar.tiles";
    }

    @RequestMapping(value = "/alterar", method = RequestMethod.POST)
    public String alterar(@ModelAttribute("jogo") @Valid Jogo jogo, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("jogo", repositorioJogo.findAll());
            return "administracao.jogo.alterar.tiles";
        }
        repositorioJogo.save(jogo);
        return "redirect:/administracao/noticias/";
    }

    @RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
    public String excluirJogo(@PathVariable("id") Long id) {
        Jogo jogo = repositorioJogo.findOne(id);
        repositorioJogo.delete(jogo);
        return "redirect:/administracao/jogos/";
    }
}
