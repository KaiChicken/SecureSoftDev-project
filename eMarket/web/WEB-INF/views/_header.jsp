<%-- 
    Document   : _header
    Created on : Oct 1, 2017, 3:19:46 PM
    Author     : ADMIN
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<div style="background: #E0E0E0; height: 55px; padding: 5px;">
    <div style="float: left">
        <h1>My Site</h1>
    </div>

    <div style="float: right; padding: 10px; text-align: right;">

        <!-- User store in session with attribute: loginedUser -->
        Hello <b>${loginedUser.userName}</b>
       <br/>
        Search <input name="search">
        
    </div>
</div>
       <div style="left: 50%; right:50%;">
       <img src="image/header_image.png" width="1000" height="150" alt="header_image"/>
       </div>
