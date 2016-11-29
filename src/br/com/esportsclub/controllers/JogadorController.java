package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */
@Controller
@RequestMapping("/jogador")
public class JogadorController {

    @Autowired
    private RepositorioUsuario repositorioUsuario;

    @RequestMapping(value = "/{username}", method = RequestMethod.GET)
    public String ler(@PathVariable("username") String username, Model model) {
        Usuario usuario = repositorioUsuario.findByUsername(username);

        model.addAttribute("usuario", usuario);

        return "jogador.ler.tiles";
    }
}
