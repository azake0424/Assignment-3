package Services;

import Models.Product;

import java.util.ArrayList;

import java.util.List;

public class ProductService{

    public static List<Product> getAllProducts() {
            List<Product> products = new ArrayList<>();
            Product product1 = new Product(1,"Volleyball","Volleyball ball. Molten",21000,"Sport", "https://images.satu.kz/40063890_w640_h640_40063890.jpg");
            Product product2 = new Product(2,"Football","Ball for football",15000,"Sport", "https://images.satu.kz/131138805_w200_h200_futbolnyj-myach.jpg");
            Product product3 = new Product(3,"Basketball","Ball for Basket",25000,"Sport", "https://images.satu.kz/15469885_w200_h200_basketbolnyj-myach-molten.jpg");


            products.add(product1);
            products.add(product2);
            products.add(product3);
            return products;

    }
}