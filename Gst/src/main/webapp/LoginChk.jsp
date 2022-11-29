<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login check</title>
</head>

<body>

        <%

        String UserID=(String)request.getParameter("email");
        String Password=(String)request.getParameter("password");
%>



        <%



     Connection conn;
     Statement st;
     ResultSet rs;


      try{
        Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");

       String query = "select * from gstuser where email='"+UserID+"' and password='"+Password+"'";

     st = conn.createStatement();
     rs = st.executeQuery(query);

    rs.next();
   int i = rs.getRow();
                                  if(i==1)
                                   {

                                        session.setAttribute("UserID",UserID);
                                        response.sendRedirect("home.jsp");
                                   }
        else
     response.sendRedirect("login.jsp");
      }
   catch(Exception e){

 out.println("error in db connection" + e);

 }
                    %>

   
</body>
</html>