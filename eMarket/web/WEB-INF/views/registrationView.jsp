<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Create Product</title>
      <link rel="stylesheet" href="css/style.css">
   </head>
   <body>
    
      <jsp:include page="_header.jsp"></jsp:include>
      <jsp:include page="_menu.jsp"></jsp:include>
      <div class="section">
       
      <h3>Sign Up</h3>
       
      <p style="color: red;">${errorString}</p>
       
      <form method="POST" action="${pageContext.request.contextPath}/registration">
         <table border="0">
            <tr>
               <td>First Name</td>
               <td><input type="text" name="f_name"/></td>
            </tr>
            <tr>
               <td>Last Name</td>
               <td><input type="text" name="l_name" /></td>
            </tr>
            <tr>
               <td>Username</td>
               <td><input type="text" name="username" /></td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type="password" name="password" /></td>
            </tr>
            <tr>
               <td>Sex</td>
               <td><input type="radio"
                    name="sex" value='M'>
                   <label>Male</label>

                   <input type="radio"
                    name="sex" value="F">
                   <label>Female</label>
               </td>
            </tr>
            <tr>
               <td>Email</td>
               <td><input type="text" name="email"  /></td>
            </tr>
            <tr>
               <td>Phone number</td>
               <td><input type="text" name="phone_number"  /></td>
            </tr>
            <tr>
               <td>Phone number</td>
               <td><input type="text" name="phone_number"  /></td>
            </tr>
            <tr>
               <td>Date of Birth</td>
               <td><input type="text" name="date_of_birth"  /></td>
            </tr>
            <tr>
               <td colspan="2">                   
                   <input type="submit" value="Submit" />
                   <a href="home">Cancel</a>
               </td>
            </tr>
            
         </table>
      </form>
      </div>
      <jsp:include page="_footer.jsp"></jsp:include>
       
   </body>
</html>
