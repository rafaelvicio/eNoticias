package br.com.esportsclub.dominios;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tim_times")
public class Time {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "tim_id")
	private Long id;
	
	@Column(name = "tim_nome")
	private String nome;
	
	@OneToMany(mappedBy = "time", fetch = FetchType.EAGER, cascade = CascadeType.MERGE) //  orphanRemoval = true
	private List<Time_Usuario> time_usuario;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Time_Usuario> getTime_usuario() {
		return time_usuario;
	}

	public void setTime_usuario(List<Time_Usuario> time_usuario) {
		this.time_usuario = time_usuario;
	}

}
