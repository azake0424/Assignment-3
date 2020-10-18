package Controllers;

import Models.BasketCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Basket")
public class Basket extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();


        String name =  request.getParameter("name");
        String image = request.getParameter("image");

        session.setMaxInactiveInterval(60);

        BasketCart basket = (BasketCart) session.getAttribute("basket");

        if (basket == null) {
            basket = new BasketCart();

            basket.setName(name);
            basket.setImage(image);
        }

        session.setAttribute("basket",basket);

        request.getRequestDispatcher("/basket.jsp").forward(request,response);
    }

}
