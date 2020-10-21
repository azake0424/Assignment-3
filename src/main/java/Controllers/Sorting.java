package Controllers;

import Models.Product;
import Services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "Sorting")
public class Sorting extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       List<Product> products = ProductService.getAllProducts();
        if(request.getParameter("sort") != null)
            Collections.sort(products);
        request.setAttribute("products",products);
        request.getRequestDispatcher("/products").forward(request, response);
    }
}
