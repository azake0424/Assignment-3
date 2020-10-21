package Controllers;

import Models.BasketCart;
import Services.BasketService;
import Services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Basket")
public class Basket extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();


        String name =  request.getParameter("name");
        String image = request.getParameter("image");
        String price = request.getParameter("price");

        session.setMaxInactiveInterval(60);

        BasketCart basket = (BasketCart) session.getAttribute("basket");

        if (basket == null) {
            basket = new BasketCart();

            basket.setName(name);
            basket.setImage(image);
            basket.setPrice(price);
        }

        session.setAttribute("basket",basket);


      //  List<BasketCart> basketCarts = new ArrayList<>();
      //  BasketCart cart = new BasketCart(name,image,price);
      //  basketCarts.add(cart);
        //
      //  try{
      //      request.setAttribute("basketCarts", BasketService.getAll());
      //  }
      //  catch (NullPointerException e){
      //      e.printStackTrace();
      //  }
      //  finally {
      //      request.getRequestDispatcher("/basket.jsp").forward(request,response);
      //  }

        request.getRequestDispatcher("/basket.jsp").forward(request,response);
    }

}
