package br.com.esportsclub.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.esportsclub.dominios.Time;
import br.com.esportsclub.dominios.Time_Usuario;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.enumeradores.Cargo;
import br.com.esportsclub.repositorios.RepositorioTime;
import br.com.esportsclub.repositorios.RepositorioTime_Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;

@Controller
@RequestMapping("/painel/time")
public class TimeController {
	
	@Autowired
	private RepositorioUsuario repositorioUsuario;
	
	@Autowired
	private RepositorioTime repositorioTime;
	
	@Autowired
	private RepositorioTime_Usuario repositorioTime_Usuario;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String bemVindo() {
		return "time.index.tiles";
	}
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("time", new Time());
		return "time.cadastro.tiles";
	}

	@RequestMapping(value = "/cadastro", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("time") @Valid Time novoTime, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "time.cadastro.tiles";
		}
		repositorioTime.save(novoTime);
		
		Time objSalvo = repositorioTime.save(novoTime);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String nomeUsuario = auth.getName(); 
		Usuario usuario = repositorioUsuario.findByUsername(nomeUsuario);
				
		Time_Usuario timeUsuario = new Time_Usuario();

		timeUsuario.setTime(objSalvo);
		timeUsuario.setUsuario(usuario);
		timeUsuario.setCargo(Cargo.Capitao);
		
		repositorioTime_Usuario.save(timeUsuario);
		
		return "redirect:/time/";
	}


}
