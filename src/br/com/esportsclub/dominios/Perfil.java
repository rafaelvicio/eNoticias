package br.com.esportsclub.dominios;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by rafae on 06/12/2016.
 */

@Entity
@Table(name = "per_perfil")
public class Perfil {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "per_id")
    private Long id;

    @OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true)
    @JoinColumn(name="usr_id", nullable=false)
    @PrimaryKeyJoinColumn
    private Usuario usuario;

    @Column(name = "per_nome")
    private String nome;

    @Column(name = "per_sobrenome")
    private String sobrenome;

    @Column(name = "per_biografia")
    private String biografia;

    @Column(name = "per_estado")
    private String estado;

    @Column(name = "per_data")
    @Temporal(TemporalType.TIMESTAMP)
    private Date data;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
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

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
}
