package br.com.esportsclub.controllers;

import java.util.List;

import javax.validation.Valid;

import br.com.esportsclub.dominios.Noticia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;

@Controller
@RequestMapping("/usuarios")
public class UsuariosController {

	@Autowired
	private RepositorioUsuario repositorioUsuario;

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		List<Usuario> usuarios = repositorioUsuario.findAll();
		model.addAttribute("usuarios", usuarios);
		return "usuario.listar.tiles";
	}

    @RequestMapping(value = "/{username}", method = RequestMethod.GET)
    public String ler(@PathVariable("username") String username, Model model) {
        Usuario usuario = repositorioUsuario.findByUsername(username);

        model.addAttribute("usuario", usuario);
        return "usuario.ver.tiles";
    }

}
