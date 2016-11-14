package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long> {

	Usuario findByUsername(String username);

}
