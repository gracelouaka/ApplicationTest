package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import modele.Categorie;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class AdminCategoriesServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Requête Objectify
            List<Categorie> categories = ofy().load().type(Categorie.class).list();

            req.setAttribute("categories", categories);

            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/AdministrationCategories.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet
            Categorie categorie = new Categorie();
            categorie.setLibelle(req.getParameter("libelle"));
            categorie.setDescription(req.getParameter("description"));
            // Enregistrement de l'objet dans le Datastore avec Objectify
            ofy().save().entity(categorie).now();

            resp.sendRedirect("/categories");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}