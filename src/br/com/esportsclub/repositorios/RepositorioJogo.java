package br.com.esportsclub.repositorios;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Jogo;

import java.util.List;

public interface RepositorioJogo extends JpaRepository<Jogo, Long> {

    Jogo findByUrl(String url);

    // Buscar os jogos mais antigos com paginação
    public Page<Jogo> findAll(Pageable pageable);

}
