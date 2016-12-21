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
public class Achat {
    @Id private Long id;
    private Key<Panier> panier;
    private  @Parent Key<Utilisateur> acheteur;
    private Date dateAchat;
    private Double montant;
    private List<Key<Produit>> listeProduits;

    //Getters et Setters


    public Long getId() {
        return id;
    }

    public Date getDateAchat() {
        return dateAchat;
    }

    public Double getMontant() {
        return montant;
    }

    public Key<Panier> getPanier() {
        return panier;
    }

    public List<Key<Produit>> getListeProduits() {
        return listeProduits;
    }

    public Key<Utilisateur> getAcheteur() {
        return acheteur;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setAcheteur(Key<Utilisateur> acheteur) {
        this.acheteur = acheteur;
    }

    public void setDateAchat(Date dateAchat) {
        this.dateAchat = dateAchat;
    }

    public void setPanier(Key<Panier> panier) {
        this.panier = panier;
    }

    public void setListeProduits(List<Key<Produit>> listeProduits) {
        this.listeProduits = listeProduits;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }


}
