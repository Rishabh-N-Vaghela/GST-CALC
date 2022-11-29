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

String uname=(String)request.getParameter("name");
String uemail=(String)request.getParameter("email");
String ucontact=(String)request.getParameter("contact");
String upassword=(String)request.getParameter("password");
%>

<% 
Connection conn;
Statement st;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");  


  
//String sql = "INSERT INTO gstuser VALUES (5 ,'Zara', 'Ali012@gmail.com', 124567890 ,'zinda1223')";
//String SQL = "Update gstuser SET name = '?' email = '?' contact = '?' password = '?' WHERE id = '?'";
//pst = con.prepareStatement(SQL);

 //String sql = "SELECT userid FROM gstuser";
	//	Statement st = con.createStatement();
		// ResultSet rs = st.executeQuery(sql);
		//while(rs.next()) {
		//	id = rs.getInt(1);
		//}
		//id++;
         //pst=con.prepareStatement("INSERT INTO `gstuser`(`userid`, `name`, `contact`, `email`, `password`) VALUES (?,?,?,?,?)");   
        //String sql=("INSERT INTO gstuser VALUES (uname,uemail,ucontact,upassword)");
        
        String query="INSERT INTO gstuser(name,email,contact,password) VALUES ('"+uname+"','"+uemail+"','"+ucontact+"','"+upassword+"')";
        st = conn.createStatement();
       st.executeUpdate(query);
        
       
       
       //pst.setInt(1,1);  
        //pst.setString(2,uname);
        //pst.setString(3, uemail);
        //pst.setString(4, ucontact);
        //pst.setString(5, upassword);
       // st.executeUpdate(sql);
//ResultSet rs=st.executeQuery("select * from gstuser");  
//while(rs.next())  
//{
//out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
//}
//con.close(); 
response.sendRedirect("login.jsp");  
%>

</body>

</html>