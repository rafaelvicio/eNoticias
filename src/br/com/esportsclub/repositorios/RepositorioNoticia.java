package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Noticia;
import br.com.esportsclub.dominios.Jogo;

import java.util.List;

public interface RepositorioNoticia extends JpaRepository<Noticia, Long>{
	
	Noticia findByUrl(String url);

	public List<Noticia> findByJogo(Jogo jogo);

	public List<Noticia> findAllByOrderByIdDesc();

}
