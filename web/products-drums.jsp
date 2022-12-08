<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Drums | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/products-instru.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
        <link href="CSS/sidebar.css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="content">
            <div class="sidebar">
                <a href="products-guitar.jsp" class="guitar" id="sidebutton">Guitars</a>
                <a href="products-bass.jsp" class="bass-guitar" id="sidebutton">Bass Guitars</a>
                <a href="products-drums.jsp" class="drums" id="sidebutton-highlight">Drums</a>
                <a href="products-keyboard.jsp" class="keyboards" id="sidebutton">Keyboards</a>
                <a href="products-amps.jsp" class="amplifiers" id="sidebutton">Amplifiers</a>
            </div>
            <div class="main-page">
                <h1 id="main-title">Drums</h1>
                <div class="products">
                <%@page import="java.util.*"%>
                <%@page import="model.Product"%>
                <% 
                    int products = 0;
                    List<Product> productList = (ArrayList)request.getServletContext().getAttribute("productList");
                    products = productList.size();
                    for(int i = 0, j = 0; i < products; i++) {
                        Product inst = productList.get(i);
                        if(inst.getType().equals("Drums")) {
                            j++;
                            out.println("<div class=\"product" + Integer.toString(j) + "\" id=\"product-container\">");
                            out.println("<a href=\"item.jsp?id=" + i + "\"> <img alt=\"guitar\" src= \"" + inst.getThumb() + " \"class=\"product-image\"/></a>");
                            out.println("</div>");
                        }
                    }
                %>
                </div>
                <div class="products-SMALL">
                    <%
                        for(int i = 0, j = 0; i < products; i++) {
                            Product inst = productList.get(i);
                            if(inst.getType().equals("Drums")) {
                                j++;
                                if(j == 3 || j == 4) {
                                    out.println("<div class=\"product" + j + "-SMALL\" id=\"product-container\">");
                                    out.println("<a href=\"blank error\">");
                                    out.println("<img alt=\"telecaster\" src=\"" + inst.getThumb() + "\" class=\"product-image\"/></a>");
                                    out.println("</div>");
                                }
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>