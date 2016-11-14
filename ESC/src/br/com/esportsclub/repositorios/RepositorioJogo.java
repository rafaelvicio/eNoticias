package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Jogo;

public interface RepositorioJogo extends JpaRepository<Jogo, Long> {

}
