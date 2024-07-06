package dao;

import java.util.*;
import model.*;


public class CategoriesDAO extends MyDAO {

    // lay ra tat ca category
    public List<Categories> getCategories() {
        List<Categories> categoriesList = new ArrayList<>();
        xSql = "SELECT * FROM Categories";
        try {
            String xName;
            int xId;
            Categories x;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                xId = rs.getInt("ID");
                xName = rs.getString("Name");
                x = new Categories(xId, xName);
                categoriesList.add(x);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categoriesList;
    }

    
    public List<Categories> getRandomProducts(int numberOfProducts) {
        List<Categories> randomProducts = new ArrayList<>();
        try {
            Random rand = new Random();
            List<Categories> allCategories = getCategories();
            int totalCategories = allCategories.size();
            for (int i = 0; i < numberOfProducts; i++) {
                int randomIndex = rand.nextInt(totalCategories);
                randomProducts.add(allCategories.get(randomIndex));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return randomProducts;
    }


    public static void main(String[] args) {
        CategoriesDAO cd = new CategoriesDAO();
        System.out.println(cd.getCategories());
    }
}
