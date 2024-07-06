package controller.common;

import dao.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // lay ra input email, password cua nguoi dung
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // dang nhap
        AccountDAO ac = new AccountDAO();
        Account a = ac.Login(username, password);

        // neu tai khoan chua ton tai
        if (a == null) {
            request.setAttribute("mess", "Wrong email or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else { // neu tai khoan tont tai, tao session -> tra ve home (servlet)
            HttpSession session = request.getSession();
            session.setAttribute("account", a);
            response.sendRedirect("home");
        }

    }

}
