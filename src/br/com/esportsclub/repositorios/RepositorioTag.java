package br.com.esportsclub.repositorios;

import br.com.esportsclub.dominios.Tag;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rafae on 29/11/2016.
 */
public interface RepositorioTag extends JpaRepository<Tag, Long> {

    Tag findByUrl(String url);
}
