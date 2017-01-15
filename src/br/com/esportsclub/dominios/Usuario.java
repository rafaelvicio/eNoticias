package br.com.esportsclub.dominios;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "usr_usuarios")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usr_id")
	private Long id;

	@Column(name = "usr_username", length = 10, nullable = false)
	@Size(min = 3, max = 10, message = "O nome de usu�rio deve conter entre 3 e 10 caracteres")
	@NotEmpty(message = "O nome de usu�rio � obrigat�rio")
	private String username;

	@Column(name = "usr_nome")
	private String nome;

	@Column(name = "usr_sobrenome")
	private String sobrenome;

	@Column(name = "usr_biografia")
	private String biografia;

	@Column(name = "usr_estado")
	private String estado;

	@Column(name = "usr_foto")
	private String foto;

	@Column(name = "usr_password", length = 150, nullable = false)
	private String password;

	@Column(name = "usr_role", length = 20, nullable = false)
	private String role;

	@Column(name = "usr_data")
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;

	@OneToMany(mappedBy = "usuario", fetch = FetchType.EAGER, cascade = CascadeType.MERGE, orphanRemoval = true)
	private Set<Time_Usuario> time_usuario;

	@OneToMany(mappedBy = "usuario", fetch = FetchType.EAGER, cascade = CascadeType.MERGE, orphanRemoval = true)
	private Set<Conta_Usuario> conta_usuario;

	@OneToOne(fetch = FetchType.LAZY)
	private Social social;

	// Gets e Sets

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

	public Set<Conta_Usuario> getConta_usuario() {
		return conta_usuario;
	}

	public void setConta_usuario(Set<Conta_Usuario> conta_usuario) {
		this.conta_usuario = conta_usuario;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
}