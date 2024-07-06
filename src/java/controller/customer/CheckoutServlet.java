package controller.customer;

import dao.*;
import model.*;
import java.util.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // thong tin nguoi mua
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        Date reciveDate = Date.valueOf(request.getParameter("createdDate").substring(0, 10));
        Date returnDate = Date.valueOf(request.getParameter("finishDate").substring(0, 10));

        String[] strTotalArray = request.getParameter("total").split("\\s");
        String strTotal = strTotalArray[0];

        int total = Integer.parseInt(strTotal);

        // Tạo đơn hàng
        RequestDAO rd = new RequestDAO();
        Request r = new Request(name, phone, address, reciveDate, returnDate, total, 1);
        rd.createRequest(r);

        // Tạo các mặt hàng trong đơn hàng (OrderItems)
        HttpSession session = request.getSession();
        List<Products> cart = (List<Products>) session.getAttribute("cart");

        RequestItemsDAO rid = new RequestItemsDAO();
        for (Products p : cart) {
            rid.insert(p.getID(), p.getQuantity());
        }

        // cap nhat lai gio hàng sau khi dã mua: xóa các san pham trong gio hang và thành tien cua gio hàng
        session.removeAttribute("cart");
        session.removeAttribute("total");
        session.removeAttribute("num");

        request.setAttribute("mess", "Booking success!");

        request.getRequestDispatcher("home").forward(request, response);

    }

}
