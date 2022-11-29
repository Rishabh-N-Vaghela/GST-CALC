<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String search=(String)request.getParameter("search");
Connection conn;
Statement st;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");  
st=conn.createStatement();
 rs=st.executeQuery("select * from invoicetbl where gstno='"+search+"'");  
while(rs.next())  
{
	out.println(rs.getString(1)+"  "+rs.getInt(2)+"  "+rs.getInt(3)+"  "+rs.getInt(4)+"  "+rs.getInt(5)+"  "+rs.getInt(6));
}

%>
<form action="gstdata2.jsp" method="post">
      <table style="border:2px solid black">
      
      <tr>
      <td><h1>GST DATA</h1></td>
      </tr> 
      
      <tr>
      <td>Search:</td>
      <td><input type="text" name="search" value="<% out.println(search); %>"></td>
      </tr>
      
      
        <tr>
        <td></td>
        <td ><input type="submit" name="" value="SUBMIT"><input type="reset" name="" value="CANCEL"></td>
        </tr>
        
        </table>
        </form>
</body>
</html>