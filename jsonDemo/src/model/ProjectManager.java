package model;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Project;
import dto.MessageObjects;

public class ProjectManager {
	public String InsertMessage(Connection connection,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String message = null;
		try {
			message = request.getParameter("message");
			if (message != null && message != "" && message.length() > 0) {
				Project project = new Project();
				message = project.InsertMessage(connection, request, response);
			}
		} catch (Exception e) {
			throw e;
		}
		return message;
	}

	public ArrayList<MessageObjects> GetMessages(Connection connection,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ArrayList<MessageObjects> messages = null;
		try {

			Project project = new Project();
			messages = project.GetMessages(connection, request, response);

		} catch (Exception e) {
			throw e;
		}
		return messages;
	}

}
