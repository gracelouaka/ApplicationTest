package modele;

/**
 * Created by Admin on 12/11/2016.
 */

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;

import java.util.Date;
import java.util.List;

@Entity
@Cache

public class Categorie {
    @Id private Long id;
    private String libelle, Description;

    //Getters et Setters


    public Long getId() {
        return id;
    }

    public String getLibelle() {
        return libelle;
    }

    public String getDescription() {
        return Description;
    }

    /*  public Key<Categorie> getCategoriePere() {
        return categoriePere;
    }*/

    public void setId(Long id) {
        this.id = id;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setDescription(String description) {
        Description = description;
    }

    /* public void setCategoriePere(Key<Categorie> categoriePere) {
            this.categoriePere = categoriePere;
        }*/



}
