

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.Utilisateur;

/**
 * Servlet implementation class TraiterLoginServelet
 */
public class TraiterLoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraiterLoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String login = request.getParameter("login");
		String password =request.getParameter("pwd");
		String url_db = "jdbc:mysql://localhost:3306/eheio_db";
		String user_db = "root";
		String pwd_db = "";
		Utilisateur user = new Utilisateur();
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url_db, user_db, pwd_db);
		PreparedStatement psmt = conn.prepareStatement("select * from utilisateur where login=? and motDePasse=?");
		psmt.setString(1, login);
		psmt.setString(2, password);
		ResultSet rs = psmt.executeQuery();
		while (rs.next()) {
		user.setId(rs.getInt("id"));
		user.setLogin(rs.getString("login"));
		user.setMotDePasse(rs.getString("motDePasse"));
		user.setNom(rs.getString("nom"));
		user.setPrenom(rs.getString("prenom"));
		}
		rs.close();
		psmt.close();
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		if(user.getNom()!=null)
		{
			HttpSession session = request.getSession( true );
			session.setAttribute( "user", user);
			request.getRequestDispatcher("ListerClient").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("erreur.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
