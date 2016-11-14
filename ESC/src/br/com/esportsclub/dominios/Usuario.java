package br.com.esportsclub.dominios;

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
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "usr_usuarios")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usr_id")
	private Long id;

	@Column(name = "usr_username", length = 10, nullable = false)
	@Size(min = 3, max = 10, message = "O nome de usuário deve conter entre 3 e 10 caracteres")
	@NotEmpty(message = "O nome de usuário é obrigatório")
	private String username;

	@Column(name = "usr_password", length = 150, nullable = false)
	private String password;

	@Column(name = "usr_role", length = 20, nullable = false)
	private String role;
	
	@OneToMany(mappedBy = "usuario", fetch = FetchType.EAGER, cascade = CascadeType.MERGE, orphanRemoval = true)
	private Set<Time_Usuario> time_usuario;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<Time_Usuario> getTime_usuario() {
		return time_usuario;
	}

	public void setTime_usuario(Set<Time_Usuario> time_usuario) {
		this.time_usuario = time_usuario;
	}

}
