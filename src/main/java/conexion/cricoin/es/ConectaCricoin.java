package conexion.cricoin.es;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConectaCricoin
 */
@WebServlet("/ConectaCricoin")
public class ConectaCricoin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConectaCricoin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String JdbcUrl = "jdbc:mysql://localhost:3306/proyecto_final?useSSL=false";
		String usuario = "root";
		String contra = "";
		String driver = "com.mysql.jdbc.Driver";

		try {

			PrintWriter out = response.getWriter();

			out.print("Nombre de la BBDD: " + JdbcUrl + "<br>");
			// Para cargar el driver jdbc
			Class.forName(driver);
			// Conxion a la BB
			Connection miConexion = DriverManager.getConnection(JdbcUrl, usuario, contra);

			out.print("CONECTADO con CRICOIN!!!");

			miConexion.close();

		} catch (Exception e) {

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
