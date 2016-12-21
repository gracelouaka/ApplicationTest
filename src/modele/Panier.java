package modele;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * Created by Admin on 15/11/2016.
 */
@Entity
@Cache
public class Panier {
    @Id private Long id;
    private List<Key<Produit>> listeProduits;
    private Date dateCreation;
    @Parent
    Key<Utilisateur> proprietaire;


    //Getters et Setters

    public Long getId() {
        return id;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public List<Key<Produit>> getListeProduits() {
        return listeProduits;
    }

    public Key<Utilisateur> getProprietaire() {
        return proprietaire;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public void setListeProduits(List<Key<Produit>> listeProduits) {
        this.listeProduits = listeProduits;
    }

    public void setProprietaire(Key<Utilisateur> proprietaire) {
        this.proprietaire = proprietaire;
    }
}
