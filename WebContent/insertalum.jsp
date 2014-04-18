<%@ page import="java.sql.*"%>
<html>
<head>
<title>Alum</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
  String firstname = request.getParameter("firstname");
  String lastname = request.getParameter("lastname");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String mobile = request.getParameter("mobile");
  String email = request.getParameter("email");
  String location = request.getParameter("location");
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "naveen");
    Statement st = con.createStatement();
    int n=st.executeUpdate("insert into alumnidetails values('"+firstname+"','"+lastname+"','"+username+"','"+password+"','"+mobile+"','"+email+"','"+location+"')");
    out.println ("database successfully opened.");
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>