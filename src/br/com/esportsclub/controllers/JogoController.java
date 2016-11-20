package br.com.esportsclub.controllers;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Jogo;
import br.com.esportsclub.enumeradores.Plataforma;
import br.com.esportsclub.repositorios.RepositorioJogo;

@Controller
@RequestMapping("/administracao/jogo")
public class JogoController {
	
	@Autowired
	private RepositorioJogo repositorioJogo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "administracao.jogo.index.tiles";
	}
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("jogo", new Jogo());
		
		List<Enum> categorias = Arrays.asList(Plataforma.values());
		
		return "administracao.jogo.cadastro.tiles";
	}

	@RequestMapping(value = "/cadastro", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("jogo") @Valid Jogo novoJogo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("jogo", repositorioJogo.findAll());
			return "administracao.jogo.index.tiles";
		}
		repositorioJogo.save(novoJogo);
		return "redirect:/administracao/jogo/index";
	}

}
