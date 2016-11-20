package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Musica;

public interface RepositorioMusica extends JpaRepository<Musica, Long> {

}
