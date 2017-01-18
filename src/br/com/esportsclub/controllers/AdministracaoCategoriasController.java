package br.com.esportsclub.controllers;

import br.com.esportsclub.dominios.Categoria;
import br.com.esportsclub.repositorios.RepositorioCategorias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */

@Controller
@RequestMapping("/administracao/categorias")
public class AdministracaoCategoriasController {

    @Autowired
    private RepositorioCategorias repositorioCategorias;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listar(Model model){
        List<Categoria> categorias = repositorioCategorias.findAll();
        model.addAttribute("categorias", categorias);

        return "administracao.categorias.index.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    private String adicionarCategoria(Model model) {
        model.addAttribute("categoria", new Categoria());
        return "administracao.categorias.cadastro.tiles";
    }

    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    private String adicionar(@ModelAttribute("categoria") @Valid Categoria novaCategoria, BindingResult result, Model model){
        if (result.hasErrors()) {
            return "administracao.categorias.cadastro.tiles";
        }

        repositorioCategorias.save(novaCategoria);
        return "redirect:/administracao/categorias/";
    }

    @RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
    public String alterar(@PathVariable("id") Long id, Model model) {
        Categoria CategoriaASerAlterada = repositorioCategorias.findOne(id);
        model.addAttribute("categorias", CategoriaASerAlterada);

        return "administracao.categorias.alterar.tiles";
    }

    @RequestMapping(value = "/alterar", method = RequestMethod.POST)
    public String alterar(@ModelAttribute("tag") @Valid Categoria categoria, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("categoria", repositorioCategorias.findAll());
            return "administracao.categorias.alterar.tiles";
        }
        repositorioCategorias.save(categoria);
        return "redirect:/administracao/categorias/";
    }

    @RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
    public String excluirTag(@PathVariable("id") Long id) {
        Categoria categoria = repositorioCategorias.findOne(id);
        repositorioCategorias.delete(categoria);
        return "redirect:/administracao/categorias/";
    }
}
