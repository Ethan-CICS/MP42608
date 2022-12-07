<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Model Name | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/item.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
        <link href="CSS/sidebar.css" rel="stylesheet"/>
    </head>
    <body>
        <%@page import="java.util.*"%>
        <%@page import="model.*;"%>
        <header>
            <nav>
                <img src="images/navbar/ApolloLogo.png" class="logo">
                <ul class="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about-us.jsp">About Us</a></li>
                    <li><a href="products-main.jsp">Products</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
                <form>
                    <img src="images/navbar/SearchIcon.png" class="searchIcon">
                    <input type="text" placeholder="Search" class="searchBar">
                    <input type="button" hidden />
                    </form>
            </nav>
        </header>
        <div class="content">
            <div class="sidebar">
                <a href="products-guitar.jsp" class="guitar" id="sidebutton-highlight">Guitars</a>
                <a href="products-bass.jsp" class="bass-guitar" id="sidebutton">Bass Guitars</a>
                <a href="products-drums.jsp" class="drums" id="sidebutton">Drums</a>
                <a href="products-keyboard.jsp" class="keyboards" id="sidebutton">Keyboards</a>
                <a href="products-amps.jsp" class="amplifiers" id="sidebutton">Amplifiers</a>
                <a href="" class="accessories" id="sidebutton">Accessories</a>
            </div>
            <div class="main-page">
                <div class="item-info-SMALL">
                    <% 
                        int index = Integer.parseInt(request.getParameter("id"));
                        List<Product> productList = (ArrayList)request.getServletContext().getAttribute("productList");
                        Product item = productList.get(index);
                        for(int x = 0; x == 0;x++) {
                            out.println("<img alt=\"whitestrat\" src=\"" + item.getImage() + "\" class=\"store-product-product\"/>");
                        }
                    %>
                   <%
                    out.println("<div class=\"store-product-info\">");
                    out.println("<span class=\"item-title-SMALL\">" + item.getModel()+ "</span>");
                    out.println("<div class=\"item-feedback-SMALL\">");
                    out.println("<div class=\"item-star-SMALL\">");
                    out.println("<span class=\"item-star-text-SMALL\">" + item.getRating()+ "</span>");
                    out.println("<img src=\"https://www.freeiconspng.com/uploads/white-star-icon-13.png\" alt=\"star\" class=\"star-image-SMALL\" />");
                    out.println("</div>");
                    out.println("<span class=\"item-review-SMALL\">" + item.getReviews() + "</span>");
                    out.println("<span class=\"item-sold-SMALL\">" + item.getStock() + "</span>");
                    out.println("</div>");
                    out.println("<span class=\"item-price-SMALL\">" + String.format("%.2f", item.getPrice()) + "</span>");
                    %>
                        <div class="item-buttton-container-SMALL">
                            <div class="item-button-SMALL">
                                <span class="item-button-text-SMALL">Add To Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
                    <%
                        out.println("<div class=\"item-info\">");
                        out.println("<span class=\"item-title\">" + item.getModel() + "</span>");
                        out.println("<div class=\"item-feedback\">");
                        out.println("<div class=\"item-star\">");
                        out.println("<span class=\"item-star-text\">" + item.getRating() + "</span>");
                        out.println("<img src=\"https://www.freeiconspng.com/uploads/white-star-icon-13.png\" alt=\"image\" class=\"star-image\"/>");
                        out.println("</div>");
                        out.println("<span class=\"item-review\">" + item.getReviews() + " Reviews</span>");
                        out.println("<span class=\"item-sold\">"+ item.getStock() + " Sold</span>");
                        out.println("</div>");
                        out.println("<span class=\"item-price\">PHP " + String.format("%.2f", item.getPrice()) + "</span>");
                        out.println("<span class=\"store-product-desc\">" + item.getDesc() + "</span>");
                        out.println("<br />");
                    %>
                    <div class="item-buttton-container">
                        <div class="item-button">
                            <span class="item-button-text">Add To Cart</span>
                        </div>
                </div>
            </div>
    </body>
</html>