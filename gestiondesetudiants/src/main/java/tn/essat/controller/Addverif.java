package tn.essat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.essat.dao.GestionIMP;
import tn.essat.dao.IGestion;
import tn.essat.model.Etudiant;

/**
 * Servlet implementation class Addverif
 */
public class Addverif extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addverif() {
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
		String id = request.getParameter("id");
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String groupe = request.getParameter("groupe");

		int id1 = Integer.parseInt(id);
		IGestion dao = new GestionIMP();
		Etudiant etudiant = new Etudiant(id1, prenom, nom, groupe);
		dao.addEtudiant(etudiant); // Suppose que vous avez une méthode addEtudiant() dans votre IGestion

	    response.sendRedirect("Principale");

			}

}
