package dao;

import java.util.ArrayList;
import java.util.List;
import model.*;


public class RequestItemsDAO extends MyDAO {
    
    public static void main(String[] args) {
        RequestItemsDAO rid = new RequestItemsDAO();
        rid.insert(1, 3);
    }

    // lay ra thong tin cua don hàng
    public List<RequestItems> getRqDetailByRqId(int odId) {
        List<RequestItems> List = new ArrayList<>();
        xSql = "  select oi.*, p.Name, p.Price from RequestItems oi join Products p\n" +
"on oi.ProductID = p.ID where oi.requestID = ?";
        try {
            int productId, quantity, price;
            String name;
            RequestItems detail;
            ps = con.prepareStatement(xSql);
            ps.setInt(1, odId);
            rs = ps.executeQuery();
            while (rs.next()) {
                productId = rs.getInt("ProductID");
                name = rs.getString("Name");
                quantity = rs.getInt("Quantity");
                price = rs.getInt("Price");
                detail = new RequestItems(odId, productId, name, quantity, price);
                List.add(detail);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return List;
    }

    // thêm 1 orderItems vào order moi
    public void insert(int ProductID, int Quantity) {
        try {
            xSql = "INSERT INTO requestItems (requestID, ProductID, Quantity)\n"
                    + "SELECT MAX(id), ?, ?\n"
                    + "FROM request;";
            ps = con.prepareStatement(xSql);
            ps.setInt(1, ProductID);
            ps.setInt(2, Quantity);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
