<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete your Registration here</title>
</head>
<body>

<%
String uemail = (String)request.getParameter("email");
String upassword = (String)request.getParameter("password");
Connection conn;
Statement st;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");  

String sql = "Delete from gstuser where email='"+uemail+"' and Password='"+upassword+"'";
st = conn.createStatement();
rs=st.executeQuery(sql);






%>>
</body>
</html>