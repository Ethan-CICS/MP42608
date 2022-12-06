/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.*;
import java.util.*;
import java.io.*;
import java.util.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import model.*;

public class StartListener implements ServletContextListener {
    
   @Override
   public void contextInitialized(ServletContextEvent sce) {
       System.out.println("Test");
       ServletContext context = sce.getServletContext();
       try {
           setProducts(context);
       } catch (IOException ioe) {
           System.out.print("lol");
       }
   }
   @Override
   public void contextDestroyed(ServletContextEvent sce) {
       System.out.println(":+1:");
   }
   public void setProducts(ServletContext context) throws IOException {
        Product product;  
        List<Product> productList = new ArrayList<>();
        
        String model  = "", desc = "", image = "", type = "", thumb = "";
        int reviews = 0, stock = 0;
        double rating = 0.0, price = 0.0;
        
        int ctr = 1;
        String path = "/products/" + Integer.toString(ctr) + ".txt";
        
        InputStream is = context.getResourceAsStream(path);
        
        while(is != null) {
            try (BufferedReader br = new BufferedReader (new InputStreamReader(is))) { // BufferedReader reads from input file)
                model = br.readLine();
                rating = Double.parseDouble(br.readLine());
                reviews = Integer.parseInt(br.readLine());
                stock = Integer.parseInt(br.readLine());
                desc = br.readLine();
                image = br.readLine();
                price = Double.parseDouble(br.readLine());
                type = br.readLine();
                thumb = br.readLine();
                br.close();
                product = new Product(model, rating, reviews, stock, desc, image, price, type, thumb);
                productList.add(product);
                System.out.print(product.toString());
            } catch (FileNotFoundException fnfe){
                System.out.print("oof");
            } catch (NullPointerException npe) {
                System.out.print("He would never ball");
            }
            ctr++;
            path = "/products/" + Integer.toString(ctr) + ".txt";
            is  = context.getResourceAsStream(path);
        }
    }
}
