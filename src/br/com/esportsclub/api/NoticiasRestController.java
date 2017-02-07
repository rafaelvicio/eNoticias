package br.com.esportsclub.api;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.repositorios.RepositorioNoticia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by rafae on 06/02/2017.
 */
@RestController("/webservice")
public class NoticiasRestController {

    @Autowired
    private RepositorioNoticia repositorioNoticia;

    @RequestMapping("/")
    public String welcome() {//Welcome page, non-rest
        return "Bem-vindo ao WebSerivce da ESC";
    }

    @RequestMapping(value = "/noticias/", method = RequestMethod.GET, headers = "Accept=application/json")
    public List<Noticia> noticias() {
        List<Noticia> noticias = repositorioNoticia.findAll();
        System.out.println("Noticias retornadas: " + String.valueOf(noticias.size()));
        return noticias;
    }

}