package modele;

/**
 * Created by Admin on 13/11/2016.
 */
import com.googlecode.objectify.annotation.*;

@Entity
@Cache
public class Profile {
    @Id private Long code;
    private String libelle, description;



    //Getters et Setters


    public Long getCode() {
        return code;
    }

    public String getLibelle() {
        return libelle;
    }

    public String getDescription() {
        return description;
    }

    public void setCode(Long code) {
        this.code = code;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
