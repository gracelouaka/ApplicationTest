package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class AccueilServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {

            req.setAttribute("header", "Header.jsp");
            req.setAttribute("menu","Menu.jsp");
            req.setAttribute("footer","Footer.jsp");

            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/Accueil.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // Création de l'objet

            resp.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}