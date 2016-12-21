package modele;

/**
 * Created by Admin on 12/11/2016.
 */
import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;
import java.util.Date;

@Entity
@Cache
public class Utilisateur {
    @Id private Long idCompe;
    private String nom,prenom,sexe,email,password;
    private @Parent Key<Profile> profile;


    // Getters and Setters

    public Long getIdCompe() {
        return idCompe;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getEmail() {
        return email;
    }

    public String getSexe() {
        return sexe;
    }

    public String getPassword() {
        return password;
    }

    public Key<Profile> getProfile() {
        return profile;
    }

    public void setIdCompe(Long idCompe) {
        this.idCompe = idCompe;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }


    public void setEmail(String email) {
        this.email = email;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public void setProfile(Key<Profile> profile) {
        this.profile = profile;
    }





}

