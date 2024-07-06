package controller.common;

import dao.*;
import model.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // lay ra list category
        CategoriesDAO cd = new CategoriesDAO();
        List<Categories> listC = cd.getCategories();
        request.setAttribute("listC", listC);

        // danh sach san pham
        ProductsDAO pd = new ProductsDAO();
        List<Products> listP = pd.getAllProducts();

        request.setAttribute("listP", listP);

        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

}
