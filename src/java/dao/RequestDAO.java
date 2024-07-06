package dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import model.Request;

public class RequestDAO extends MyDAO {

    public static void main(String[] args) {
        RequestDAO rd = new RequestDAO();
        rd.updateStatusOfRequest(1, 3);
    }

    // lay ra tat ca nhung don hang
    public List<Request> getAllRequests() {
        List<Request> requestList = new ArrayList<>();
        xSql = "SELECT *\n"
                + "FROM Request r join requestStatus rs\n"
                + "on r.StatusID = rs.requeststatus_id";

        try {

            Request request;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                String phoneNumber = rs.getString("PhoneNumber");
                String address = rs.getString("Address");
                Date receivedDate = rs.getDate("receivedDate");
                Date returnDate = rs.getDate("returnDate");
                int totalAmount = rs.getInt("totalAmount");
                int statusID = rs.getInt("StatusID");
                String statusName = rs.getString("status_name");
                request = new Request(id, name, phoneNumber, address, receivedDate, returnDate, totalAmount, statusID, statusName);
                requestList.add(request);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return requestList;
    }

    // lấy ra đơn hàng dựa trên ID
    public Request getRequestById(int requestId) {
        Request request = null;
        xSql = "SELECT *\n"
                + "FROM Request r join requestStatus rs\n"
                + "on r.StatusID = rs.requeststatus_id\n"
                + "where r.ID = ?";

        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, requestId);
            rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                String phoneNumber = rs.getString("PhoneNumber");
                String address = rs.getString("Address");
                Date receivedDate = rs.getDate("receivedDate");
                Date returnDate = rs.getDate("returnDate");
                int totalAmount = rs.getInt("totalAmount");
                int statusID = rs.getInt("StatusID");
                String statusName = rs.getString("status_name");
                request = new Request(id, name, name, address, receivedDate, returnDate, totalAmount, statusID, statusName);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return request;
    }

    // tạo 1 đơn hàng
    public void createRequest(Request r) {
        try {
            xSql = "INSERT INTO Request (Name, PhoneNumber, Address, receivedDate, returnDate, totalAmount, StatusID) "
                    + "VALUES (?, ?, ?,  ?, ?, ?, ?)";
            java.sql.Date xReceivedDate = (java.sql.Date) r.getReceivedDate();
            java.sql.Date xReturnedDate = (java.sql.Date) r.getReturnDate();
            ps = con.prepareStatement(xSql);
            ps.setString(1, r.getName());
            ps.setString(2, r.getPhone());
            ps.setString(3, r.getAddress());
            ps.setDate(4, xReceivedDate);
            ps.setDate(5, xReturnedDate);
            ps.setInt(6, r.getTotalAmount());
            ps.setInt(7, r.getStatusId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateStatusOfRequest(int rqId, int newStatusId) {
        xSql = "UPDATE request SET statusID = ? WHERE ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, newStatusId );
            ps.setInt(2, rqId);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
