package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Time;

public interface RepositorioTime extends JpaRepository<Time, Long>{
	
	Time findByNome(String nome);

}
