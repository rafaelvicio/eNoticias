package br.com.esportsclub.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;

import java.util.Date;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	private RepositorioUsuario repositorioUsuario;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "home.index.tiles";
	}
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("usuario", new Usuario());
		return "home.cadastro.tiles";
	}

	@RequestMapping(value = "/cadastro", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("usuario") @Valid Usuario usuario, BindingResult result) {
		if (result.hasErrors()) {
			return "usuario.adicionar.tiles";
		}

		Date data = new Date();

		usuario.setData(data);
		usuario.setRole("ROLE_MEMBER");

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		usuario.setPassword(encoder.encode(usuario.getPassword()));
		repositorioUsuario.save(usuario);

		return "redirect:/painel/login";
	}
	
	@RequestMapping(value = "/perfil", method = RequestMethod.GET)
	public String perfil() {
		return "perfil.index.tiles";
	}

	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String naoEncontrada() {
		return "home.404.tiles";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String semPermissao() {
		return "home.403.tiles";
	}

}
