package br.com.esportsclub.repositorios;

import br.com.esportsclub.dominios.Social;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rafae on 07/12/2016.
 */
public interface RepositorioSocial extends JpaRepository<Social, Long> {
}
