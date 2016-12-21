package controleur;

/**
 * Created by Admin on 12/11/2016.
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class RechercheServlet extends HttpServlet {
    // Enregistrement de la classe persistable auprès d'Objectify

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            this.getServletContext().getRequestDispatcher("/WEB-INF/vue/Recherche.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.sendRedirect("/recherche?recherche="+req.getParameter("recherche"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}