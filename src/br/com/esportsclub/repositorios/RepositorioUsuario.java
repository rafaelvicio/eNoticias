package br.com.esportsclub.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.esportsclub.dominios.Usuario;

import java.util.List;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long> {

	Usuario findByUsername(String username);

	public List<Usuario> findByRole(String role);

}
