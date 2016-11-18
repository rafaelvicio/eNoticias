package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Noticia;

import java.util.List;

public interface RepositorioNoticia extends JpaRepository<Noticia, Long>{
	
	Noticia findByUrl(String url);

	public List<Noticia> findAllByOrderByIdDesc();

}
