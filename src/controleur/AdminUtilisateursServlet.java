package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import modele.Utilisateur;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class AdminUtilisateursServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Requête Objectify
            List<Utilisateur> utilisateurs = ofy().load().type(Utilisateur.class).list();

            req.setAttribute("utilisateurs", utilisateurs);

            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/AdministrationUtilisateurs.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet
            Utilisateur user = new Utilisateur();
            user.setEmail(req.getParameter("email"));
            user.setNom(req.getParameter("nom"));
            user.setPrenom(req.getParameter("prenom"));
            user.setProfile(null);
            user.setSexe(req.getParameter("sexe"));

            user.setPassword(req.getParameter("password"));
            // Enregistrement de l'objet dans le Datastore avec Objectify
            ofy().save().entity(user).now();

            resp.sendRedirect("/utilisateurs");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}