/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.dao;

import com.demojava.model.Bill;
import com.demojava.model.Cart;
import com.demojava.model.Category;
import com.demojava.model.Product;
import com.demojava.model.User;
import contex.SqlSever;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;

/**
 *
 * @author MND PC
 */
public class Dao {

    private Product product;
    private static final ArrayList<Product> list = new ArrayList<>();

    public List<Product> getAllProduct() {
        List<Product> listProducts = new ArrayList<>();
        String sql = "SELECT * FROM products";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                listProducts.add(new Product(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return listProducts;
    }

    public List<Category> getAllCategory() {
        List<Category> listCategory = new ArrayList<>();
        String sql = "SELECT * FROM categorys";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                listCategory.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return listCategory;
    }

    public List<Product> getProductCategoryId(String categoryId) {
        List<Product> listProducts = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE cateID = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, categoryId);
            rs = statement.executeQuery();
            while (rs.next()) {
                listProducts.add(new Product(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return listProducts;
    }
    public List<Bill> getAllBilldetail() {
        List<Bill> listBillDetail = new ArrayList<>();
        String sql = "SELECT * FROM bills";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                listBillDetail.add(new Bill(rs.getLong(1), rs.getLong(2), rs.getLong(3), rs.getDouble(4)));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return listBillDetail;
    }
//    /SELECT * FROM products WHERE id = ? 

    public Product getProductById(String id) {
        String sql = "SELECT * FROM products WHERE id = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            rs = statement.executeQuery();
            while (rs.next()) {
                return new Product(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return null;
    }
    public Product getProductId(String txt) {
        String sql = "SELECT * FROM products WHERE id = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, txt);
            rs = statement.executeQuery();
            while (rs.next()) {
                return new Product(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public User FindUserId(String id) {
        String sql = "SELECT * FROM users WHERE uId = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            System.out.println("--------tìm user------");
            statement.setString(1, id);
            System.out.println(id);
            System.out.println("--------tìm user------");
            rs = statement.executeQuery();
            while (rs.next()) {
                return new User(rs.getLong(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7), 
                        rs.getInt(8));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return null;
    }
//    INSERT INTO users VALUES ('3','maiduc','123','0','0')

    public User CheckUser(String user) {
        String sql = "SELECT * FROM users WHERE user = ? AND password = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            rs = statement.executeQuery();
            while (rs.next()) {
                return new User(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return null;
    }
//    SELECT * FROM products WHERE sell_ID = 1

    public void deleteProduct(String id) {
        String sql = "DELETE FROM products WHERE id = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
        }

//        int index = indexForUserWithId(u.getId());
////        int index = indexForUserWithId(u.toString());
//        list.remove(index);
    }
//    SELECT * FROM users WHERE user = 'admin' AND password = '123456'

    public User login(String user, String password) {
        String sql = "SELECT * FROM users WHERE user = ? AND password = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, password);
            rs = statement.executeQuery();
            while (rs.next()) {
                return new User(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void creatUser(String user, String password, String name, String phone, String address) {
        String sql = "INSERT INTO users(user, password, name, phone, address, isBuy, isAdmin) VALUES(?, ?, ?, ?, ?, 0, 0)";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, password);
            statement.setString(3, name);
            statement.setString(4, phone);
            statement.setString(5, address);
            statement.executeUpdate();
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
        }
    }
//UPDATE products SET name='name',img='i.jpg',price='60000',title='tiêu đê',description='nội dung',cateID='2',sell_ID='0' WHERE id = 6

    public void EditProduct(String name, String image, String price, String title, String description, String id) {
        String sql = "UPDATE products SET name= ?, img= ?, price= ?, title= ?, description= ? WHERE id = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, image);
            statement.setString(3, price);
            System.out.println(price);
            statement.setString(4, title);
            System.out.println(title);
            statement.setString(5, description);
            System.out.println(description);
            statement.setString(6, id);
            statement.executeUpdate();
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
        }
    }
//INSERT INTO products(name, img, price, title, description, cateID) VALUES ('viên đá','e.jpg','800','tiêu đề','nội dung','1')
//(name, img, price, title, description, cateID)

    public void addProduct(String name, String img, String price, String title, String description, String category, int sell_id) {
        String sql = "INSERT INTO products(name, img, price, title, description, cateID, sell_ID) VALUES (?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            System.out.println("-----đây là phần addProduct-----");
            statement.setString(1, name);
            System.out.println(name);
            statement.setString(2, img);
            System.out.println(img);
            statement.setString(3, price);
            System.out.println(price);
            statement.setString(4, title);
            System.out.println(title);
            statement.setString(5, description);
            System.out.println(description);
            statement.setString(6, category);
            System.out.println(category);
            statement.setInt(7, sell_id);
            statement.executeUpdate();
            System.out.println("-----đây là phần addProduct-----");
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
        }
    }
//    INSERT INTO cart(id, user, name, phone, quanty, totalPrice) VALUES ('2','admin','duc','0123456789','3','2000000')

    public void addCart(String id_product, String quanty, String totalPrice) {
        String sql = "INSERT INTO cart(id_product, quanty, totalPrice) VALUES (?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = new SqlSever().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, id_product);
            statement.setString(2, quanty);
            statement.setString(3, totalPrice);
            statement.executeUpdate();
        } catch (SQLException e) {
        }
        try {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
        }
    }
    public void addBill(String id_bill){
        String sql = "INSERT INTO bills(id_bill, id_user, totalMoney) VALUES ('','','')";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            
        } catch (Exception e) {
        }
    }
//    bill(`id`, `id_product`, `id_bills`, `quanty`, `totalPrice`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')
//    INSERT INTO bill(`id_product`, `id_bills`, `quanty`, `totalPrice`) VALUES ('10','2','3','3')b

    public static void main(String[] args) {
        Dao dao = new Dao();
        List<Product> listProduct = dao.getAllProduct();
        List<Category> listCategorys = dao.getAllCategory();
        for (Product c : listProduct) {
            System.out.println(c);
            System.out.println(listCategorys);
            System.out.println(listProduct);
        }
    }

    private int indexForUserWithId(String id) {
        for (int i = 0; i < list.size(); i++) {
            Product p = list.get(i);
//            if (toString().equals(id)) {
//                return i;
//            }
            if (p.toString().equals(id)) {
                return i;
            }
//            if (u.toString().equals(id)) {
//                return i;
//            }
        }
        return -1;
    }
}
