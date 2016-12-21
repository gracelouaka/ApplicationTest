package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.googlecode.objectify.ObjectifyService;
import modele.*;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class GestionProduitServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify
    static {
        ObjectifyService.register(Produit.class);
        ObjectifyService.register(Categorie.class);

    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<Produit> produits = ofy().load().type(Produit.class).order("-date").limit(30).list();

            req.setAttribute("produits", produits);
            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/GestionProduitForm.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet

            resp.sendRedirect("/main");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}