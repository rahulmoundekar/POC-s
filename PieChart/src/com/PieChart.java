package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

@WebServlet("/piechart")
public class PieChart extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/test";
			String dbUser = "root";
			String password = "root";
			con = DriverManager.getConnection(url, dbUser, password);

			String sqlquery = "SELECT id,name from employee";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlquery);
			List empdetails = new LinkedList();
			PrintWriter out = response.getWriter();
			while (rs.next()) {
				Employee employee=new  Employee();
				employee.setId(rs.getInt("id"));
				employee.setName(rs.getString("name"));
				empdetails.add(employee);
			}
			Gson gson = new Gson();
			System.out.println(gson.toJson(empdetails));
			String messages = gson.toJson(empdetails);
			out.println("{\"Messages\":" + messages + "}");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

	}

}
