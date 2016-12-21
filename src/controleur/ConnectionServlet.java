package controleur;

/**
 * Created by Admin on 13/11/2016.
 */
import java.io.IOException;
import javax.servlet.http.*;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;
import modele.*;


public class ConnectionServlet extends HttpServlet {
    static {
        ObjectifyService.register(Achat.class);
        ObjectifyService.register(Categorie.class);
        ObjectifyService.register(Panier.class);
        ObjectifyService.register(Produit.class);
        ObjectifyService.register(Profile.class);
        ObjectifyService.register(Utilisateur.class);
    }
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        UserService userService = UserServiceFactory.getUserService();
        User user = userService.getCurrentUser();
        if (user != null) {

            resp.sendRedirect("/admin");

        } else
            resp.sendRedirect(userService.createLoginURL(req.getRequestURI()));
    }
}