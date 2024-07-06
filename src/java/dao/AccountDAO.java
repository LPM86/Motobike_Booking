package dao;

import java.util.ArrayList;
import java.util.List;
import model.*;

public class AccountDAO extends MyDAO {

    // hàm dang nhâp
    public Account Login(String username, String pass) {
        xSql = "select * from Account where username = ? and password = ?";
        Account x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                String xUsername = rs.getString("username");
                String xPassword = rs.getString("password");
                int role = rs.getInt("role");

                x = new Account(xUsername, xPassword, role);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return x;
    }

    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();
        System.out.println(ad.Login("customer1", "12345"));
    }
}
