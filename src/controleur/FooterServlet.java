package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.googlecode.objectify.ObjectifyService;
import modele.Utilisateur;

import static com.googlecode.objectify.ObjectifyService.ofy;

@SuppressWarnings("serial")
public class FooterServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify


    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/Footer.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}