package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MessageObjects;

public class Project {
	public String InsertMessage(Connection connection,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String message = null;
		try {
			message = request.getParameter("message");
			PreparedStatement ps = connection
					.prepareStatement("INSERT INTO messages(message) VALUES(?)");

			ps.setString(1, message);
			int rs = ps.executeUpdate();
			if (rs > 0) {
				return message;
			} else {
				return null;
			}

		} catch (Exception e) {
			throw e;
		}
	}

	public ArrayList<MessageObjects> GetMessages(Connection connection,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ArrayList<MessageObjects> messageData = new ArrayList<MessageObjects>();
		try {
			// String uname = request.getParameter("uname");
			PreparedStatement ps = connection
					.prepareStatement("SELECT msg_id,message FROM messages ORDER BY msg_id DESC");
			// ps.setString(1,uname);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MessageObjects messageObject = new MessageObjects();
				messageObject.setMsg_id(rs.getString("msg_id"));
				messageObject.setMessage(rs.getString("message"));

				messageData.add(messageObject);
			}
			return messageData;
		} catch (Exception e) {
			throw e;
		}
	}

}
