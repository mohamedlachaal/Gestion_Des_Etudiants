

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Client;
import beans.Paiment;

/**
 * Servlet implementation class ShowProfilServelet
 */
public class ShowProfilServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowProfilServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String url_db = "jdbc:mysql://localhost:3306/eheio_db";
		String user_db = "root";
		String pwd_db = "";
		Client client = new Client();
		
		List<Paiment> paiments= new ArrayList<Paiment>();
		//client.setPaiment(paiment);
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url_db, user_db, pwd_db);
		
		PreparedStatement psmt = conn.prepareStatement("select * from client c LEFT JOIN paiment p on c.id= p.id_client where c.id= ?");
		psmt.setInt(1, id);

		ResultSet rs = psmt.executeQuery();

		while (rs.next()) {
			    Paiment paiment = new Paiment();
				client.setId(rs.getInt("id"));
				client.setNom(rs.getString("nom"));
				client.setPrenom(rs.getString("prenom"));
				client.setAge(rs.getInt("age"));
				paiment.setIdPaiment(rs.getInt("id_paiment"));
				paiment.setTarifs(rs.getInt("tarifs"));
				paiment.setDatePaiment(rs.getString("date_paiment"));
				paiment.setMontantPayee(rs.getInt("montant_payee"));
				paiments.add(paiment);
				client.setPaiments(paiments);
				

		
		
		}
		rs.close();
		psmt.close();
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		request.setAttribute( "client", client);
		request.getRequestDispatcher("afficherProfil.jsp").forward(request, response);
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
