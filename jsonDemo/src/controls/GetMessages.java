package controls;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

import dao.Database;
import model.ProjectManager;
import dto.MessageObjects;

/**
 * Servlet implementation class GetMessages
 */
@WebServlet("/GetMessages")
public class GetMessages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetMessages() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {

			Database database = new Database();
			ProjectManager projectManager = new ProjectManager();
			ArrayList<MessageObjects> messagesData = null;
			Connection connection = database.Get_Connection();
			messagesData = projectManager.GetMessages(connection, request,
					response);
			// StringBuffer sb = new StringBuffer();
			Gson gson = new Gson();
			System.out.println(gson.toJson(messagesData));
			String messages = gson.toJson(messagesData);
			out.println("{\"Messages\":" + messages + "}");
			// out.println("<font color=red><b>"+sb.toString()+"</b> is already in use</font>");

		} catch (Exception ex) {
			out.println("Error: " + ex.getMessage());
		} finally {
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
