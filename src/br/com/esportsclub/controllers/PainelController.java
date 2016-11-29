package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Musica;
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

import javax.validation.Valid;

@Controller
@RequestMapping("/painel")
public class PainelController {

	@Autowired
	private RepositorioUsuario repositorioUsuario;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "painel.login.tiles";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {

		return "painel.index.tiles";
	}
	
	@RequestMapping(value = "/perfil", method = RequestMethod.GET)
	public String perfil() {
		return "painel.perfil.tiles";
	}

	@RequestMapping(value = "/editar", method = RequestMethod.GET)
	public String editar(Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String nomeUsuario = auth.getName();

		Usuario ususarioASerAlterado = repositorioUsuario.findByUsername(nomeUsuario);
		model.addAttribute("usuario", ususarioASerAlterado);

		return "painel.editar.tiles";
	}

	@RequestMapping(value = "/editar", method = RequestMethod.POST)
	public String alterar(@ModelAttribute("usuario") Usuario usuario, Model model) {

		repositorioUsuario.save(usuario);
		return "redirect:/painel/";
	}

}
