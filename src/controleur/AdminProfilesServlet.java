package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import modele.Profile;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class AdminProfilesServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Requête Objectify
            List<Profile> profiles = ofy().load().type(Profile.class).list();

            req.setAttribute("profiles", profiles);

            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/AdministrationProfiles.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet
            Profile profile = new Profile();
            profile.setLibelle(req.getParameter("libelle"));
            profile.setDescription(req.getParameter("description"));
            // Enregistrement de l'objet dans le Datastore avec Objectify
            ofy().save().entity(profile).now();

            resp.sendRedirect("/profiles");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}