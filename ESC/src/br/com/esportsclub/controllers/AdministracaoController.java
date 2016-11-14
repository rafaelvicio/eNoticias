package br.com.esportsclub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;

@Controller
@RequestMapping("/administracao")
public class AdministracaoController {
	
	@Autowired
	private RepositorioNoticia repositorioNoticia;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "administracao.index.tiles";
	}
	
	@RequestMapping(value = "noticias/cadastro", method = RequestMethod.GET)
	private String adicionar(Model model) {
		model.addAttribute("noticia", new Noticia());
		return "administracao.noticia.cadastro.tiles";
	}
	
	@RequestMapping(value = "noticias/cadastro", method = RequestMethod.POST)
	private String adicionar(@ModelAttribute("noticia") Noticia novaNoticia, Model model){
		
		repositorioNoticia.save(novaNoticia);
		return "redirect:/noticias/";
	}
	
	

}
