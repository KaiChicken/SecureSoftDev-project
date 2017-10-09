<%@page import="org.eMarket.app.beans.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <link rel="stylesheet" href="css/style.css">
 </head>
 <body >
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    
    <div class="section">
    <style type="text/css">
        input.submit{
        backgroun-image:url(button_home.png);
        width: 100px;
        height: 50px;
        border: 0;
        }
    </style>
    <form action="checkoutView.jsp">
        <input type="submitt" value="" class="submit">
    </form>
    
    <h3>Cart</h3>
    
    <p style="color: red;">${errorString}</p>
 
    <table border="1" cellpadding="5" cellspacing="1" >
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Units</th>
            <th>Total</th>
        </tr>
        <c:forEach items="${cart}" var="product" >
            <tr>
                <td>${product.bookName}</td>
                <td>${product.unitPrice}</td>
                <td>${product.units}</td>
                <td>${product.total}</td>
            </tr>
        </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <td>Total</td>
                <td>
                <%
                Cart cart = (Cart) session.getAttribute("cart");
                float ttc = cart.getTotal();
                out.print(ttc);
                %>

                </td>
            </tr>
    </table>
                  <br>
                  <hr>
    <div>
        <form method="POST" action="${pageContext.request.contextPath}/checkout">
            <input type="hidden" name="bill" value="<%out.print(ttc);%>">
            
            <label>
                Address
            </label>
            <input type="text" name="address">
            
            <label>
                Apartment number
            </label>
            <input type="text" name="apt">
            
            <label>
                City
            </label>
            <input type="text" name="city">
            
            <label>
                State
            </label>
            <input type="text" name="state">
            
            <label>
                Country
            </label>
            <input type="text" name="country">
            
             <label>
                Zip code
            </label>
            <input type="text" name="zip_code">
            
            <hr>
            
            <label>
                Credit card number
            </label>
            <input type="password" name="card_number">
            
            <label>
                CVS
            </label>
            <input type="number" name="cvs">
            
            <label>
                Expiration date
            </label>
            <input type ="number" name="exp_month" min="1" max="12">
            <input type="number" name="exp_year" min="2017" max="2099">
            
            <label>
                Card Holder Name
            </label>
            <input type="text" name="card_holder">
            
            <input type="submit" name="checkout" value="Checkout">
            
        </form>
    </div>
            </div>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>
