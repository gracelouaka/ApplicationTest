package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import modele.Produit;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class AdminProduitsServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Requête Objectify
            List<Produit> produits = ofy().load().type(Produit.class).list();

            req.setAttribute("produits", produits);

            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/AdministrationProduits.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet
            Produit produit = new Produit();
            produit.setLibelle(req.getParameter("libelle"));
            produit.setPrix(Double.parseDouble(req.getParameter("prix")));
            produit.setQuantite(Integer.parseInt(req.getParameter("quantite")));
            produit.setDescription(req.getParameter("description"));
            produit.setDateMiseStock(null);
            // Enregistrement de l'objet dans le Datastore avec Objectify
            ofy().save().entity(produit).now();

            resp.sendRedirect("/admin");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}