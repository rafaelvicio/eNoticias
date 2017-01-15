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
	private RepositorioUsuario repositorioUsuario;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Usuario> admins = repositorioUsuario.findByRole("ROLE_ADMIN");
		model.addAttribute("admins", admins);
		return "administracao.index.tiles";
	}

}
