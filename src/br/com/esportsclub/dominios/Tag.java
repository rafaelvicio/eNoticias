package br.com.esportsclub.dominios;

import javax.persistence.*;
import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */
@Entity
@Table(name = "tag_tag")
public class Tag {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tag_id")
    private Long id;

    @Column(name = "tag_nome")
    private String nome;

    @Column(name = "tag_url")
    private String url;

    @ManyToMany(mappedBy="tags", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    private List<Noticia> noticias;

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

    public List<Noticia> getNoticias() {
        return noticias;
    }

    public void setNoticias(List<Noticia> noticias) {
        this.noticias = noticias;
    }
}
