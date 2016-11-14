package br.com.esportsclub.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/painel")
public class PainelController {
	
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

}
