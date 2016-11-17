package br.com.esportsclub.dominios;

import br.com.esportsclub.enumeradores.Cargo;
import br.com.esportsclub.enumeradores.Posicao;

import javax.persistence.*;
import java.util.List;

/**
 * Created by rafae on 17/11/2016.
 */

@Entity
@Table(name = "conusu_conta_usuario")
public class Conta_Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "conusu_id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "usr_id")
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "con_id")
    private Conta conta;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "jog_id")
    private Jogo jogo;

    @Enumerated(EnumType.STRING)
    private Posicao posicao;

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

    public Conta getConta() {
        return conta;
    }

    public void setConta(Conta conta) {
        this.conta = conta;
    }

    public Posicao getPosicao() {
        return posicao;
    }

    public void setPosicao(Posicao posicao) {
        this.posicao = posicao;
    }

    public Jogo getJogo() {
        return jogo;
    }

    public void setJogo(Jogo jogo) {
        this.jogo = jogo;
    }
}
