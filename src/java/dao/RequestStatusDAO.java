/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.*;

/**
 *
 * @author havie
 */
public class RequestStatusDAO extends MyDAO{
     public static void main(String[] args) {
        RequestStatusDAO rd = new RequestStatusDAO();
        System.out.println(rd.getAllRequestStatus()
        );
    }

    // lay ra tat ca nhung don hang
    public List<RequestStatus> getAllRequestStatus() {
        List<RequestStatus> requestStatusList = new ArrayList<>();
        xSql = "SELECT *\n"
                + "FROM requestStatus";
        try {

            RequestStatus rss;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("requeststatus_id");
                String name = rs.getString("status_name");
              
                rss = new RequestStatus(id, name);
                requestStatusList.add(rss);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return requestStatusList;
    }
}
