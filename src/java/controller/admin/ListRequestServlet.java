 package controller.admin;

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

@WebServlet(name = "ListRequestServlet", urlPatterns = {"/listrequest"})
public class ListRequestServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        RequestDAO rd = new RequestDAO();
        List<Request> listR = rd.getAllRequests();
        request.setAttribute("listR", listR);
        
        RequestStatusDAO rsd = new RequestStatusDAO();
        List<RequestStatus> listRs = rsd.getAllRequestStatus();
        request.setAttribute("listRs", listRs);
        
        request.getRequestDispatcher("list-request.jsp").forward(request, response);

    }

}
