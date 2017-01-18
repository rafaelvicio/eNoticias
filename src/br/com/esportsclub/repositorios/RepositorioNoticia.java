package br.com.esportsclub.repositorios;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Jogo;

import java.util.List;

public interface RepositorioNoticia extends JpaRepository<Noticia, Long>{
	
	Noticia findByUrl(String url);

    Noticia findById(Long id);

	public List<Noticia> findByJogo(Jogo jogo);

    // Buscar as noticias mais recentes
	public List<Noticia> findAllByOrderByIdDesc();

    // Buscar as noticias mais recentes com paginação
    public Page<Noticia> findAllByOrderByIdDesc(Pageable pageable);



}
