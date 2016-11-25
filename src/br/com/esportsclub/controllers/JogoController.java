package br.com.esportsclub.controllers;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Jogo;
import br.com.esportsclub.enumeradores.Plataforma;
import br.com.esportsclub.repositorios.RepositorioJogo;

@Controller
@RequestMapping("/jogos")
public class JogoController {
	
	@Autowired
	private RepositorioJogo repositorioJogo;

	@Autowired
	private RepositorioNoticia repositorioNoticia;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listar(Model model){
		List<Jogo> jogos = repositorioJogo.findAll();
		model.addAttribute("jogos", jogos);

		return "jogo.listar.tiles";
	}

	@RequestMapping(value = "/{url}", method = RequestMethod.GET)
	public String ler(@PathVariable("url") String url, Model model) {
		Jogo jogo = repositorioJogo.findByUrl(url);

		List<Noticia> noticias = repositorioNoticia.findByJogo(jogo);

		model.addAttribute("noticias", noticias);

		model.addAttribute("jogo", jogo);
		return "jogo.ler.tiles";
	}

}
