package br.com.esportsclub.repositorios;

import br.com.esportsclub.dominios.Conta;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rafae on 17/11/2016.
 */
public interface RepositorioConta extends JpaRepository<Conta, Long> {

    Conta findByNome(String nome);
}
