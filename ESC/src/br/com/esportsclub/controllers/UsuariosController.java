package br.com.esportsclub.controllers;

import java.util.List;

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

@Controller
@RequestMapping("/usuarios")
public class UsuariosController {

	@Autowired
	private RepositorioUsuario repositorio;

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		List<Usuario> usuarios = repositorio.findAll();
		model.addAttribute("usuarios", usuarios);
		return "usuario.listar.tiles";
	}

}
