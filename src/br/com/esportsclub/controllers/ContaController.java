package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Conta;
import br.com.esportsclub.dominios.Conta_Usuario;
import br.com.esportsclub.dominios.Time;
import br.com.esportsclub.dominios.Usuario;
import br.com.esportsclub.repositorios.RepositorioConta;
import br.com.esportsclub.repositorios.RepositorioConta_Usuario;
import br.com.esportsclub.repositorios.RepositorioUsuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by rafae on 17/11/2016.
 */

@Controller
@RequestMapping("/painel/conta")
public class ContaController {

    @Autowired
    private RepositorioUsuario repositorioUsuario;

    @Autowired
    private RepositorioConta repositorioConta;

    @Autowired
    private RepositorioConta_Usuario repositorioConta_usuario;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "conta.index.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    public String adicionar(Model model) {
        model.addAttribute("conta", new Conta());
        return "conta.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    public String cadastro(@ModelAttribute("conta") @Valid Conta novoConta, BindingResult result, Model model){
        if (result.hasErrors()){
            return "conta.cadastro.tiles";
        }

        repositorioConta.save(novoConta);

        Conta objSalvo = repositorioConta.save(novoConta);

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String nomeUsuario = auth.getName();
        Usuario usuario = repositorioUsuario.findByUsername(nomeUsuario);

        Conta_Usuario contaUsuario = new Conta_Usuario();

        contaUsuario.setConta(objSalvo);
        contaUsuario.setUsuario(usuario);

        repositorioConta_usuario.save(contaUsuario);

        return "redirect:/painel/conta/";
    }
}
