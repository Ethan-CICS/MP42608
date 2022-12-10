<%-- 
    Document   : navbar
    Created on : 12 7, 22, 10:08:07 PM
    Author     : ejlu1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>NavBar | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
        <link href="CSS/item.css" rel="stylehsset" />
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Expires","0");
            
            if(session.getAttribute("newUsername") != null)
            {
                ;
            }
            
        %>
        <header>
            <nav>
                <img src="images/navbar/ApolloLogo.png" class="logo">
                <ul class="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about-us.jsp">About Us</a></li>
                    <li><a href="products-main.jsp">Products</a></li>
                    <%
                    if(session.getAttribute("newUsername") == null) {
                    
                        out.println("<li><a href=\"login.jsp\">Login</a></li>");
                    }
                    else {
                        out.println("<li><a href=\"LogoutServlet\">Logout</a></li>");
                        out.println("<li><a href=\"cart.jsp\">"+ session.getAttribute("newUsername") + 
                        " <img src=\"https://www.pngkey.com/png/full/231-2317482_white-shopping-cart-png-download-buy-icon-white.png\" alt=\"star\" class=\"logo-cart\"></a></li>");
                        }
                    %>
                </ul>
                <form>
                    <img src="images/navbar/SearchIcon.png" class="searchIcon">
                    <input type="text" placeholder="Search" class="searchBar">
                    <input type="button" hidden />
                    </form>
            </nav>
        </header>
    </body>
</html>
