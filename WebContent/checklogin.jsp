<%@ page import="java.sql.*"%>
<html>
<head>
<title>Login</title>
</head>

<body>
<h1>Login</h1>

<%
  int g=0,f=0;
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "naveen");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from studetails");
    Statement sta = con.createStatement();
    ResultSet ra = sta.executeQuery("select * from alumnidetails");
    while(rs.next())
    {
    	String roll = rs.getString(4);
    	String pass = rs.getString(3);
        if(username.equals(roll) && password.equals(pass))
        {
        	f=f+1;
        	break;
        }
    }
    while(ra.next())
    {
    	String uname = ra.getString(3);
    	String pwd = ra.getString(4);
    	if(username.equals(uname) && password.equals(pwd))
    	{
    		g=g+1;
    		break;
    	}
    }
    if(f==1)
    {
    	%>
    	<jsp:forward page="stuprofile.jsp"></jsp:forward>
    	<%
    }
    else if(g==1)
    {
    	%>
    	<jsp:forward page="alumprofile.jsp"></jsp:forward>
    	<%
    }
    else if(f==0 || g==0)
    {
    	out.println("Invalid User");
    }
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>