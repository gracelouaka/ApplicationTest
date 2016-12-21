package modele;

/**
 * Created by Admin on 13/11/2016.
 */
import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;

import java.awt.*;
import java.util.*;


@Entity
@Cache
public class Produit {
    @Id private Long id;
    private String libelle, description;
    private int quantite;
    private Double prix;
    private Date dateMiseStock;
    private @Parent
    Key<Categorie> categorie;

    // Getters et setters

    public String getLibelle() {
        return libelle;
    }

    public Date getDateMiseStock() {
        return dateMiseStock;
    }

    public int getQuantite() {
        return quantite;
    }

    public Long getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public Key<Categorie> getCategorie() {
        return categorie;
    }

    public Double getPrix() {
        return prix;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setDateMiseStock(Date dateMiseStock) {
        this.dateMiseStock = dateMiseStock;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public void setCategorie(Key<Categorie> categorie) {
        this.categorie = categorie;
    }

    public void setPrix(Double prix) {
        this.prix = prix;
    }




}
