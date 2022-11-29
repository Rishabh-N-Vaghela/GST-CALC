<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Register2.jsp" method="post">
      <table style="border:2px solid black">
      
      <tr>
      <td><h1>LOGIN</h1></td>
      </tr> 
      
      <tr>
      <td> name:</td>
      <td><input type="text" name="name" value=""></td>
      </tr>
      
      <tr>
      <td> email:</td>
      <td><input type="text" name="email" value=""></td>
      </tr>
      
      <tr>
      <td> contact:</td>
      <td><input type="text" name="contact" value=""></td>
      </tr>
      
        <tr>
        <td>password:</td>
        <td><input type="password" name="password" value=""></td>
        </tr>
      <tr>
      <td>cancel</td>
        <td><input type="reset" name="" value="cancel"></td>
        </tr>
        <tr>
        <td>submit</td>
        <td ><input type="submit" name="" value="submit"></td>
        </tr>
        <tr>
         <td ><a href="DeleteReg.jsp">Want to cancel your registration ?</a></td>
        </tr> 
        </table>
        </form>
       
</body>

</html>