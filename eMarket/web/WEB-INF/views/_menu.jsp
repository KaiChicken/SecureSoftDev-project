<%-- 
    Document   : _menu
    Created on : Oct 1, 2017, 3:21:04 PM
    Author     : ADMIN
--%>

<%@page import="org.eMarket.app.beans.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    
<div style="padding: 5px; background-color: #E0E0E0" >
    
    <a href="${pageContext.request.contextPath}/"><img src="image/button_home.png" width="99" height="40" alt="button_home"/></a> |
    <a href="${pageContext.request.contextPath}/productList"><img src="image/button_product-list.png" width="153" height="40" alt="button_product-list"/></a> |
    <a href="${pageContext.request.contextPath}/userInfo"><img src="image/button_my-account-info.png" width="153" height="40" alt="button_my-account-info"/></a> |
    <a href="${pageContext.request.contextPath}/cart"><img src="image/button_cart.png" width="80" height="40" alt="button_cart"/>
    <% 
           if(session.getAttribute("cart") != null){
                Cart cart = (Cart) session.getAttribute("cart");
                //System.out.println(cart.getNumberElements());
                int cart_items = cart.getNumberElements();
                %>
                (<b><%out.print(cart_items);%></b>)
                <%
            }
        %>
    </a>
    <%  
      if (session.getAttribute("loginedUser") == null) {  
    %> |
    <a href="${pageContext.request.contextPath}/login"><img src="image/button_login.png" width="89" height="40" alt="button_login"/></a> |
    <a href="${pageContext.request.contextPath}/registration"><img src="image/button_sign-up.png" width="111" height="40" alt="button_sign-up"/>
    </a>
    <%
        }else{

     %> |
     <a href="${pageContext.request.contextPath}/logout"><img src="image/button_logout.png" width="106" height="40" alt="button_logout"/>
     </a>
    <%
        }
    %>
</div>  
