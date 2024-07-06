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

@WebServlet(name = "FilterServlet", urlPatterns = {"/filter"})

public class FilterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         // lay ra list category
        CategoriesDAO cd = new CategoriesDAO();
        List<Categories> listC = cd.getCategories();
        request.setAttribute("listC", listC);

        // lay ra categoryID mà nguoi dùng muon xem
        String stringCateID = request.getParameter("CateID");

        // danh sach san pham
        ProductsDAO pd = new ProductsDAO();
        List<Products> listP;

        if (stringCateID.equalsIgnoreCase("all")) {
            listP = pd.getAllProducts();
            // neu chon 1 category, lay ra danh sach san pham thuoc ve category do
        } else {
            int cateID = Integer.parseInt(stringCateID);
            listP = pd.getProductsByCategoryID(cateID);
        }

        String sortType = request.getParameter("sort");
        if (sortType != null) {
            if (sortType.equals("asc")) {
                Collections.sort(listP, Comparator.comparingDouble(Products::getPrice));
            } else if (sortType.equals("desc")) {
                Collections.sort(listP, Comparator.comparingDouble(Products::getPrice));
                Collections.reverse(listP);
            }
        }
        request.setAttribute("listP", listP);
        request.setAttribute("stringCateID", stringCateID);
        request.setAttribute("sortType", sortType);

        request.getRequestDispatcher("home.jsp").forward(request, response);


    }



}
