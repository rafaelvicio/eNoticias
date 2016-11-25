package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Jogo;
import br.com.esportsclub.dominios.Musica;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioJogo;
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

import java.util.Date;
import java.util.List;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;

import javax.validation.Valid;

@Controller
@RequestMapping("/administracao")
public class AdministracaoController{
	
	@Autowired
	private RepositorioNoticia repositorioNoticia;

	@Autowired
	private RepositorioUsuario repositorioUsuario;

	@Autowired
	private RepositorioJogo repositorioJogo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "administracao.index.tiles";
	}
	
	@RequestMapping(value = "noticias/cadastro", method = RequestMethod.GET)
	private String adicionar(Model model) {

        model.addAttribute("jogos", repositorioJogo.findAll());
		model.addAttribute("noticia", new Noticia());

		return "administracao.noticia.cadastro.tiles";
	}
	
	@RequestMapping(value = "noticias/cadastro", method = RequestMethod.POST)
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



		repositorioNoticia.save(novaNoticia);
		return "redirect:/noticias/";
	}

	@RequestMapping(value = "/noticias", method = RequestMethod.GET)
	public String listar(Model model){
		List<Noticia> noticias = repositorioNoticia.findAllByOrderByIdDesc();
		model.addAttribute("noticias", noticias);


		return "administracao.noticia.index.tiles";
	}

    @RequestMapping(value = "/noticias/excluir/{id}", method = RequestMethod.GET)
    public String excluir(@PathVariable("id") Long id) {
        Noticia noticia = repositorioNoticia.findOne(id);
        repositorioNoticia.delete(noticia);
        return "redirect:/administracao/noticias";
    }

	@RequestMapping(value = "/jogos", method = RequestMethod.GET)
	public String listarJogos(Model model){
		List<Jogo> jogos = repositorioJogo.findAll();
		model.addAttribute("jogos", jogos);

		return "administracao.jogo.index.tiles";
	}

	@RequestMapping(value = "/jogos/cadastro", method = RequestMethod.GET)
	private String adicionarJogo(Model model) {
		model.addAttribute("jogo", new Jogo());
		return "administracao.jogo.cadastro.tiles";
	}

	@RequestMapping(value = "jogos/cadastro", method = RequestMethod.POST)
	private String adicionar(@ModelAttribute("noticia") @Valid Jogo novaJogo, BindingResult result, Model model){
		if (result.hasErrors()) {
			return "administracao.jogo.cadastro.tiles";
		}

		repositorioJogo.save(novaJogo);
		return "redirect:/administracao/jogos";
	}

	@RequestMapping(value = "/jogos/excluir/{id}", method = RequestMethod.GET)
	public String excluirJogo(@PathVariable("id") Long id) {
		Jogo jogo = repositorioJogo.findOne(id);
		repositorioJogo.delete(jogo);
		return "redirect:/administracao/jogos";
	}


	
	

}
