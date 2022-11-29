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
String gstno=(String)request.getParameter("gstno");
String invoice=(String)request.getParameter("invoice");

int  ubasic=Integer.parseInt(request.getParameter("basic"));
 int ugst=Integer.parseInt(request.getParameter("gst"));

int gstamt=(ubasic*ugst)/100;

int total=ubasic+gstamt;

Connection conn;
Statement st;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");  

String query="INSERT INTO invoicetbl(gstno,amount,invoiceno,gstper,gstamt,total) VALUES ('"+gstno+"','"+ubasic+"','"+invoice+"','"+ugst+"','"+gstamt+"','"+total+"')";
st = conn.createStatement();
st.executeUpdate(query);


%>

<table style="border:2px solid black">
      
      <tr>
      <td><h1>GST CALCULATION</h1></td>
      </tr> 
      
      <tr>
      <td> ENTER YOUR VALUE HERE</td>
      <td><input type="text" name="basic" value="<% out.println(ubasic); %>"></td>
      </tr>
        <tr>
      <td>GSTNO </td>
      <td><input type="text" name="invoice" value="ABC1"></td>
      </tr>
       <tr>
      <td> INVOICE NUMBER </td>
      <td><input type="text" name="invoice" value="<% out.println(invoice); %>"></td>
      </tr>
      <tr>
      <td> GST%</td>
      <td><input type="text" name="gst" value="<% out.println(ugst); %>"></td>
      </tr>
      
        <tr>
      <td> TOTAL GST </td>
      <td><input type="text" name="gstamt" value="<% out.println(gstamt); %>"></td>
      </tr>
      
        <tr>
      <td> TOTAL AMOUNT  </td>
      <td><input type="text" name="totalamt" value=<% out.println(total); %>></td>
      </tr>
      
        <tr>
        <td></td>
        <td><input type="submit" name="" value="SUBMIT"><input type="reset" name="" value="CANCEL"></td>
        </tr>
         
        </table>







</body>
</html>