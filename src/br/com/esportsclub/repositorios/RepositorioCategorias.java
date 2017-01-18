package br.com.esportsclub.repositorios;

import br.com.esportsclub.dominios.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rafae on 29/11/2016.
 */
public interface RepositorioCategorias extends JpaRepository<Categoria, Long> {

    Categoria findByUrl(String url);
}
