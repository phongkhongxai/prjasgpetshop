/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Category;
import entity.ProductDTO;
import entity.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author truon
 */
public class getDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ProductDTO> getAllProduct() {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProductDTO> getAllProductSortByName() {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));
            }
            Collections.sort(list, (ProductDTO p1, ProductDTO p2) -> p1.getName().compareToIgnoreCase(p2.getName()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProductDTO> getAllProductSortByPrice() {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));
            }
            Collections.sort(list, (ProductDTO p1, ProductDTO p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProductDTO> getAllProductByCategory(String cate) {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product where cateID=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProductDTO> getAllProductByCategory(String cate, String cateID) {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product where cateID=? or cateID=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cate);
            ps.setString(2, cateID);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getString("cid"), rs.getString("cname")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Category getCategory(String id) {
        String query = "select * from Category where cid=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getString("cid"), rs.getString("cname"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ProductDTO getProductById(String id) {

        String query = "select * from Product where id=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<ProductDTO> searchByName(String txtSearch) {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where [name] like ?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ProductDTO> getProductByCategory(String cateID, String ca) {
        List<ProductDTO> list = new ArrayList<>();
        String query = "select * from Product where cateID =? or cateID=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cateID);
            ps.setString(2, ca); 
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity")));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public ProductDTO checkProduct(String uid) {
        String query = "SELECT * from Product where id=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDTO(rs.getString("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("title"), rs.getString("description"), rs.getString("cateID"), rs.getInt("quantity"));

            }

        } catch (Exception e) {
        }
        return null;
    }

    public void InsertProduct(String id, String name, String image, double price, String title, String description, String cateid, int quantity) {
        String query = "INSERT [dbo].[Product]  (id, [name], [image], price, title, [description], cateID,quantity) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setDouble(4, price);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, cateid);
            ps.setInt(8, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void DeleteProduct(String id) {
        String query = "Delete from Product where id=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateProduct(String id, String name, String title, String description, double price, int quantity, String image, String cateid) {
        String query = "Update Product set [name] = ?, [description] =?, quantity = ?, title = ?, cateID=?, [image] =?, [price]=? Where id =?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setInt(3, quantity);
            ps.setString(4, title);
            ps.setString(5, cateid);
            ps.setString(6, image);
            ps.setDouble(7, price);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateProduct(String id, int quantity) {
        String query = "Update Product set quantity = quantity + ?  Where id =?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    ///user
    public UserDTO checkLogin(String uid, String password) {
        String query = "SELECT * from Account where uID=? and password=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getString("uID"), rs.getString("username"), password, rs.getInt("isSeller"));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public UserDTO checkUser(String uid) {
        String query = "SELECT * from Account where uID=?";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getString("uID"), rs.getString("username"), "123456", rs.getInt("isSeller"));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void InsertUser(String uid, String username, String password) {
        String query = "INSERT [dbo].[Account] ([uID], [username], [password], [isSeller] ) VALUES (?, ?, ?, 1)";
        try {
            conn = DBUtils.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //cart
}
