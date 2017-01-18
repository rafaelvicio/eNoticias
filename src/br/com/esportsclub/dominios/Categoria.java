package br.com.esportsclub.dominios;

import javax.persistence.*;
import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */
@Entity
@Table(name = "cat_cat")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cat_id")
    private Long id;

    @Column(name = "cat_nome")
    private String nome;

    @Column(name = "cat_url")
    private String url;

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
