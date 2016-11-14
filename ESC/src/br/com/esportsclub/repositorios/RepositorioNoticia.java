package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Noticia;

public interface RepositorioNoticia extends JpaRepository<Noticia, Long>{
	
	Noticia findByUrl(String url);

}
