<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="GstCalc.jsp" method="post">
      <table style="border:2px solid black">
      
      <tr>
      <td><h1>GST CALCULATION</h1></td>
      </tr> 
      
      <tr>
      <td> ENTER YOUR VALUE HERE</td>
      <td><input type="text" name="basic" value=""></td>
      </tr>
        <tr>
      <td>GSTNO </td>
      <td><input type="text" name="gstno" value="ABC1"></td>
      </tr>
       <tr>
      <td> INVOICE NUMBER </td>
      <td><input type="text" name="invoice" value=""></td>
      </tr>
      
      <tr>
      <td> GST%</td>
      <td><input type="text" name="gst" value=""></td>
      </tr>
      
        <tr>
      <td> TOTAL GST </td>
      <td><input type="text" name="gstamt" value=""></td>
      </tr>
      
        <tr>
      <td> TOTAL AMOUNT  </td>
      <td><input type="text" name="totalamt" value=""></td>
      </tr>
      
        <tr>
        <td></td>
        <td><input type="submit" name="" value="SUBMIT"><input type="reset" name="" value="CANCEL"></td>
        </tr>
         
        </table>
        </form>
        
</body>
<% //response.sendRedirect(".jsp"); %>
</html>