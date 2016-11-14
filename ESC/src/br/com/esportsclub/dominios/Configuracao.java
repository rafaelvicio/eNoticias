package br.com.esportsclub.dominios;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "con_configuracao")
public class Configuracao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "con_id")
	private Long id;
	
	@Column(name = "con_nome")
	private String nome;

}
