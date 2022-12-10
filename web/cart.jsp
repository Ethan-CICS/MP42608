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
        <link href="CSS/cart.css" rel="stylesheet"/>
        <link href="CSS/sidebar.css" rel="stylesheet"/>
    </head>
    <body>  
        <%@page import="model.*"%>
        <%@page import="java.util.*"%>
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Expires","0");
            
             if(session.getAttribute("newUsername") == null)
            {
                response.sendRedirect("index.jsp");
            }
            List<Product> cartList = (ArrayList)request.getServletContext().getAttribute("cartList");
        %>
      <%@include file="navbar.jsp" %>
      <div class="shopping-cart">
      <div class="title"> Shopping Cart </div>     
      <div class="items"> 
       <%
           int quantity = 1;
           System.out.println(cartList.size());
           for(int i = 0; i < cartList.size(); i++){
            out.println("<ul class=\"item\" style=\"list-style: none\">");
            out.println("<li class=\"buttons\">");
            out.println("<a href=\"DeleteItem?id=" + i + "\"><button class=\"delete-btn\">X</button></a>");
            out.println("</li>");
            out.println("<li class=\"image\">");
            out.println("<img src=\"" + cartList.get(i).getImage() + "\" width=\"150px\" alt=\"\">");
            out.println("</li>");
            out.println("<li class=\"description\">");
            out.println("<span>" + cartList.get(i).getModel() + "</span>");
            out.println("</li>");
            out.println("<li class=\"quantity\">");
            out.println("<input type=\"number\" class=\"quantity-input\" name=\"name\" value=\"1\">");
            out.println("</li>");  
            out.println("<li> PHP"+ String.format("%,.2f",cartList.get(i).getPrice()) + "</li>");
            out.println("</ul>"); 
            } 
            %>
            <br><br>
            <span class="cart-total-title">Total Price:</span>
            <span class="cart-total-price"><%
                double price = 0;
                for(int i = 0; i < cartList.size(); i++) {
                    price += cartList.get(i).getPrice();
                }
                %>PHP <%=String.format("%, .2f", price)%></span>
                <a href="CheckoutServlet"><button type="submit" class="Checkout right" name="check-out">Check out</button></a>
      </div>      
      </div> 
    </body>
</html>