package controller.common;

import dao.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.*;

@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})

public class SearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // lay ra ky tu ma nguoi dung search
        String txt = request.getParameter("txt");

        // lay ra list category
        CategoriesDAO cd = new CategoriesDAO();
        List<Categories> listC = cd.getCategories();
        request.setAttribute("listC", listC);

        //lay ra nhung san pham co tên chua ký tu mà nguoi dùng muon search
        ProductsDAO pd = new ProductsDAO();
        List<Products> listP = pd.searchProductByName(txt);
        request.setAttribute("listP", listP);
        request.setAttribute("txt", txt);

        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

}
