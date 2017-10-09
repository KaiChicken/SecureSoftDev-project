<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link rel="stylesheet" href="css/style.css">
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
 <div class="section">
    <h3>Product List</h3>
    
    <p style="color: red;">${errorString}</p>
 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Code</th>
          <th>Name</th>
          <th>Price</th>
          <th>Units</th>
          <th>Quantity to add</th>
          <th>Add to cart</th>
       </tr>
       <c:forEach items="${productList}" var="product" >
          <tr>
             <td>${product.code}</td>
             <td>${product.name}</td>
             <td>${product.price}</td>
             <td>${product.units}</td>
             <form method="POST" action="${pageContext.request.contextPath}/cart">
                <td>
                   <input type="number" name="quantity" min="1" max="20">
                   <input type="hidden" name="bookName" value="${product.name}">
                   <input type="hidden" name="price" value="${product.price}">
                </td>
                <td><input type="submit" name="action" value="add"></td>
             </form>
          </tr>
       </c:forEach>
    </table>
 </div>
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>
