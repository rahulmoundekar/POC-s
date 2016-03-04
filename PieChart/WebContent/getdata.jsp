
<!DOCTYPE html>

<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
	Connection con = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/employe";
		String dbUser = "root";
		String password = "root";
		con = DriverManager.getConnection(url, dbUser, password);

		//Class.forName("com.mysql.jdbc.Driver").newInstance();
		//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employe","root","root");
		String sqlquery = "SELECT id,name from employee";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlquery);

		List empdetails = new LinkedList();
		JSONObject responseObj = new JSONObject();

		//String query = "SELECT id,name1 from employee";
		//PreparedStatement pstm= con.prepareStatement(query);
		while (rs.next()) {
			String name = rs.getString("name");
			int empid = rs.getInt("id");
			responseObj.put("name", name);
			responseObj.put("id", empid);
			System.out.println(name);
			empdetails.add(responseObj);
		}
		responseObj.put("empdetails", empdetails);
		out.print(responseObj.toString());
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
%>
