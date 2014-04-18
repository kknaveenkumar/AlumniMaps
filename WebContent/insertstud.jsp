<%@ page import="java.sql.*"%>
<html>
<head>
<title>Stud</title>
</head>

<body>
<h1>Student Information</h1>

<%
  String firstname = request.getParameter("firstname");
  String lastname = request.getParameter("lastname");
  String password = request.getParameter("password");
  String rollno = request.getParameter("rollno");
  String email = request.getParameter("email");
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "naveen");
    Statement st = con.createStatement();
    int n=st.executeUpdate("insert into studetails values('"+firstname+"','"+lastname+"','"+password+"','"+rollno+"','"+email+"')");
    out.println ("database successfully opened.");
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>