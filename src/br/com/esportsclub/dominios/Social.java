package br.com.esportsclub.dominios;

import javax.persistence.*;

/**
 * Created by rafae on 06/12/2016.
 */

@Entity
@Table(name = "soc_social")
public class Social {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "soc_id")
    private Long id;

    @OneToOne(fetch = FetchType.LAZY, mappedBy="social", optional = true)
    private Usuario usuario;

    @Column(name = "soc_facebook")
    private String facebook;

    @Column(name = "soc_twitter")
    private String twitter;

    @Column(name = "soc_snapchat")
    private String snapchat;

    @Column(name = "soc_twitch")
    private String twitch;

    @Column(name = "soc_youtube")
    private String youtube;

    @Column(name = "soc_instagram")
    private String instagram;


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

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getSnapchat() {
        return snapchat;
    }

    public void setSnapchat(String snapchat) {
        this.snapchat = snapchat;
    }

    public String getTwitch() {
        return twitch;
    }

    public void setTwitch(String twitch) {
        this.twitch = twitch;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }
}
