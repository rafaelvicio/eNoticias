package br.com.esportsclub.repositorios;

import br.com.esportsclub.dominios.Conta_Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rafae on 17/11/2016.
 */
public interface RepositorioConta_Usuario extends JpaRepository<Conta_Usuario, Long> {
}
