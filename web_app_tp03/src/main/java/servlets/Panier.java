package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Panier
 */
@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession();

	        // Récupérer l'identifiant du produit sélectionné depuis la requête
	        String idProduit = request.getParameter("idProduit");

	        if (idProduit != null) {
	            // Récupérer le panier de la session ou en créer un nouveau
	            List<String> panier = (List<String>) session.getAttribute("panier");
	            if (panier == null) {
	                panier = new ArrayList<>();
	            }

	            // Ajouter le produit sélectionné au panier
	            panier.add(idProduit);
	            session.setAttribute("panier", panier);
	        }

	        // Rediriger vers la page Afficher.jsp pour afficher le contenu du panier
	        request.getRequestDispatcher("Afficher.jsp").forward(request, response);
	    }
	}


