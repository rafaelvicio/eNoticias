package br.com.esportsclub.controllers;

import java.util.Calendar;
import java.util.List;

import br.com.esportsclub.dominios.Jogo;
import br.com.esportsclub.dominios.Time;
import br.com.esportsclub.dominios.Usuario;
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

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;

import javax.validation.Valid;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {
	
	@Autowired
	private RepositorioNoticia repositorioNoticia;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listar(Model model){
		List<Noticia> noticias = repositorioNoticia.findAllByOrderByIdDesc();
		model.addAttribute("noticias", noticias);
		
		return "noticia.listar.tiles";
	}
	
	@RequestMapping(value = "/{url}", method = RequestMethod.GET)
	public String ler(@PathVariable("url") String url, Model model) {
		Noticia noticia = repositorioNoticia.findByUrl(url);

		model.addAttribute("noticia", noticia);
		return "noticia.ler.tiles";
	}	
	

}
