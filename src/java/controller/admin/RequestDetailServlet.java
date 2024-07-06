package controller.admin;

import dao.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.*;

@WebServlet(name = "RequestDetailServlet", urlPatterns = {"/requestdetail"})

public class RequestDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // lay thong tin chi tiet orderItems cua 1 order
        int rqid = Integer.parseInt(request.getParameter("rqid"));
        RequestItemsDAO rid = new RequestItemsDAO();
        List<RequestItems> detail = rid.getRqDetailByRqId(rqid);
        request.setAttribute("detail", detail);

        request.getRequestDispatcher("request-detail.jsp").forward(request, response);

    }

}
