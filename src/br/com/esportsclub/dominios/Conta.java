package br.com.esportsclub.dominios;

import javax.persistence.*;
import java.util.List;

/**
 * Created by rafae on 17/11/2016.
 */

@Entity
@Table(name = "con_contas")
public class Conta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "con_id")
    private Long id;

    @Column(name = "con_nome")
    private String nome;

    @OneToMany(mappedBy = "conta", fetch = FetchType.EAGER, cascade = CascadeType.MERGE) //  orphanRemoval = true
    private List<Conta_Usuario> conta_usuario;

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

    public List<Conta_Usuario> getConta_usuario() {
        return conta_usuario;
    }

    public void setConta_usuario(List<Conta_Usuario> conta_usuario) {
        this.conta_usuario = conta_usuario;
    }
}
