<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <%@page import="java.util.*"%>
        <%@page import="model.*;"%>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Products | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
        <link href="CSS/cart.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/> 
        <link href="CSS/sidebar.css" rel="stylesheet"/>
        <script src="functionality.js" async></script>
    </head>
    <body>  
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Expires","0");
            
            if(session.getAttribute("newUsername") == null)
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
      <%@include file="navbar.jsp" %>
      <div class="shopping-cart">
      <div class="title"> Shopping Cart </div>
      
      <div class="cart-row">
        <span class="cart-item cart-header cart-column">ITEM</span>
        <span class="cart-price cart-header cart-column">PRICE</span>
        <span class="cart-quantity cart-header cart-column">QUANTITY</span>
      </div>      
      <div class="items"> 
        <div class="item">
            <div class="buttons">
                <span class="delete-btn"></span>
            </div>
            <div class="image">
                <img src="images/1-guitar/product-g1.png" width="100" alt="">
            </div>
            <div class="description">
                <span>Fender Stratocaster</span>
            </div>
            <div class="quantity">
                <input type="number" class="quantity-input" name="name" value="1">
            </div>  
            <div class="cart-price">₱15950</div>
        </div>   
      </div>
      <div class="footer">
          <strong class="cart-total-title">Total Price:</strong>
          <span class="cart-total-price">₱0</span>
          <input type="button" class="Checkout right" value="Check-out" >
      </div>        
      </div>   
    </body>
</html>