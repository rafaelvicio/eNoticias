package br.com.esportsclub.dominios;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.util.List;

/**
 * Created by rafae on 29/11/2016.
 */
public class Imagem implements Serializable {

    private static final long serialVersionUID = 74458L;

    private String nome;
    private String descricao;

    private List<MultipartFile> images;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public List<MultipartFile> getImages() {
        return images;
    }

    public void setImages(List<MultipartFile> images) {
        this.images = images;
    }
}
