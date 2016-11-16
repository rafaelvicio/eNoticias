package br.com.esportsclub.controllers;

import java.util.List;

import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {
	
	@Autowired
	private RepositorioNoticia repositorioNoticia;

	@Autowired
	private RepositorioUsuario repositorioUsuario;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listar(Model model){
		List<Noticia> noticias = repositorioNoticia.findAll();
		model.addAttribute("noticias", noticias);
		
		return "noticia.listar.tiles";
	}
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	private String adicionar(Model model) {
		model.addAttribute("noticia", new Noticia());
		return "noticia.cadastro.tiles";
	}
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.POST)
	private String adicionar(@ModelAttribute("noticia") Noticia novaNoticia, Model model){

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String nomeUsuario = auth.getName();
		Usuario usuario = repositorioUsuario.findByUsername(nomeUsuario);

		novaNoticia.setData();
		novaNoticia.setUsuario(usuario);
		
		repositorioNoticia.save(novaNoticia);
		return "redirect:/noticias/";
	}
	
	@RequestMapping(value = "/{url}", method = RequestMethod.GET)
	public String ler(@PathVariable("url") String url, Model model) {
		Noticia noticia = repositorioNoticia.findByUrl(url);
		 
		model.addAttribute("noticia", noticia);
		return "noticia.ler.tiles";
	}	
	

}
