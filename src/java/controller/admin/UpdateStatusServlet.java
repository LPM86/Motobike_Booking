package controller;

import dao.RequestDAO;
import dao.RequestStatusDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.*;

@WebServlet(name = "UpdateStatusServlet", urlPatterns = {"/updatestatus"})


public class UpdateStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int rqid = Integer.parseInt(request.getParameter("rqid"));
        int newStatusId = Integer.parseInt(request.getParameter("sttid"));
        
        RequestDAO rd = new RequestDAO();
        rd.updateStatusOfRequest(rqid, newStatusId);
        
         List<Request> listR = rd.getAllRequests();
        request.setAttribute("listR", listR);
        
        RequestStatusDAO rsd = new RequestStatusDAO();
        List<RequestStatus> listRs = rsd.getAllRequestStatus();
        request.setAttribute("listRs", listRs);
        
        request.getRequestDispatcher("list-request.jsp").forward(request, response);

    }


}
